package com.kirsh.www.biz.user.Impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kirsh.www.biz.user.UserVO;

@Service("userService")
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDAO userDAO;

	@Override
	public UserVO getUser(UserVO vo) {
		return userDAO.getUser(vo);
	}

	@Override
	public void insertUser(UserVO vo) {
		userDAO.insertUser(vo);

	}

	@Override
	public List<UserVO> getUserList(UserVO vo) {
		return userDAO.getUserList(vo);
	}

	@Override
	public void deleteUser(String user) {
		userDAO.deleteUser(user);

	}

	@Override
	public UserVO getUserInfo(String userID) {
		// TODO Auto-generated method stub
		return userDAO.getUserInfo(userID);
	}

}
