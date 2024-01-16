package com.kirsh.www.biz.category.impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kirsh.www.biz.category.CategoryVO;

@Repository
public class CategoryDAO {
	
	@Autowired
	private SqlSession mybatis;

	public List<CategoryVO> getCategoryList() {
		return mybatis.selectList("getCategoryList");
	}
	
	public CategoryVO getCategory(CategoryVO vo) {
		return mybatis.selectOne("getCategory", vo);
	}

	public void insertCateogry(CategoryVO vo) {
		mybatis.insert("insertCategory", vo);
		
	}

	public void updateCategory(CategoryVO vo) {
		mybatis.update("updateCategory", vo);
		
	}

	public void deleteCateogry(CategoryVO vo) {
		mybatis.delete("deleteCategory", vo);
	}
	
	
}
