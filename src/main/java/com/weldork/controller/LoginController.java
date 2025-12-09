package com.weldork.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.weldork.model.User;
import com.weldork.service.UserService;

@Controller
public class LoginController {

    @Autowired
    private UserService userService;

    @GetMapping("/login")
    public String showLoginPage() {
        return "login"; // /WEB-INF/views/login.jsp
    }

    @PostMapping("/login")
    public String processLogin(@RequestParam String username,
                               @RequestParam String password,
                               HttpSession session,
                               RedirectAttributes redirectAttributes) {

        boolean authenticated = userService.authenticate(username, password);

        if (authenticated) {
            User user = userService.findByUsername(username); // ✅ Get full user
            session.setAttribute("loggedInUser", user.getUsername());
            session.setAttribute("loggedInEmail", user.getEmail()); // ✅ Store email

            if ("admin".equalsIgnoreCase(username)) {
                return "redirect:/indexadmin";
            } else {
                return "redirect:/indexuser";
            }
        } else {
            redirectAttributes.addAttribute("error", "Invalid username or password");
            return "redirect:/login";
        }
    }


    @GetMapping("/register")
    public String showRegisterPage() {
        return "register";
    }

    @PostMapping("/register")
    public String processRegistration(@RequestParam String username,
                                      @RequestParam String password,
                                      @RequestParam String confirmPassword,
                                      @RequestParam String email,
                                      Model model) {
        if (!password.equals(confirmPassword)) {
            model.addAttribute("error", "Passwords do not match.");
            return "register";
        }

        boolean success = userService.register(username, password, email); // ✅ pass email
        if (success) {
            model.addAttribute("success", "Registration successful! You can now log in.");
        } else {
            model.addAttribute("error", "Username already exists.");
        }

        return "register";
    }

}
