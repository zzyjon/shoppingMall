package com.lsm.web.moosinsa.member;

public class MemberSVO {
	private String memberSearchKeyType; // 멤버 키워드검색 타입
	private String memberSearchKeyWord; // 멤버 키워드검색 검색어
	private int buySumMin;	//	최소 구매금액
	private int buySumMax;	//	최대 구매금액
	private int pointMin;	// 	최소 적립금
	private int pointMax;	//	최대 적립금
	private String regDateStart;	//	최소 가입날짜
	private String regDateEnd;	//	최대 가입날짜
	private String loginDateStart;	//	최소 로그인날짜
	private String loginDateEnd;	//	최대 로그인날짜
	private String visitCountStart;	//	최소 방문횟수
	private String visitCountEnd;	//	최대 방문횟수
	private String gender;	// 성별선택

	public int getBuySumMin() {
		return buySumMin;
	}

	public void setBuySumMin(int buySumMin) {
		this.buySumMin = buySumMin;
	}

	public int getBuySumMax() {
		return buySumMax;
	}

	public void setBuySumMax(int buySumMax) {
		this.buySumMax = buySumMax;
	}

	public int getPointMin() {
		return pointMin;
	}

	public void setPointMin(int pointMin) {
		this.pointMin = pointMin;
	}

	public int getPointMax() {
		return pointMax;
	}

	public void setPointMax(int pointMax) {
		this.pointMax = pointMax;
	}

	
	public String getLoginDateStart() {
		return loginDateStart;
	}

	public void setLoginDateStart(String loginDateStart) {
		this.loginDateStart = loginDateStart;
	}

	public String getRegDateStart() {
		return regDateStart;
	}

	public void setRegDateStart(String regDateStart) {
		this.regDateStart = regDateStart;
	}

	public String getRegDateEnd() {
		return regDateEnd;
	}

	public void setRegDateEnd(String regDateEnd) {
		this.regDateEnd = regDateEnd;
	}

	public String getLoginDateEnd() {
		return loginDateEnd;
	}

	public void setLoginDateEnd(String loginDateEnd) {
		this.loginDateEnd = loginDateEnd;
	}

	public String getVisitCountStart() {
		return visitCountStart;
	}

	public void setVisitCountStart(String visitCountStart) {
		this.visitCountStart = visitCountStart;
	}

	public String getVisitCountEnd() {
		return visitCountEnd;
	}

	public void setVisitCountEnd(String visitCountEnd) {
		this.visitCountEnd = visitCountEnd;
	}

	public String getMemberSearchKeyType() {
		return memberSearchKeyType;
	}

	public void setMemberSearchKeyType(String memberSearchKeyType) {
		this.memberSearchKeyType = memberSearchKeyType;
	}

	public String getMemberSearchKeyWord() {
		return memberSearchKeyWord;
	}

	public void setMemberSearchKeyWord(String memberSearchKeyWord) {
		this.memberSearchKeyWord = memberSearchKeyWord;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

}
