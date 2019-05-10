package com.hxd.controller;

import com.hxd.domain.JsonResult;
import com.hxd.domain.User;
import com.hxd.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("user")
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping("findAll")
    @ResponseBody
    public List<User> findAll() {
        List<User> list = userService.findAll();
        return list;
    }

    //带分页
    @RequestMapping("findAllByPage")
    @ResponseBody
    public JsonResult findAllByPage(User user) {
        JsonResult jr = new JsonResult();
        try {
            List<User> list = userService.findAllByPage(user);
            int count = userService.findSum();
            jr.setData(list);
            jr.setFlag("success");
            jr.setCount(count);//总记录数
            jr.setCode(0);

        }catch (Exception e) {
            e.printStackTrace();
            jr.setFlag("fail");
        }
        return jr;
    }

    @RequestMapping("findById")
    public User findById(@RequestParam int id) {
        return userService.findById(id);
    }

}
