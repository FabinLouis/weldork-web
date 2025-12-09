package com.weldork.controller;

import com.weldork.dao.AppointmentDao;
import com.weldork.model.Appointment;
import com.weldork.model.ContactMessage;
import com.weldork.model.Newsletter;
import com.weldork.service.AppointmentService;
import com.weldork.service.ContactMessageService;
import com.weldork.service.NewsletterService;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class AdminController {

    @Autowired
    private AppointmentDao appointmentDao;
    @Autowired
    private AppointmentService appointmentService;
    @Autowired
    private NewsletterService newsletterService;
    @Autowired
    private ContactMessageService contactMessageService;

    @GetMapping("/admin/appointments")
    public String viewAppointments(Model model) {
        model.addAttribute("appointments", appointmentDao.getAllPending());
        return "adminappointments";
    }

    @PostMapping("/admin/decision")
    public String processDecision(@RequestParam int id,
                                  @RequestParam String action,
                                  @RequestParam(required = false) Double fee) {
        if ("accept".equals(action)) {
            appointmentDao.updateStatus(id, "Accepted", fee != null ? fee : 0.0);
        } else if ("reject".equals(action)) {
            appointmentDao.updateStatus(id, "Rejected", 0.0);
        }
        return "redirect:/admin/appointments";
    }
    @GetMapping("/admin/paid")
    public String viewPaidAppointments(Model model) {
        List<Appointment> appointments = appointmentService.getAllPaidAppointments();
        model.addAttribute("appointments", appointments);
        return "adminpaidappointments"; // JSP name
    }
    @GetMapping("/admin/all")
    public String viewAllAppointments(Model model) {
        List<Appointment> appointments = appointmentService.getAllAppointments();
        model.addAttribute("appointments", appointments);
        return "allappointments";
    }
    @GetMapping("/admin/newsletter")
    public String viewNewsletterSubscribers(Model model) {
        List<Newsletter> subscribers = newsletterService.getAllSubscribersDesc();
        model.addAttribute("subscribers", subscribers);
        return "newsletterlist"; // JSP page name
    }
    @GetMapping("/admin/contact-messages")
    public String viewContactMessages(Model model) {
        List<ContactMessage> messages = contactMessageService.getAllMessagesDesc();
        model.addAttribute("messages", messages);
        return "contactmessages"; // JSP page name
    }


}
