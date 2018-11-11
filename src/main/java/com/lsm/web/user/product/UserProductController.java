package com.lsm.web.user.product;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.lsm.web.moosinsa.member.MemberService;
import com.lsm.web.moosinsa.member.MemberVO;



@Controller
public class UserProductController {
	
	@Autowired
	MemberService service;
	
	
	/**
	 * 메인페이지
	 * */
	@GetMapping("/user/index")
	public String selectUserMain() {
		return "user/index";
	}
	
	
	/**
	 * 회사소개
	 * */
	@GetMapping("/user/page/intro/contact")
	public String selectUserContact() {
		return "user/page/intro/contact";
	}
	
	
	
	
}
