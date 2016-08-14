package com.xhc.service;

import java.util.List;

import com.xhc.model.User;

public interface IUserService {
	// 获取所有用户信息
	public List<User> getAllUser();

	// 校验用户登录
	public User checkUser(User user);

	// 根据用户名删除用户
	public boolean deleteUser(String username);

	// 添加用户
	public boolean addUser(User user);

	// 修改用户信息
	public boolean updateUser(User user);

	// 通过用户名获取用户信息
	public User getUserByName(String username);
}
