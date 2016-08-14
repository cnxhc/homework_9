package com.xhc.action;

import java.util.List;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.xhc.model.Commodity;
import com.xhc.service.ICommodityService;
import com.xhc.service.impl.CommodityService;
import com.xhc.until.Pager;


public class CommodityAction extends ActionSupport {
	private ICommodityService commodityService;
	private Commodity commodity;
	private int currentPage=1;
	private int commodityId;

	public ICommodityService getCommodityService() {
		return commodityService;
	}

	public void setCommodityService(ICommodityService commodityService) {
		this.commodityService = commodityService;
	}

	public Commodity getCommodity() {
		return commodity;
	}

	public void setCommodity(Commodity commodity) {
		this.commodity = commodity;
	}


	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public int getCommodityId() {
		return commodityId;
	}

	public void setCommodityId(int commodityId) {
		this.commodityId = commodityId;
	}

	public String showCommodity() {
		int totalSize=commodityService.getTotal();
		Pager page=new Pager(currentPage,totalSize);
		List<Commodity> commoditys = commodityService.getAllCommodity(currentPage, page.getPageSize());
		Map request = (Map) ActionContext.getContext().get("request");
		request.put("commoditys", commoditys);
		request.put("page", page);
		return SUCCESS;
	}

	public String addCommodity() {
		Map session = (Map) ActionContext.getContext().getSession();
		if(commodity!=null&&commodity.getPrice()!=null&&commodity.getCommodityName()!=null){
			boolean flag = commodityService.addCommodity(commodity);
			if (flag) {
				commodity=null;
				return SUCCESS;
			}
		}
		commodity=null;
		return ERROR;

	}
	public String mangerCommodity(){
		int totalSize=commodityService.getTotal();
		Pager page=new Pager(currentPage,totalSize);
		List<Commodity> commoditys = commodityService.getAllCommodity(totalSize, page.getPageSize());
		Map request = (Map) ActionContext.getContext().get("request");
		request.put("commoditys", commoditys);
		request.put("page", page);
		return SUCCESS;
	}
	public String getCommodityBycommodityId(){
		Commodity commodity1=commodityService.getCommodityBycommodityId(commodityId);
		Map request=(Map) ActionContext.getContext().get("request");
		request.put("commodity1", commodity1);
		return SUCCESS;
	}
	public String updateCommodity(){
		if(commodityService.updateCommodity(commodity)){
			return SUCCESS;
		}else{
			return ERROR;
		}
	}
	public String deleteCommodity(){
		if(commodityService.deleteCommodity(commodityId)){
			return SUCCESS;
		}else{
			return ERROR;
		}
	}
}
