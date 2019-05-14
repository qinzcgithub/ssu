package com.qzc.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class LoginController {

    @RequestMapping(value="login.do")
    public String toLogin(){
        return "pages/login.jsp";
    }
}
