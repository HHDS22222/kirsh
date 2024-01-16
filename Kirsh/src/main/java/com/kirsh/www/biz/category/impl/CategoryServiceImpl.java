package com.kirsh.www.biz.category.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kirsh.www.biz.category.CategoryVO;

@Service("categoryService")
public class CategoryServiceImpl implements CategoryService {

	@Autowired
	CategoryDAO categoryDAO;

	@Override
	public List<CategoryVO> getCategoryList() {
		// TODO Auto-generated method stub
		return categoryDAO.getCategoryList();
	}

	@Override
	public void insertCategory(CategoryVO vo) {
		categoryDAO.insertCateogry(vo);

	}

	@Override
	public void updateCategory(CategoryVO vo) {
		categoryDAO.updateCategory(vo);

	}

	@Override
	public void deleteCategory(CategoryVO vo) {
		categoryDAO.deleteCateogry(vo);

	}

}
