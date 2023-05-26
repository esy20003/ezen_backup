package com.ezen.ticket.dto;

public class RegisterTimeVO {
	
	private int rtseq;
	private int mseq;
	private String registerDate;
	private String startTime;
	private String endTime;
	
	
	public String getRegisterDate() {
		return registerDate;
	}
	public void setRegisterDate(String registerDate) {
		this.registerDate = registerDate;
	}
	public String getStartTime() {
		return startTime;
	}
	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}
	public String getEndTime() {
		return endTime;
	}
	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}
	public int getRtseq() {
		return rtseq;
	}
	public void setRtseq(int rtseq) {
		this.rtseq = rtseq;
	}
	public int getMseq() {
		return mseq;
	}
	public void setMseq(int mseq) {
		this.mseq = mseq;
	}
	
}
