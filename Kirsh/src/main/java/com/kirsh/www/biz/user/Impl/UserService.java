package com.kirsh.www.biz.user.Impl;

import java.util.List;

import com.kirsh.www.biz.user.UserVO;

public interface UserService {
	public UserVO getUser(UserVO vo);
	public void insertUser(UserVO vo);
	public List<UserVO> getUserList(UserVO vo);
	public void deleteUser(String user);
	public UserVO getUserInfo(String userID);
}
