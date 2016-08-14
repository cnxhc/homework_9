package com.xhc.service.impl;

import java.util.List;

import com.xhc.dao.ICommodityDAO;
import com.xhc.model.Commodity;
import com.xhc.service.ICommodityService;

public class CommodityService implements ICommodityService {
	private ICommodityDAO commodityDAO;
	public ICommodityDAO getCommodityDAO() {
		return commodityDAO;
	}
	public void setCommodityDAO(ICommodityDAO commodityDAO) {
		this.commodityDAO = commodityDAO;
	}
	@Override
	public List<com.xhc.model.Commodity> getAllCommodity(int currentPage,int pageSize) {
		// TODO Auto-generated method stub
		return commodityDAO.getAllCommodity(currentPage,pageSize);
	}
	@Override
	public boolean addCommodity(Commodity commodity) {
		// TODO Auto-generated method stub
		return commodityDAO.addCommodity(commodity);
	}
	@Override
	public int getTotal() {
		// TODO Auto-generated method stub
		return commodityDAO.getTotal();
	}
	@Override
	public Commodity getCommodityBycommodityId(int commodityId) {
		// TODO Auto-generated method stub
		return commodityDAO.getCommodityBycommodityId(commodityId);
	}
	@Override
	public boolean updateCommodity(Commodity commodity) {
		// TODO Auto-generated method stub
		return commodityDAO.updateCommodity(commodity);
	}
	@Override
	public boolean deleteCommodity(int commodityId) {
		// TODO Auto-generated method stub
		return commodityDAO.deleteCommodity(commodityId);
	}

}
