package com.kirsh.www.biz.order.impl;

import java.util.List;

import com.kirsh.www.biz.order.OrderVO;

public interface OrderService {
	public void addOrder(OrderVO vo);
	public List<OrderVO> getOrderList(OrderVO vo);
	public OrderVO getOrder(OrderVO vo);
	public List<OrderVO> getOrderAllList(OrderVO vo);
}
