package com.lyw.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PageController {

    @RequestMapping("/")
    public String index1(){
        return "index";
    }

    @RequestMapping("/index")
    public String index(){
        return "index";
    }

    @RequestMapping("/add")
    public String add(){
        return "add";
    }

    @RequestMapping("/addBusiness")
    public String addBusiness(){
        return "addBusiness";
    }

    @RequestMapping("/vuedemo000")
    public String vuedemo000(){
        return "vuedemo000";
    }

    @RequestMapping("/vuedemo001")
    public String vuedemo001(){
        return "vuedemo001";
    }
}
