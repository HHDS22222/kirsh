package com.kirsh.www.biz.user.Impl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kirsh.www.biz.user.UserVO;

@Repository
public class UserDAO {
	
	@Autowired
	private SqlSession mybatis;
	
	public UserVO getUser(UserVO vo) {
		return mybatis.selectOne("UserDAO.getUser", vo);
	}
	
	public void insertUser(UserVO vo) {
		mybatis.insert("UserDAO.insertUser", vo);
	}

	public List<UserVO> getUserList(UserVO vo) {
		// TODO Auto-generated method stub
		return mybatis.selectList("UserDAO.getUserList", vo);
	}
	public void deleteUser(String user) {
		mybatis.delete("UserDAO.deleteUser", user);
	}

	public UserVO getUserInfo(String userID) {
		// TODO Auto-generated method stub
		return mybatis.selectOne("UserDAO.getUserInfo", userID);
	}
}