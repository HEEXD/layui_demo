package com.hxd.dao;

import com.hxd.domain.User;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

@Mapper
public interface UserDao {

    User findById(@Param("id") int id);

    List<User> findAll();

}
