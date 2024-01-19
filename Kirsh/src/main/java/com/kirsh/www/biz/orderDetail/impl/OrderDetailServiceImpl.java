package com.kirsh.www.biz.orderDetail.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kirsh.www.biz.orderDetail.OrderDetailVO;

@Service("orderDetailService")
public class OrderDetailServiceImpl implements OrderDetailService {

	@Autowired
	private OrderDetailDAO orderDetailDAO;
	
	@Override
	public void insertOrderDetail(OrderDetailVO vo) {
		orderDetailDAO.insertOrderDetail(vo);
	}

	@Override
	public List<OrderDetailVO> getOrderDetail(OrderDetailVO vo) {
		return orderDetailDAO.getOrderDetail(vo);
	}

}
