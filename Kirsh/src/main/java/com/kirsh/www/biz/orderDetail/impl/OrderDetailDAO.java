package com.kirsh.www.biz.orderDetail.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kirsh.www.biz.orderDetail.OrderDetailVO;

@Repository
public class OrderDetailDAO {
	
	@Autowired
	private SqlSession mybatis;
	
	public void insertOrderDetail(OrderDetailVO vo) {
		mybatis.insert("OrderDetailDAO.insertOrderDetail", vo);
	}
	
	public List<OrderDetailVO> getOrderDetail(OrderDetailVO vo) {
		return mybatis.selectList("OrderDetailDAO.getOrderDetail", vo);
	}
}
