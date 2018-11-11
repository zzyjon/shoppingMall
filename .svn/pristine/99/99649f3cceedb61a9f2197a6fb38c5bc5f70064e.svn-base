package com.lsm.web.board;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import com.lsm.web.common.FileVO;
import com.lsm.web.common.TimeMaximum;

public class ReviewVO extends FileVO {

	private int rNo;// 게시글 번호
	private String mId;
	private String rWriter;
	private int pNo;	// 상품 번호
	private String rTitle;	// 게시글 제목
	private String rContent;	// 게시글 내용
	private int rAvgScore;	// 별점 주기
	private int rViewcount;	// 조회수
	private String rImg1;	// 사진 
	private String rWriteDate; // 글작성일
	private String rModiDate;
	private String rWriteAgo;
	private int replecount;	// 댓글 갯수
	private String pImg1;	// 
	
	
	
	public String getrWriteAgo() {
		
		TimeMaximum tm = new TimeMaximum();
		
		Date date;
		try {
			date = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.S").parse(this.getrWriteDate());
			rWriteAgo = tm.calculateTime(date);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return rWriteAgo;
	}
	
	public void setrWriteAgo(String rWriteAgo) {
		
		
		this.rWriteAgo = rWriteAgo;
	}
	
	public String getmId() {
		return mId;
	}
	public void setmId(String mId) {
		this.mId = mId;
	}
	public int getrNo() {
		return rNo;
	}
	public void setrNo(int rNo) {
		this.rNo = rNo;
	}
	public int getpNo() {
		return pNo;
	}
	public void setpNo(int pNo) {
		this.pNo = pNo;
	}
	public String getrTitle() {
		return rTitle;
	}
	public void setrTitle(String rTitle) {
		this.rTitle = rTitle;
	}
	public String getrContent() {
		return rContent;
	}
	public void setrContent(String rContent) {
		this.rContent = rContent;
	}
	public int getrAvgScore() {
		return rAvgScore;
	}
	public void setrAvgScore(int rAvgScore) {
		this.rAvgScore = rAvgScore;
	}
	public int getrViewcount() {
		return rViewcount;
	}
	public void setrViewcount(int rViewcount) {
		this.rViewcount = rViewcount;
	}
	public String getrWriter() {
		return rWriter;
	}
	public void setrWriter(String rWriter) {
		this.rWriter = rWriter;
	}
	public String getrImg1() {
		return rImg1;
	}
	public void setrImg1(String rImg1) {
		this.rImg1 = rImg1;
	}
	public String getrWriteDate() {
		return rWriteDate;
	}
	public void setrWriteDate(String rWriteDate) {
		
		this.rWriteDate = rWriteDate;
	}
	public String getrModiDate() {
		return rModiDate;
	}
	public void setrModiDate(String rModiDate) {
		this.rModiDate = rModiDate;
	}
	public int getReplecount() {
		return replecount;
	}
	public void setReplecount(int replecount) {
		this.replecount = replecount;
	}

	public String getpImg1() {
		return pImg1;
	}

	public void setpImg1(String pImg1) {
		this.pImg1 = pImg1;
	}
	
	
	
}
