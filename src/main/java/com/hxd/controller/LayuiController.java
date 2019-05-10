package com.hxd.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by hexudong on 2019/5/9 11:38
 */
@Controller
@RequestMapping("layui")
public class LayuiController {

    @RequestMapping("index")
    public String index(){
        return "index";
    }

    @RequestMapping("button")
    public String button(){
        return "button";
    }

    @RequestMapping("manage")
    public String manage(){
        return "manage";
    }

    @RequestMapping("form")
    public String form() {
        return "form";
    }

    @RequestMapping("layer")
    public String layer() {
        return "layer";
    }

    @RequestMapping("table")
    public String table() {
        return "table";
    }
}
