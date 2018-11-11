package com.lsm.web.moosinsa;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MoosinsaController {

	/**
	 * 관리자 메인페이지
	 * */
	
	@GetMapping("/admin/index")
	public String pageView() {
		return "admin/index";
	}
	
	/**
	 * 관리자 기본설정 페이지
	 * */
	@GetMapping("/admin/page/basic")
	public String pageInfo() {
		return "admin/page/basic/admin_info";
	}
	
	/**
	 * 관리자 게시판 관리 페이지
	 * */
	@GetMapping("/admin/page/board")
	public String pageBoard() {
		return "admin/page/board/freeboard_list";
	}
	
	
}
