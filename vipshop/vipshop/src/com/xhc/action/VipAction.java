package com.xhc.action;

import java.util.List;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.xhc.model.Commodity;
import com.xhc.model.Consume;
import com.xhc.model.Vip;
import com.xhc.service.IVipService;

public class VipAction extends ActionSupport {
	private IVipService vipService;
	private Vip vip;
	private int vipId;
	private String name;
	public IVipService getVipService() {
		return vipService;
	}

	public void setVipService(IVipService vipService) {
		this.vipService = vipService;
	}

	public Vip getVip() {
		return vip;
	}

	public void setVip(Vip vip) {
		this.vip = vip;
	}

	public int getVipId() {
		return vipId;
	}

	public void setVipId(int vipId) {
		this.vipId = vipId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String showVip() {
		List<Vip> vips = vipService.getAllVip();
		Map request = (Map) ActionContext.getContext().get("request");
		request.put("vips", vips);
		return SUCCESS;
	}

	public String updateVip() {
		if (vipService.updateVip(vip)) {
			return SUCCESS;
		} else {
			return ERROR;
		}
	}

	public String getVipById() {
		Vip vip1=vipService.getVipById(vipId);
		Map request = (Map) ActionContext.getContext().get("request");
		request.put("vip1", vip1);
		System.out.println(vip1.getName());
		System.out.println(vip1.getVipId());
		return SUCCESS;
	}
	public String getVipByNameId() {
		Vip vip1=vipService.getVipByNameId(vipId, name);
		System.out.println(vipId);
		System.out.println(name);
		System.out.println(vip1.getName());
		System.out.println(vip1.getVipId());
		Map request = (Map) ActionContext.getContext().get("request");
		request.put("vip1", vip1);
		
		return SUCCESS;
	}
	public String mangerVip() {
		List<Vip> vips = vipService.getAllVip();
		Map request = (Map) ActionContext.getContext().get("request");
		request.put("vips", vips);
		return SUCCESS;
	}
	public String addVip(){
		Map session = (Map) ActionContext.getContext().getSession();
		if(vip!=null&&vip.getName().trim()!=null&&vip.getJoinTime()!=null&&vip.getAge()!=null&&vip.getProfession()!=null){
			boolean flag = vipService.addVip(vip);
			if (flag) {
				vip=null;
				return SUCCESS;
			}
		}
		vip=null;
		return ERROR;
	}
	//根据vipId 删除vip
	public String deleteVip(){
		if(vipService.deleteVip(vipId)){
			return SUCCESS;
		}else{
			return ERROR;
		}
	}
}
