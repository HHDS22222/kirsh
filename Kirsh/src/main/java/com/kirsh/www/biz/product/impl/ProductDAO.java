package com.kirsh.www.biz.product.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kirsh.www.biz.product.ProductVO;

@Repository
public class ProductDAO {

	@Autowired
	private SqlSession mybatis;

	public void insertProduct(ProductVO vo) {
		mybatis.insert("ProductDAO.insertProduct", vo);
	}

	public List<ProductVO> getProductList(ProductVO vo) {
		return mybatis.selectList("ProductDAO.getProductList", vo);
	}

	public ProductVO getProduct(ProductVO vo) {
		return mybatis.selectOne("ProductDAO.getProduct", vo);
	}
	
	public List<String> getSize(String vo) {
		return mybatis.selectList("ProductDAO.getSize", vo);
	}

	public void updateProduct(ProductVO vo) {
		mybatis.update("ProductDAO.updateProduct",vo);
	}

	public void deleteProduct(Integer integer) {
		mybatis.delete("ProductDAO.deleteProduct", integer);
	}

	public List<ProductVO> getProductItemList(ProductVO vo) {
		return mybatis.selectList("ProductDAO.getProductItemList", vo);
	}

	public List<ProductVO> getOption(String vo) {
		return mybatis.selectList("ProductDAO.getProductOption", vo);
	}

	public List<ProductVO> getSearchProduct(ProductVO vo) {
		return mybatis.selectList("ProductDAO.searchProduct", vo);
	}
	
	public ProductVO getSearchCount(ProductVO vo) {
		return mybatis.selectOne("ProductDAO.searchCount", vo);
	}
}
