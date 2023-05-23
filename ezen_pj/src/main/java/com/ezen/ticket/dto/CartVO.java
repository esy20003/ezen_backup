package com.ezen.ticket.dto;

import java.sql.Timestamp;

public class CartVO {
	
	private int mseq;
	private int cseq;
	private Timestamp contentDate;
	private String contentTime;
	private int locationNum;
	private String area;
	private int quantity;
	private Timestamp indate;
	private char buyyn;
	
	public int getMseq() {
		return mseq;
	}
	public void setMseq(int mseq) {
		this.mseq = mseq;
	}
	public int getCseq() {
		return cseq;
	}
	public void setCseq(int cseq) {
		this.cseq = cseq;
	}
	public Timestamp getContentDate() {
		return contentDate;
	}
	public void setContentDate(Timestamp contentDate) {
		this.contentDate = contentDate;
	}
	public String getContentTime() {
		return contentTime;
	}
	public void setContentTime(String contentTime) {
		this.contentTime = contentTime;
	}
	public int getLocationNum() {
		return locationNum;
	}
	public void setLocationNum(int locationNum) {
		this.locationNum = locationNum;
	}
	public String getArea() {
		return area;
	}
	public void setArea(String area) {
		this.area = area;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public Timestamp getIndate() {
		return indate;
	}
	public void setIndate(Timestamp indate) {
		this.indate = indate;
	}
	public char getBuyyn() {
		return buyyn;
	}
	public void setBuyyn(char buyyn) {
		this.buyyn = buyyn;
	}
	
}
