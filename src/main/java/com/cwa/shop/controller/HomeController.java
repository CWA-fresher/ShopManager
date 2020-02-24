package com.cwa.shop.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {
    @GetMapping("/admin/home")
    public String index(){
        return "admin/indexAdmin";
    }
}
