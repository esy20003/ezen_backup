package com.ezen.ticket.dto;

import java.sql.Timestamp;

public class ContentVO {
	
	private int cseq;
	private String title;
	private String location;
	private Timestamp cdate;
	private Timestamp tdate;
	private String artist;
	private int price_s;
	private int price_g;
	private int price_tot;
	private String image;
	private String content;
	private String category;
	private int age;
	private int bestyn;
	
	public int getCseq() {
		return cseq;
	}
	public void setCseq(int cseq) {
		this.cseq = cseq;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public Timestamp getCdate() {
		return cdate;
	}
	public void setCdate(Timestamp cdate) {
		this.cdate = cdate;
	}
	public Timestamp getTdate() {
		return tdate;
	}
	public void setTdate(Timestamp tdate) {
		this.tdate = tdate;
	}
	public String getArtist() {
		return artist;
	}
	public void setArtist(String artist) {
		this.artist = artist;
	}
	public int getPrice_s() {
		return price_s;
	}
	public void setPrice_s(int price_s) {
		this.price_s = price_s;
	}
	public int getPrice_g() {
		return price_g;
	}
	public void setPrice_g(int price_g) {
		this.price_g = price_g;
	}
	public int getPrice_tot() {
		return price_tot;
	}
	public void setPrice_tot(int price_tot) {
		this.price_tot = price_tot;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public int getBestyn() {
		return bestyn;
	}
	public void setBestyn(int bestyn) {
		this.bestyn = bestyn;
	}
	
}
