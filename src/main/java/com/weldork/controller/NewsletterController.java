package com.weldork.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.weldork.service.NewsletterService;

@Controller
public class NewsletterController { 

    @Autowired
    private NewsletterService newsletterService;

    @PostMapping("/subscribe")
    public String subscribe(@RequestParam("email") String email, RedirectAttributes redirectAttributes) {
        try {
            newsletterService.subscribe(email);
            redirectAttributes.addFlashAttribute("success", "Subscribed successfully!");
        } catch (Exception e) {
            redirectAttributes.addFlashAttribute("error", "This email is already subscribed.");
        }
        return "redirect:/indexuser"; // or wherever your homepage is
    }
}
