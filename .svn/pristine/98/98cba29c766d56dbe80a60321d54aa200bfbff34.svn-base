package com.lsm.web.admin;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class AdminDAO {

	@Autowired
	SqlSession session;
	
	/**
	 * 관리자 로그인 시 아이디 존재 카운트
	 * */
	public int adminLoginIdCount(AdminVO vo) {
		return session.selectOne("admin.adminLoginIdCount", vo);
	}
	
	/**
	 * 관리자 정보 가져오기
	 * */
	public AdminVO adminLogin(AdminVO vo) {
		return session.selectOne("admin.adminLogin", vo);
	}
	
}
