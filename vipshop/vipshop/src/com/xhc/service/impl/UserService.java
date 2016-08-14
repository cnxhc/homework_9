package com.xhc.service.impl;

import java.util.List;

import com.xhc.dao.IUserDAO;
import com.xhc.model.User;
import com.xhc.service.IUserService;

public class UserService implements IUserService {
	private IUserDAO userDAO;
	
	public IUserDAO getUserDAO() {
		return userDAO;
	}

	public void setUserDAO(IUserDAO userDAO) {
		this.userDAO = userDAO;
	}

	@Override
	public User checkUser(User user) {
		// TODO Auto-generated method stub
		return userDAO.checkUser(user);
	}

	@Override
	public boolean deleteUser(String username) {
		// TODO Auto-generated method stub
		return userDAO.deleteUser(username);
	}

	@Override
	public List<User> getAllUser() {
		// TODO Auto-generated method stub
		return userDAO.getAllUser();
	}

	@Override
	public boolean addUser(User user) {
		// TODO Auto-generated method stub
		return userDAO.addUser(user);
	}

	@Override
	public boolean updateUser(User user) {
		// TODO Auto-generated method stub
		return userDAO.updateUser(user);
	}

	@Override
	public User getUserByName(String username) {
		// TODO Auto-generated method stub
		return userDAO.getUserByName(username);
	}

}
