package com.hxd.service.impl;

import com.hxd.dao.UserDao;
import com.hxd.domain.User;
import com.hxd.service.UserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class UserServiceImpl implements UserService {

    @Resource
    private UserDao userDao;

    @Override
    public List<User> findAll() {
        return userDao.findAll();
    }

    @Override
    public User findById(int id) {
        return userDao.findById(id);
    }

    @Override
    public int findSum(User user) {
        return userDao.findSum(user);
    }

    @Override
    public List<User> findAllByPage(User user) {
        //分页
        user.getPage().setPageStart((user.getPage().getPageNo()-1)*user.getPage().getPageSize());
        return userDao.findAllByPage(user);
    }


}
