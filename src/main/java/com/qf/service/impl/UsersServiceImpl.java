package com.qf.service.impl;

import com.qf.mapper.UsersMapper;
import com.qf.pojo.Users;
import com.qf.service.UsersService;
import org.springframework.beans.factory.annotation.Autowired;

public class UsersServiceImpl implements UsersService {
    @Autowired
    private UsersMapper usersMapper;
    @Override
    public void insertUsers(Users users) {
        usersMapper.insertUsers(users);
    }
}
