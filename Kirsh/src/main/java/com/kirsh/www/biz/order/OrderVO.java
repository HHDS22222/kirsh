package com.kirsh.www.biz.order;

import java.sql.Date;
import java.util.List;

import com.kirsh.www.biz.orderDetail.OrderDetailVO;

public class OrderVO {
	private int orderNum;
	private int productPrice;
	private String userID;
	private String shipPostCode;
	private String shipAddress;
	private String shipRoadAddress;
	private String shipEmail;
	private String shipDetailAddress;
	private String shipExtraAddress;
	private String payee;
	private String shipFirstTel;
	private String shipSecondTel;
	private String shipThirdTel;
	private String shipOrderRequest;
	private Date buyDate;
	private String payments;
	
	private List<OrderDetailVO> orderDetailVO;
	
	public List<OrderDetailVO> getOrderDetailVO() {
		return orderDetailVO;
	}
	public void setOrderDetailVO(List<OrderDetailVO> orderDetailVO) {
		this.orderDetailVO = orderDetailVO;
	}
	public String getPayments() {
		return payments;
	}
	public void setPayments(String payments) {
		this.payments = payments;
	}
	public Date getBuyDate() {
		return buyDate;
	}
	public void setBuyDate(Date buyDate) {
		this.buyDate = buyDate;
	}
	public String getShipOrderRequest() {
		return shipOrderRequest;
	}
	public void setShipOrderRequest(String shipOrderRequest) {
		this.shipOrderRequest = shipOrderRequest;
	}
	public String getShipRoadAddress() {
		return shipRoadAddress;
	}
	public void setShipRoadAddress(String shipRoadAddress) {
		this.shipRoadAddress = shipRoadAddress;
	}
	public String getShipEmail() {
		return shipEmail;
	}
	public void setShipEmail(String shipEmail) {
		this.shipEmail = shipEmail;
	}
	private List<OrderDetailVO> orderDetail;
	
	public int getProductPrice() {
		return productPrice;
	}
	public void setProductPrice(int productPrice) {
		this.productPrice = productPrice;
	}
	public int getOrderNum() {
		return orderNum;
	}
	public void setOrderNum(int orderNum) {
		this.orderNum = orderNum;
	}
	public String getUserID() {
		return userID;
	}
	public void setUserID(String userID) {
		this.userID = userID;
	}
	public String getShipPostCode() {
		return shipPostCode;
	}
	public void setShipPostCode(String shipPostCode) {
		this.shipPostCode = shipPostCode;
	}
	public String getShipAddress() {
		return shipAddress;
	}
	public void setShipAddress(String shipAddress) {
		this.shipAddress = shipAddress;
	}
	public String getShipDetailAddress() {
		return shipDetailAddress;
	}
	public void setShipDetailAddress(String shipDetailAddress) {
		this.shipDetailAddress = shipDetailAddress;
	}
	public String getShipExtraAddress() {
		return shipExtraAddress;
	}
	public void setShipExtraAddress(String shipExtraAddress) {
		this.shipExtraAddress = shipExtraAddress;
	}
	public String getPayee() {
		return payee;
	}
	public void setPayee(String payee) {
		this.payee = payee;
	}
	public String getShipFirstTel() {
		return shipFirstTel;
	}
	public void setShipFirstTel(String shipFirstTel) {
		this.shipFirstTel = shipFirstTel;
	}
	public String getShipSecondTel() {
		return shipSecondTel;
	}
	public void setShipSecondTel(String shipSecondTel) {
		this.shipSecondTel = shipSecondTel;
	}
	public String getShipThirdTel() {
		return shipThirdTel;
	}
	public void setShipThirdTel(String shipThirdTel) {
		this.shipThirdTel = shipThirdTel;
	}
	public List<OrderDetailVO> getOrderDetail() {
		return orderDetail;
	}
	public void setOrderDetail(List<OrderDetailVO> orderDetail) {
		this.orderDetail = orderDetail;
	}
	
}
