package com.xhc.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.xhc.dao.IUserDAO;
import com.xhc.model.User;

public class UserDAO implements IUserDAO {
	private SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	@Override
	public User checkUser(User user) {
		// TODO Auto-generated method stub
				Session session = sessionFactory.openSession();
				Transaction ts = session.beginTransaction();
				Query query = session.createQuery("from User where username='"
						+ user.getUsername() + "' and password='" + user.getPassword() + "'");
				User user1 = new User();
				List list = query.list();
				ts.commit();
				session.close();
				if (list.size() != 0) {
					user1 = (User) list.get(0);
					return user1;
				}
				return null;
	}

	@Override
	public boolean deleteUser(String username) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		Transaction ts = session.beginTransaction();
		String sql = "delete from User where username=?";
		Query query = session.createQuery(sql);
		query.setString(0,username);
		query.executeUpdate();
		ts.commit();
		session.close();
		return true;
	}

	@Override
	public List<User> getAllUser() {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		Transaction ts = session.beginTransaction();
		//Query query=session.createQuery("from User where quanxian="+1);
		Query query=session.createQuery("from User ");
		List<User> users=query.list();
		ts.commit();
		session.close();
		return users;
	}

	@Override
	public boolean addUser(User user) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.openSession();
		Transaction ts=session.beginTransaction();
		if(user!=null){
		session.save(user);
		ts.commit();
		session.close();
		return true;}else{
			return false;
		}
	}

	@Override
	public boolean updateUser(User user) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.openSession();
		Transaction ts=session.beginTransaction();
		session.update(user);
		ts.commit();
		session.close();
		return true;
	}

	@Override
	public User getUserByName(String username) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.openSession();
		Transaction ts=session.beginTransaction();		
		Query query=session.createQuery("from User where username='"+username+"'");
		List list=query.list();
		ts.commit();
		session.close();
		User user=new User();
		if(list!=null){
			user=(User) list.get(0);
			return user;
		}
		return null;
	}

}
