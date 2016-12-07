package org.swc.bestpratise.order.entity;

import javax.persistence.Column;
import javax.persistence.Id;
import javax.persistence.Table;

@Table(name = "activity_order_detail")
public class ActivityOrderDetail {
	@Id
	@Column(name = "id")
	private Long id; // id

	@Column(name = "activity_id")
	private Long activityId; // 活动

	@Column(name = "order_id")
	private Long orderId; // 订单

	@Column(name = "user_id")
	private Integer userId; // 用户
	
	@Column(name = "user_name")
	private String userName; // 用户

	@Column(name = "nums")
	private Integer nums; // 数量

	@Column(name = "price")
	private Double price; // 价格

	@Column(name = "product_id")
	private Integer productId; // 商品编号

	@Column(name = "product")
	private String product; // 商品

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Long getActivityId() {
		return activityId;
	}

	public void setActivityId(Long activityId) {
		this.activityId = activityId;
	}

	public Long getOrderId() {
		return orderId;
	}

	public void setOrderId(Long orderId) {
		this.orderId = orderId;
	}

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public Integer getNums() {
		return nums;
	}

	public void setNums(Integer nums) {
		this.nums = nums;
	}

	public Double getPrice() {
		return price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

	public Integer getProductId() {
		return productId;
	}

	public void setProductId(Integer productId) {
		this.productId = productId;
	}

	public String getProduct() {
		return product;
	}

	public void setProduct(String product) {
		this.product = product;
	}

	

}
