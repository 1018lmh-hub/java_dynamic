package com.sample.web.member.model.dto;

public class UpdatePwdDto {

	private String userPwd;
	private String changePwd;
	private Long userNo;
	public UpdatePwdDto() {
		super();
	}
	public UpdatePwdDto(String userPwd, String changePwd, Long userNo) {
		super();
		this.userPwd = userPwd;
		this.changePwd = changePwd;
		this.userNo = userNo;
	}
	public String getUserPwd() {
		return userPwd;
	}
	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}
	public String getChangePwd() {
		return changePwd;
	}
	public void setChangePwd(String changePwd) {
		this.changePwd = changePwd;
	}
	public Long getUserNo() {
		return userNo;
	}
	public void setUserNo(Long userNo) {
		this.userNo = userNo;
	}
	
	
}
