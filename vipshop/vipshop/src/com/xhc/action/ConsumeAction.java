package com.xhc.action;

import java.util.List;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.xhc.model.Commodity;
import com.xhc.model.Consume;
import com.xhc.service.IConsumeService;

public class ConsumeAction extends ActionSupport {
	private IConsumeService consumeService;
	private String name;
	private Consume consume;
	public IConsumeService getConsumeService() {
		return consumeService;
	}
	public void setConsumeService(IConsumeService consumeService) {
		this.consumeService = consumeService;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Consume getConsume() {
		return consume;
	}
	public void setConsume(Consume consume) {
		this.consume = consume;
	}
	public String showConsume(){
		List<Consume> consumes=consumeService.getAllConsume();
		Map request=(Map) ActionContext.getContext().get("request");
		request.put("consumes", consumes);
		return SUCCESS;
	}
	public String checkVipShop(){
		List<Object[]> list=consumeService.checkVipShop(name);
		Map request=(Map) ActionContext.getContext().get("request");
		request.put("list", list);
		return SUCCESS;
	}
	public String addConsume(){
		if(consumeService.addConsume(consume)){
			consume=null;
			return SUCCESS;
		}else{
			consume=null;
			return ERROR;
		}
		/*	Map session = (Map) ActionContext.getContext().getSession();
		if(vip!=null&&vip.getName().trim()!=null&&vip.getJoinTime()!=null&&vip.getAge()!=null&&vip.getProfession()!=null){
			boolean flag = vipService.addVip(vip);
			if (flag) {
				vip=null;
				return SUCCESS;
			}
		}
		vip=null;
		return ERROR;*/
	}
}
