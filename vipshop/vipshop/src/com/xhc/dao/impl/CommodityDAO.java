package com.xhc.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.xhc.dao.ICommodityDAO;
import com.xhc.model.Commodity;
import com.xhc.model.Vip;

public class CommodityDAO implements ICommodityDAO {
	private SessionFactory sessionFactory;

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	/*
	 * @Override public List<com.xhc.model.Commodity> getAllCommodity() { //
	 * TODO Auto-generated method stub Session
	 * session=sessionFactory.openSession(); Transaction
	 * ts=session.beginTransaction(); Query query=session.createQuery(
	 * "from Commodity"); List<com.xhc.model.Commodity> commoditys=query.list();
	 * ts.commit(); session.close(); return commoditys; }
	 */

	@Override
	public boolean addCommodity(Commodity commodity) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		Transaction ts = session.beginTransaction();
		if (commodity != null) {
			session.save(commodity);
			ts.commit();
			session.close();
			return true;
		} else {
			return false;
		}
	}

	@Override
	public List<Commodity> getAllCommodity(int currentPage, int pageSize) {
		Session session = sessionFactory.openSession();
		Transaction ts = session.beginTransaction();
		Query query = session.createQuery("from Commodity");
		int startRow = (currentPage - 1) * pageSize;
		query.setFirstResult(startRow);
		query.setMaxResults(pageSize);
		List<com.xhc.model.Commodity> commoditys = query.list();
		ts.commit();
		session.close();
		return commoditys;
	}

	@Override
	public int getTotal() {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		Transaction ts = session.beginTransaction();
		Query query = session.createQuery("select count(commodityId) from Commodity");
		List commoditys = query.list();
		ts.commit();
		session.close();
		// System.out.println("totalSize:"+commoditys.get(0));
		// 结果是totalSize:1，为什么不是总的记录数。
		/*if (null == commoditys && !commoditys.isEmpty()) {
			return Integer.valueOf(commoditys.get(0) + "");
		}
		return 0;*/
		 return Integer.valueOf(commoditys.get(0)+"");
	}

	@Override
	public Commodity getCommodityBycommodityId(int commodityId) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		Transaction ts = session.beginTransaction();
		Query query = session.createQuery("from Commodity where commodityId='" + commodityId + "'");
		Commodity commodity = new Commodity();
		List list = query.list();
		ts.commit();
		session.close();
		if (list.size() != 0) {
			commodity = (Commodity) list.get(0);
			return commodity;
		}
		return null;
	}

	@Override
	public boolean updateCommodity(Commodity commodity) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		Transaction ts = session.beginTransaction();
		session.update(commodity);
		ts.commit();
		session.close();
		return true;
	}

	@Override
	public boolean deleteCommodity(int commodityId) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		Transaction ts = session.beginTransaction();
		Query query = session.createQuery("delete from Commodity where commodityId=" + commodityId);
		query.executeUpdate();
		ts.commit();
		session.close();
		return true;
	}

}
