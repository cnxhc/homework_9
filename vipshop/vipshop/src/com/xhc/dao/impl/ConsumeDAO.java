package com.xhc.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.xhc.dao.IConsumeDAO;
import com.xhc.model.Consume;

public class ConsumeDAO implements IConsumeDAO {
	private SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public List<com.xhc.model.Consume> getAllConsume() {
		// TODO Auto-generated method stub
		Session session=sessionFactory.openSession();
		Transaction ts=session.beginTransaction();
		Query query=session.createQuery("from Consume");
		List<com.xhc.model.Consume> consumes=query.list();
		ts.commit();
		session.close();
		return consumes;
		}

	@Override
	public List<Object[]> checkVipShop(String name) {
		// TODO Auto-generated method stub
		List<Object[]> list=null;
		Session session=sessionFactory.openSession();
		Transaction ts=session.beginTransaction();
		Query query=session.createQuery("select name,count(commodityName),commodityName,sum(practicePrice)from Consume where name='"+name+"'"+"group by commodityName");
		list=query.list();
		ts.commit();
		session.close();
		return list;
	}

	@Override
	public boolean addConsume(Consume consume) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.openSession();
		Transaction ts=session.beginTransaction();
		if(consume!=null){
		session.save(consume);
		ts.commit();
		session.close();
		return true;}else{
			return false;
		}
	}

}
