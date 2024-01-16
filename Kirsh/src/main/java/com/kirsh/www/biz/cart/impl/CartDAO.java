package com.kirsh.www.biz.cart.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kirsh.www.biz.cart.CartVO;

@Repository
public class CartDAO {
	
	@Autowired
	SqlSession mybatis;
	
	public List<CartVO> getCartList(CartVO vo){
		return mybatis.selectList("CartDAO.getCartList", vo);
	}
	
	public void insertCart(CartVO vo) {
		mybatis.insert("CartDAO.insertCart", vo);
	}
	
	public void deleteCart(CartVO vo) {
		mybatis.delete("CartDAO.deleteCart", vo);
	}
}
