package com.kirsh.www.biz.order.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kirsh.www.biz.order.OrderVO;

@Repository
public class OrderDAO {
	
	@Autowired
	private SqlSession mybatis;
	
	public void addOrder(OrderVO vo) {
		mybatis.insert("OrderDAO.addOrder", vo);
	}

	public List<OrderVO> getOrderList(OrderVO vo) {
		return mybatis.selectList("OrderDAO.getOrderList", vo);
	}

	public OrderVO getOrder(OrderVO vo) {
		return mybatis.selectOne("OrderDAO.getOrder", vo);
	}
	
}
