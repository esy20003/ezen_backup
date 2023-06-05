package com.ezen.ticket.dto;

import java.sql.Timestamp;

public class SuccessReplyVO {
	
	private int srseq; // success_board번호
	private int mseq; // member_sequence/ 번호
	private int sseq; // 댓글번호
	private String id;
	private String replycontent;
	private Timestamp writedate;
	
	public int getSrseq() {
		return srseq;
	}
	public void setSrseq(int srseq) {
		this.srseq = srseq;
	}
	public int getMseq() {
		return mseq;
	}
	public void setMseq(int mseq) {
		this.mseq = mseq;
	}
	public int getSseq() {
		return sseq;
	}
	public void setSseq(int sseq) {
		this.sseq = sseq;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getReplycontent() {
		return replycontent;
	}
	public void setReplycontent(String replycontent) {
		this.replycontent = replycontent;
	}
	public Timestamp getWritedate() {
		return writedate;
	}
	public void setWritedate(Timestamp writedate) {
		this.writedate = writedate;
	}
	
}
