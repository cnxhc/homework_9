package com.xhc.service;

import java.util.List;

import com.xhc.model.Commodity;

public interface ICommodityService {
	// 分页查询商品
	public List<Commodity> getAllCommodity(int currentPage, int pageSize);

	// 获取总的记录数
	public int getTotal();

	// 添加商品
	public boolean addCommodity(Commodity commodity);

	// 通过id查询商品
	public Commodity getCommodityBycommodityId(int commodityId);

	// 更新商品
	public boolean updateCommodity(Commodity commodity);

	// 删除商品
	public boolean deleteCommodity(int commodityId);
}
