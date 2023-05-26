package com.ezen.ticket.dto;

public class RegisterTimeVO {
	
	private int rtseq;
	private int mseq;
	private String startdatetime;
	private String enddatetime;
	
	public String getStartdatetime() {
		return startdatetime;
	}
	public void setStartdatetime(String startdatetime) {
		this.startdatetime = startdatetime;
	}
	public String getEnddatetime() {
		return enddatetime;
	}
	public void setEnddatetime(String enddatetime) {
		this.enddatetime = enddatetime;
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
