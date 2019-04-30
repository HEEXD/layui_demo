package com.hxd.controller;

import com.hxd.domain.User;
import com.hxd.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("user")
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping("findAll")
    public List<User> findAll() {
        return userService.findAll();
    }

    @RequestMapping("findById")
    public User findById(@RequestParam int id) {
        return userService.findById(id);
    }



}
