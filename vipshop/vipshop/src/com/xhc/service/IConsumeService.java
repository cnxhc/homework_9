package com.xhc.service;

import java.util.List;

import com.xhc.model.Consume;

public interface IConsumeService {
	public List<Consume> getAllConsume();
	public List<Object[]> checkVipShop(String name);
	public boolean addConsume(Consume consume);
}
