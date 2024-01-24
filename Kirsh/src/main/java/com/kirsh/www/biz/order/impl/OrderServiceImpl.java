package com.kirsh.www.biz.order.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kirsh.www.biz.order.OrderVO;

@Service("orderService")
public class OrderServiceImpl implements OrderService{

	@Autowired
	private OrderDAO orderDAO;
	
	@Override
	public void addOrder(OrderVO vo) {
		orderDAO.addOrder(vo);
	}

	@Override
	public List<OrderVO> getOrderList(OrderVO vo) {
		return orderDAO.getOrderList(vo);
	}

	@Override
	public OrderVO getOrder(OrderVO vo) {
		// TODO Auto-generated method stub
		return orderDAO.getOrder(vo);
	}

	@Override
	public List<OrderVO> getOrderAllList(OrderVO vo) {
		// TODO Auto-generated method stub
		return orderDAO.getOrderAllList(vo);
	}

}
