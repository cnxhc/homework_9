package com.xhc.service.impl;

import java.util.List;

import com.xhc.dao.IConsumeDAO;
import com.xhc.model.Consume;
import com.xhc.service.IConsumeService;

public class ConsumeService implements IConsumeService {
	private IConsumeDAO consumeDAO;
	
	public IConsumeDAO getConsumeDAO() {
		return consumeDAO;
	}

	public void setConsumeDAO(IConsumeDAO consumeDAO) {
		this.consumeDAO = consumeDAO;
	}

	@Override
	public List<Consume> getAllConsume() {
		// TODO Auto-generated method stub
		return consumeDAO.getAllConsume();
	}

	@Override
	public List<Object[]> checkVipShop(String name) {
		// TODO Auto-generated method stub
		return consumeDAO.checkVipShop(name);
	}

	@Override
	public boolean addConsume(Consume consume) {
		// TODO Auto-generated method stub
		return consumeDAO.addConsume(consume);
	}
	

}
