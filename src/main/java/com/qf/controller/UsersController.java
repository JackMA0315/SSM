package com.qf.controller;

import com.qf.pojo.Users;
import com.qf.service.UsersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/users")
public class UsersController {
   /* @Autowired
    private UsersService usersService;
    @RequestMapping("/insert")
    public void insertUsers(Users users){
        //usersService.insertUsers(users);
    }*/
}
