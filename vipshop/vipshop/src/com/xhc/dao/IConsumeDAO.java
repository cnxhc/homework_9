package com.xhc.dao;

import java.util.List;

import com.xhc.model.Consume;

public interface IConsumeDAO {
	public List<Consume> getAllConsume();
	public List<Object[]> checkVipShop(String name);
	public boolean addConsume(Consume consume);
}
