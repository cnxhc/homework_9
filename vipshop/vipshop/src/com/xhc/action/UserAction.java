package com.xhc.action;

import java.util.List;
import java.util.Map;



import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.xhc.model.User;
import com.xhc.model.Vip;
import com.xhc.service.IUserService;

public class UserAction extends ActionSupport {
	private User user;
	private String username;
	private IUserService userService;
	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
	public IUserService getUserService() {
		return userService;
	}

	public void setUserService(IUserService userService) {
		this.userService = userService;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String checkUser() throws Exception{
		Map session=ActionContext.getContext().getSession();
		User user1=userService.checkUser(user);
		if(user1!=null){
			session.put("user", user1);
			return SUCCESS;
		}else{
			return ERROR;
		}
	}
	public String logOut(){
		Map session=ActionContext.getContext().getSession();
		session.remove("user");
		return SUCCESS;
	}
	public String deleteUser(){
		if(userService.deleteUser(username)){
			return SUCCESS;
		}else{
			return ERROR;
		}
	}
	public String showUser() {
		List<User> users = userService.getAllUser();
		Map request = (Map) ActionContext.getContext().get("request");
		request.put("users", users);
		return SUCCESS;
	}
	public String addUser(){
		Map session = (Map) ActionContext.getContext().getSession();
		if(user!=null&&user.getUsername().trim()!=null&&user.getPassword().trim()!=null&&user.getQuanxian()!=null){
			boolean flag = userService.addUser(user);
			System.out.println(user.getPassword()!=null);
			System.out.println(user.getUsername());
			System.out.println(user.getQuanxian());
			if (flag) {
				user=null;
				return SUCCESS;
			}
		}
		user=null;
		return ERROR;
	}
	public String getUserByName(){
		User user1=userService.getUserByName(username);
		Map request = (Map) ActionContext.getContext().get("request");
		request.put("user1", user1);
		return SUCCESS;
	}
	public String updateUser(){
		if(userService.updateUser(user)){
			return SUCCESS;
		}else{
			return ERROR;
		}
	}
}
