package com.kirsh.www.biz.product.impl;

import java.util.List;

import com.kirsh.www.biz.product.ProductOptionVO;
import com.kirsh.www.biz.product.ProductVO;

public interface ProductService {
	public void insertProduct(ProductVO vo);
	public void insertProductOption(ProductOptionVO vo);
	public List<ProductVO> getProductList(ProductVO vo);
	public ProductVO getProduct(ProductVO vo);
	public void updateProduct(ProductVO vo);
	public void deleteProduct(Integer intger);
	public List<ProductVO> getProductItemList(ProductVO vo);
	public List<String> getSize(String vo);
	public List<ProductVO> getSearchProduct(ProductVO vo);
	public ProductVO getSearchCount(ProductVO vo);
	public List<ProductOptionVO> getOptionList(ProductOptionVO vo);
}
