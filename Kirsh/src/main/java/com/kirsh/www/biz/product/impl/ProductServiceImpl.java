package com.kirsh.www.biz.product.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kirsh.www.biz.product.ProductVO;

@Service("productService")
public class ProductServiceImpl implements ProductService {

	@Autowired
	private ProductDAO productDAO;
	
	@Override
	public void insertProduct(ProductVO vo) {
		productDAO.insertProduct(vo);
	}

	@Override
	public List<ProductVO> getProductList(ProductVO vo) {
		return productDAO.getProductList(vo);
	}

	@Override
	public ProductVO getProduct(ProductVO vo) {
		return productDAO.getProduct(vo);
	}

	@Override
	public void updateProduct(ProductVO vo) {
		productDAO.updateProduct(vo);
	}

	@Override
	public void deleteProduct(Integer integer) {
		productDAO.deleteProduct(integer);
	}

	@Override
	public List<ProductVO> getProductItemList(ProductVO vo) {
		return productDAO.getProductItemList(vo);
	}

	@Override
	public List<String> getSize(String vo) {
		return productDAO.getSize(vo);
	}

	@Override
	public List<ProductVO> getOption(String vo) {
		return productDAO.getOption(vo);
	}

	@Override
	public List<ProductVO> getSearchProduct(ProductVO vo) {
		// TODO Auto-generated method stub
		return productDAO.getSearchProduct(vo);
	}

	@Override
	public ProductVO getSearchCount(ProductVO vo) {
		// TODO Auto-generated method stub
		return productDAO.getSearchCount(vo);
	}
	
	
}
