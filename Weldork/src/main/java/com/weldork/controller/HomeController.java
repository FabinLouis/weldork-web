package com.weldork.controller;



import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;


import com.weldork.dao.AppointmentDao;
import com.weldork.dao.ContactDao;
import com.weldork.model.Appointment;
import com.weldork.model.ContactMessage;

@Controller
public class HomeController {
	
	@Autowired
    private ContactDao contactDao;
	 @Autowired
	    private AppointmentDao appointmentDao;
	
	
	  @RequestMapping({"/", "/home"})
	    public String index() {
	        return "index"; // Resolves to /WEB-INF/views/index.jsp
	    }
	  @RequestMapping({ "/404"})
	  public String fornotfor() {
		  return "fornotfor"; // Resolves to /WEB-INF/views/fornotfor.jsp
	  }
	  @RequestMapping({ "/contact"})
	  public String contact() {
		  return "contact"; // Resolves to /WEB-INF/views/contact.jsp
	  }
	  @RequestMapping({ "/feature"})
	  public String feature() {
		  return "feature"; // Resolves to /WEB-INF/views/feature.jsp
	  }
	  @RequestMapping({ "/service"})
	  public String service() {
		  return "service"; // Resolves to /WEB-INF/views/service.jsp
	  }
	  @RequestMapping({ "/team"})
	  public String team() {
		  return "team"; // Resolves to /WEB-INF/views/team.jsp
	  }
	  @RequestMapping({ "/testimonial"})
	  public String testimonial() {
		  return "testimonial"; // Resolves to /WEB-INF/views/testimonial.jsp
	  }
	  @RequestMapping({ "/about"})
	  public String about() {
		  return "about"; // Resolves to /WEB-INF/views/about.jsp
	  }
	  @RequestMapping({ "/appoinment"})
	  public String appoinment() {
		  return "appoinment"; // Resolves to /WEB-INF/views/about.jsp
	  }
	  @PostMapping("/submitContact")
	    public String submitForm(@ModelAttribute("contact") ContactMessage contact, Model model) {
	        contactDao.save(contact);
	        model.addAttribute("msg", "Your message has been submitted!");
	        return "contact";
	    }
	  @PostMapping("/submitAppointment")
	    public String submitForm(@ModelAttribute("appointment") Appointment appointment, Model model) {
	        appointmentDao.save(appointment);
	        model.addAttribute("msg", "Your appointment has been submitted!");
	        return "appoinment";
	    }
	  @RequestMapping("/indexadmin")
	  public String adminHome() {
	      return "indexadmin";
	  }

	  @RequestMapping("/indexuser")
	  public String userHome() {
	      return "indexuser";
	  }
	  @RequestMapping("/logout")
	  public String logout(HttpSession session) {
	      session.invalidate(); // Clears all session data
	      return "redirect:/login"; // Redirects to login page
	  }
//	  @PostMapping("/admin/decision")
//	  public String handleAppointmentDecision(@RequestParam("id") int id,
//	                                          @RequestParam("fee") double fee,
//	                                          @RequestParam("action") String action) {
//	      if ("accept".equalsIgnoreCase(action)) {
//	          appointmentDao.updateStatusAndFee(id, "Accepted", fee);
//	      } else if ("reject".equalsIgnoreCase(action)) {
//	          appointmentDAO.updateStatusAndFee(id, "Rejected", 0.0);
//	      }
//	      return "redirect:/admin/pendingAppointments";
//	  }

	 

}
