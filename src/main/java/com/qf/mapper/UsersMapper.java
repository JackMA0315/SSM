package com.qf.mapper;

import com.qf.pojo.Users;
import org.springframework.stereotype.Repository;

@Repository
public interface UsersMapper {

    void insertUsers(Users users);
}
