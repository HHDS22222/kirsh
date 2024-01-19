package com.kirsh.www.biz.orderDetail.impl;

import java.util.List;

import com.kirsh.www.biz.orderDetail.OrderDetailVO;

public interface OrderDetailService {
	public void insertOrderDetail(OrderDetailVO vo);
	public List<OrderDetailVO> getOrderDetail(OrderDetailVO vo);
}
