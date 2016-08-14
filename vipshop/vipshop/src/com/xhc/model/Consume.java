package com.xhc.model;

/**
 * Consume entity. @author MyEclipse Persistence Tools
 */

public class Consume implements java.io.Serializable {

	// Fields

	private Integer consumeId;
	private Commodity commodity;
	private Vip vip;
	private Integer vipId;
	

	private String name;
	private String commodityName;
	private Double price;
	private Double practicePrice;

	// Constructors

	/** default constructor */
	public Consume() {
	}

	/** full constructor */
	public Consume(Commodity commodity, Vip vip, String name,
			String commodityName, Double price, Double practicePrice,Integer vipId) {
		this.commodity = commodity;
		this.vip = vip;
		this.name = name;
		this.commodityName = commodityName;
		this.price = price;
		this.practicePrice = practicePrice;
		this.vipId=vipId;
	}

	// Property accessors

	public Integer getConsumeId() {
		return this.consumeId;
	}

	public void setConsumeId(Integer consumeId) {
		this.consumeId = consumeId;
	}

	public Commodity getCommodity() {
		return this.commodity;
	}

	public void setCommodity(Commodity commodity) {
		this.commodity = commodity;
	}

	public Vip getVip() {
		return this.vip;
	}

	public void setVip(Vip vip) {
		this.vip = vip;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCommodityName() {
		return this.commodityName;
	}

	public void setCommodityName(String commodityName) {
		this.commodityName = commodityName;
	}
	public Integer getVipId() {
		return vipId;
	}

	public void setVipId(Integer vipId) {
		this.vipId = vipId;
	}
	public Double getPrice() {
		return this.price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

	public Double getPracticePrice() {
		return this.practicePrice;
	}

	public void setPracticePrice(Double practicePrice) {
		this.practicePrice = practicePrice;
	}

}