package com.qzc.controller;

import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class Base {

    @RequestMapping(value="base/book")
    public String toBookIndexPage(ModelMap model){
        model.put("name","浩哥");
        return "index";
    }

}
