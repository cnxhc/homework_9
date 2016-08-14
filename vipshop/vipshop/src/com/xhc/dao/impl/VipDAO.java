package com.xhc.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.xhc.dao.IVipDAO;
import com.xhc.model.Vip;

public class VipDAO implements IVipDAO {
	private SessionFactory sessionFactory;
	
	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}
	@Override
	public List<Vip> getAllVip() {
		// TODO Auto-generated method stub
		Session session=sessionFactory.openSession();
		Transaction ts=session.beginTransaction();
		Query query=session.createQuery("from Vip");
		List<Vip> vips=query.list();
		ts.commit();
		session.close();
		return vips;
	}

	@Override
	public boolean updateVip(Vip vip) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.openSession();
		Transaction ts=session.beginTransaction();
		session.update(vip);
		ts.commit();
		session.close();
		return true;
	}

	@Override
	public Vip getVipById(int id) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.openSession();
		Transaction ts=session.beginTransaction();
		Query query=session.createQuery("from Vip where vipId="+id);
		Vip vip=new Vip();
		//Vip vip=(Vip) query.list(); //转换报错  java.util.ArrayList cannot be cast to com.xhc.model.Vip
		List list=query.list();
		ts.commit();
		session.close();
		if(list.size()!=0){
			vip=(Vip) list.get(0);
			return vip;
		}
		return null;
	}

	@Override
	public boolean addVip(Vip vip) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.openSession();
		Transaction ts=session.beginTransaction();
		if(vip!=null){
		session.save(vip);
		ts.commit();
		session.close();
		return true;}else{
			return false;
		}
	}

	@Override
	public boolean deleteVip(int vipId) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		Transaction ts = session.beginTransaction();
		String sql = "delete from Vip where vipId=?";
		Query query = session.createQuery(sql);
		query.setInteger(0,vipId);
		query.executeUpdate();
		ts.commit();
		session.close();
		return true;
	}

	@Override
	public Vip getVipByNameId(int id, String name) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.openSession();
		Transaction ts=session.beginTransaction();
		Query query=session.createQuery("from Vip where vipId=?and name=?");
		query.setInteger(0, id);
		query.setString(1, name);
		Vip vip=new Vip();
		List list=query.list();
		ts.commit();
		session.close();
		if(list.size()!=0){
			vip=(Vip) list.get(0);
			return vip;
		}
		return null;
	}

}
