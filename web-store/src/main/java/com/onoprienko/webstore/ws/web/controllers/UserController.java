package com.onoprienko.webstore.ws.web.controllers;

import com.onoprienko.webstore.ws.entity.Product;
import com.onoprienko.webstore.ws.entity.User;
import com.onoprienko.webstore.ws.service.ProductService;
import com.onoprienko.webstore.ws.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;


@Controller
public class UserController {
    private final UserService userService;
    private final ProductService productService;

    @Autowired
    public UserController(UserService userService, ProductService productService) {
        this.userService = userService;
        this.productService = productService;
    }


    @GetMapping("/registration")
    public String getRegistrationPage(){
        return "registration";
    }

    @PostMapping("/registration")
    public String registration(User user, Model model){
        if(!userService.addIfUserNotExist(user)){
            model.addAttribute("message", "User already exist!");
            return "login";
        }
        return "redirect:/login";
    }

    @GetMapping("/cabinet")
    protected String getUserCabinetPage(@AuthenticationPrincipal User user, Model model) {
        model.addAttribute("products", productService.findByUsername(user.getUsername()));
        model.addAttribute("user", user);
        return "cabinet";
    }
}
