package com.weldork.controller;

import com.weldork.dao.AppointmentDao;
import com.weldork.model.Appointment;
import com.weldork.service.AppointmentService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.Arrays;
import java.util.List;

import javax.servlet.http.HttpSession;

@Controller
public class UserController {

    @Autowired
    private AppointmentDao appointmentDao;
    @Autowired
    private AppointmentService appointmentService;


    @GetMapping("/user/appointments")
    public String viewUserAppointments(HttpSession session, Model model) {
        String email = (String) session.getAttribute("loggedInEmail");
        if (email != null) {
            model.addAttribute("appointments", appointmentDao.getByEmail(email));
        } else {
        	model.addAttribute("appointments", Arrays.asList());

        }
        return "userappointments";
    }


    @PostMapping("/user/pay")
    public String confirmPayment(@RequestParam("appointmentId") int id) {
        appointmentDao.markAsPaid(id);
        return "redirect:/user/appointments";
    }
    @GetMapping("/user/upcoming")
    public String showUpcomingAppointments(Model model, HttpSession session) {
        String email = (String) session.getAttribute("loggedInEmail");
        List<Appointment> appointments = appointmentService.getPaidAppointments(email);
        model.addAttribute("appointments", appointments);
        return "upcomingappointments";
    }

}
