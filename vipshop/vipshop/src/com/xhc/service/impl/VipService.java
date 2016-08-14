package com.xhc.service.impl;

import java.util.List;

import com.xhc.dao.IVipDAO;
import com.xhc.model.Vip;
import com.xhc.service.IVipService;

public class VipService implements IVipService {
	private IVipDAO vipDAO;
	
	public IVipDAO getVipDAO() {
		return vipDAO;
	}

	public void setVipDAO(IVipDAO vipDAO) {
		this.vipDAO = vipDAO;
	}

	@Override
	public List<Vip> getAllVip() {
		// TODO Auto-generated method stub
		return vipDAO.getAllVip();
	}

	@Override
	public boolean updateVip(Vip vip) {
		// TODO Auto-generated method stub
		return vipDAO.updateVip(vip);
	}

	@Override
	public Vip getVipById(int id) {
		// TODO Auto-generated method stub
		return vipDAO.getVipById(id);
	}

	@Override
	public boolean addVip(Vip vip) {
		// TODO Auto-generated method stub
		return vipDAO.addVip(vip);
	}

	@Override
	public boolean deleteVip(int vipId) {
		// TODO Auto-generated method stub
		return vipDAO.deleteVip(vipId);
	}

	@Override
	public Vip getVipByNameId(int id, String name) {
		// TODO Auto-generated method stub
		return vipDAO.getVipByNameId(id, name);
	}

}
