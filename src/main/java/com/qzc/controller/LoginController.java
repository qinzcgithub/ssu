package com.qzc.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController
public class LoginController {

    @RequestMapping(value="login.do")
    public ModelAndView toLogin(ModelAndView model){
        model.setViewName("redirect:/login.jsp");
        return model;
    }

    @RequestMapping(value="login/userLogin.do")
    public ModelAndView userLogin(ModelAndView model){
        model.setViewName("redirect:/login.jsp");
        return model;
    }
}
