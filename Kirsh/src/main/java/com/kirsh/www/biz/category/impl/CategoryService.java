package com.kirsh.www.biz.category.impl;

import java.util.List;

import com.kirsh.www.biz.category.CategoryVO;

public interface CategoryService {
	public List<CategoryVO> getCategoryList(); 
	public void insertCategory(CategoryVO vo);
	public void updateCategory(CategoryVO vo);
	public void deleteCategory(CategoryVO vo);
}
