package com.xhc.service;

import java.util.List;

import com.xhc.model.Vip;

public interface IVipService {
	// 查询所有vip
	public List<Vip> getAllVip();

	// 更新vip
	public boolean updateVip(Vip vip);

	// 通过id查询vip
	public Vip getVipById(int id);

	// 通过id,name查询vip
	public Vip getVipByNameId(int id, String name);

	// 添加vip
	public boolean addVip(Vip vip);

	// 根据vipid删除vip
	public boolean deleteVip(int vipId);
}
