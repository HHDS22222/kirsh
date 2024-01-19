package com.kirsh.www.biz.cart.impl;

import java.util.List;

import com.kirsh.www.biz.cart.CartVO;

public interface CartService {
	public List<CartVO> getCartList(CartVO vo);
	public void insertCart(CartVO vo);
	public void deleteCart(CartVO vo);
	public void deleteAllCart(CartVO vo);
}
