package org.swc.bestpratise.order.entity;

import javax.persistence.Column;
import javax.persistence.Id;
import javax.persistence.Table;

@Table(name = "product")
public class Product {
	@Id
	@Column(name = "id")
	private Long id; // id

	@Column(name = "name")
	private String name; // 名称

	@Column(name = "typex")
	private String typex; // 类型

	@Column(name = "price")
	private Double price; // 价格

	@Column(name = "buy_count")
	private Integer buyCount; // 购买次数

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getTypex() {
		return typex;
	}

	public void setTypex(String typex) {
		this.typex = typex;
	}

	public Double getPrice() {
		return price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

	public Integer getBuyCount() {
		return buyCount;
	}

	public void setBuyCount(Integer buyCount) {
		this.buyCount = buyCount;
	}

	

}
