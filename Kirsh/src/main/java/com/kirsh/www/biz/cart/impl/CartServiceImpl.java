package com.kirsh.www.biz.cart.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kirsh.www.biz.cart.CartVO;

@Service("cartService")
public class CartServiceImpl implements CartService {

	@Autowired
	private CartDAO cartDAO;

	@Override
	public List<CartVO> getCartList(CartVO vo) {
		return cartDAO.getCartList(vo);
	}

	@Override
	public void insertCart(CartVO vo) {
		cartDAO.insertCart(vo);

	}

	@Override
	public void deleteCart(CartVO vo) {
		cartDAO.deleteCart(vo);
	}

	@Override
	public void deleteAllCart(CartVO vo) {
		cartDAO.deleteAllCart(vo);
	}

}
