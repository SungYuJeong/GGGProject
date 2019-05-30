
package com.board.beans;

public class board {
	//번호
	private int num;
	
	//제목
	private String subject;
	
	//내용
	private String content;
	
	//아이디
	private String id;
	
	//이메일
	private String email;
	
	//작성일자
	private String boarddate;
	
	//조회수
	private String score;
	
	//검색옵션
	public String opt;
	
	//검색내용
	public String condition;
	
	//이미지
	private String img;
	
	//판매, 대여
	private String sellOpt;
	
	//대여 기간
	private int borrowDay;
	
	//가격
	private int price;
	
	//위도
	private String lat;
	
	//경도
	private String lng;
	
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public String getSellOpt() {
		return sellOpt;
	}
	public void setSellOpt(String sellOpt) {
		this.sellOpt = sellOpt;
	}
	public int getBorrowDay() {
		return borrowDay;
	}
	public void setBorrowDay(int borrowDay) {
		this.borrowDay = borrowDay;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getOpt() {
		return opt;
	}
	public void setOpt(String opt) {
		this.opt = opt;
	}
	public String getCondition() {
		return condition;
	}
	public void setCondition(String condition) {
		this.condition = condition;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getBoarddate() {
		return boarddate;
	}
	public void setBoarddate(String boarddate) {
		this.boarddate = boarddate;
	}
	public String getScore() {
		return score;
	}
	public void setScore(String score) {
		this.score = score;
	}
	public String getLat() {
		return lat;
	}
	public void setLat(String lat) {
		this.lat = lat;
	}
	public String getLng() {
		return lng;
	}
	public void setLng(String lng) {
		this.lng = lng;
	}
	
}

