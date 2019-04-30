package com.hxd.service;

import com.hxd.domain.User;

import java.util.List;

public interface UserService {

    List<User> findAll();

    User findById(int id);

}
