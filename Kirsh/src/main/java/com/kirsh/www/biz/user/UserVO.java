package com.kirsh.www.biz.user;

import java.sql.Date;

public class UserVO {
	private String userID;
	private String userPW;
	private String userName;
	private String userNickname;
	private String email;
	private String userProfileImg;
	private String postcode;
	private String roadAddress;
	private String jibunAddress;
	private String detailAddress;
	private String extraAddress;
	private String birth;
	private String firstTel;
	private String secondTel;
	private String thirdTel;
	private String authority;
	private int point;
	private Date joinDay;
	
	private String searchName;
	private String searchEmail;
	
	private int orderCnt;
	private int allOrderCnt;
	
	public int getOrderCnt() {
		return orderCnt;
	}
	public void setOrderCnt(int orderCnt) {
		this.orderCnt = orderCnt;
	}
	public int getAllOrderCnt() {
		return allOrderCnt;
	}
	public void setAllOrderCnt(int allOrderCnt) {
		this.allOrderCnt = allOrderCnt;
	}
	
	public String getSearchName() {
		return searchName;
	}
	public void setSearchName(String searchName) {
		this.searchName = searchName;
	}
	public String getSearchEmail() {
		return searchEmail;
	}
	public void setSearchEmail(String searchEmail) {
		this.searchEmail = searchEmail;
	}
	public String getUserID() {
		return userID;
	}
	public void setUserID(String userID) {
		this.userID = userID;
	}
	public String getUserPW() {
		return userPW;
	}
	public void setUserPW(String userPW) {
		this.userPW = userPW;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserNickname() {
		return userNickname;
	}
	public void setUserNickname(String userNickname) {
		this.userNickname = userNickname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getUserProfileImg() {
		return userProfileImg;
	}
	public void setUserProfileImg(String userProfileImg) {
		this.userProfileImg = userProfileImg;
	}
	public String getPostcode() {
		return postcode;
	}
	public void setPostcode(String postcode) {
		this.postcode = postcode;
	}
	public String getRoadAddress() {
		return roadAddress;
	}
	public void setRoadAddress(String roadAddress) {
		this.roadAddress = roadAddress;
	}
	public String getJibunAddress() {
		return jibunAddress;
	}
	public void setJibunAddress(String jibunAddress) {
		this.jibunAddress = jibunAddress;
	}
	public String getDetailAddress() {
		return detailAddress;
	}
	public void setDetailAddress(String detailAddress) {
		this.detailAddress = detailAddress;
	}
	public String getExtraAddress() {
		return extraAddress;
	}
	public void setExtraAddress(String extraAddress) {
		this.extraAddress = extraAddress;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}

	public String getFirstTel() {
		return firstTel;
	}
	public void setFirstTel(String firstTel) {
		this.firstTel = firstTel;
	}
	public String getSecondTel() {
		return secondTel;
	}
	public void setSecondTel(String secondTel) {
		this.secondTel = secondTel;
	}
	public String getThirdTel() {
		return thirdTel;
	}
	public void setThirdTel(String thirdTel) {
		this.thirdTel = thirdTel;
	}
	public int getPoint() {
		return point;
	}
	public void setPoint(int point) {
		this.point = point;
	}
	public Date getJoinDay() {
		return joinDay;
	}
	public void setJoinDay(Date joinDay) {
		this.joinDay = joinDay;
	}
	public String getAuthority() {
		return authority;
	}
	public void setAuthority(String authority) {
		this.authority = authority;
	}
	
	
	
}
