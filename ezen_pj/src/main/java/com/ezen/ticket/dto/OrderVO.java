package com.ezen.ticket.dto;

import java.sql.Timestamp;

public class OrderVO {
	private int oseq;
	private Timestamp oindate; //이건 주문내역 날짜
	private int mseq;
	
	private int odseq;
	private int cseq;
	private int locationNum;
	private Timestamp contentDate;
	private String contentTime;
	private String area;
	private int mseq2;
	private int quantity;
	private char result;
	private Timestamp odindate; //이건 주문상세내역 날짜
	
	
	public int getOseq() {
		return oseq;
	}
	public void setOseq(int oseq) {
		this.oseq = oseq;
	}
	public Timestamp getOindate() {
		return oindate;
	}
	public void setOindate(Timestamp oindate) {
		this.oindate = oindate;
	}
	public int getMseq() {
		return mseq;
	}
	public void setMseq(int mseq) {
		this.mseq = mseq;
	}
	public int getOdseq() {
		return odseq;
	}
	public void setOdseq(int odseq) {
		this.odseq = odseq;
	}
	public int getCseq() {
		return cseq;
	}
	public void setCseq(int cseq) {
		this.cseq = cseq;
	}
	public int getLocationNum() {
		return locationNum;
	}
	public void setLocationNum(int locationNum) {
		this.locationNum = locationNum;
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
	public String getArea() {
		return area;
	}
	public void setArea(String area) {
		this.area = area;
	}
	public int getMseq2() {
		return mseq2;
	}
	public void setMseq2(int mseq2) {
		this.mseq2 = mseq2;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public char getResult() {
		return result;
	}
	public void setResult(char result) {
		this.result = result;
	}
	public Timestamp getOdindate() {
		return odindate;
	}
	public void setOdindate(Timestamp odindate) {
		this.odindate = odindate;
	}
	
	
	
	
}
