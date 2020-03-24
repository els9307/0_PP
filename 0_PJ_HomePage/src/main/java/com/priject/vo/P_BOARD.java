package com.priject.vo;

public class P_BOARD {

	private String B_NUM;			// 게시글 번호
	private String B_SUBJECT;		// 게시글 제목
	private String B_CONTENT;		// 게시글 내용
	private String B_WRITER;		// 게시글 작성자
	private String B_SECRET;		// 비밀글 여부
	private String B_SYSDATE; 		// 게시글 작성일
	private String B_SECRET_PWD; 	// 게시글 비밀번호
	public String getB_NUM() {
		return B_NUM;
	}
	public String getB_SUBJECT() {
		return B_SUBJECT;
	}
	public String getB_CONTENT() {
		return B_CONTENT;
	}
	public String getB_WRITER() {
		return B_WRITER;
	}
	public String getB_SECRET() {
		return B_SECRET;
	}
	public String getB_SYSDATE() {
		return B_SYSDATE;
	}
	public String getB_SECRET_PWD() {
		return B_SECRET_PWD;
	}
	public void setB_NUM(String b_NUM) {
		B_NUM = b_NUM;
	}
	public void setB_SUBJECT(String b_SUBJECT) {
		B_SUBJECT = b_SUBJECT;
	}
	public void setB_CONTENT(String b_CONTENT) {
		B_CONTENT = b_CONTENT;
	}
	public void setB_WRITER(String b_WRITER) {
		B_WRITER = b_WRITER;
	}
	public void setB_SECRET(String b_SECRET) {
		B_SECRET = b_SECRET;
	}
	public void setB_SYSDATE(String b_SYSDATE) {
		B_SYSDATE = b_SYSDATE;
	}
	public void setB_SECRET_PWD(String b_SECRET_PWD) {
		B_SECRET_PWD = b_SECRET_PWD;
	}

	
}
