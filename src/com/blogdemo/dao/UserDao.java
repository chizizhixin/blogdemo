package com.blogdemo.dao;

import com.blogdemo.model.Users;

public interface UserDao {
	Users login(String account, String password);
}
