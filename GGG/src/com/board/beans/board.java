
package com.board.beans;

public class board {
	//��ȣ
	private int num;
	
	//����
	private String subject;
	
	//����
	private String content;
	
	//���̵�
	private String id;
	
	//�̸���
	private String email;
	
	//�ۼ�����
	private String boarddate;
	
	//��ȸ��
	private String score;
	
	//�˻��ɼ�
	public String opt;
	
	//�˻�����
	public String condition;
	
	//�̹���
	private String img;
	
	//�Ǹ�, �뿩
	private String sellOpt;
	
	//�뿩 �Ⱓ
	private int borrowDay;
	
	//����
	private int price;
	
	//����
	private String lat;
	
	//�浵
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

