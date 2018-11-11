package com.lsm.web.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdminService {

	@Autowired
	AdminDAO dao;
	
	/**
	 *  관리자 로그인 시 아이디 존재 카운트
	 * */
	public int adminLoginIdCount(AdminVO vo) {
		return dao.adminLoginIdCount(vo);
	}
	
	/**
	 * 관리자 로그인
	 * */
	public AdminVO adminLogin(AdminVO vo) {
		return dao.adminLogin(vo);
	}
}
