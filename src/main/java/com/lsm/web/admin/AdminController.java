package com.lsm.web.admin;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AdminController {

	@Autowired
	AdminService service;
	
	/**
	 * 관리자 로그인 처리
	 * */
	//@RequestMapping(value="/admin/loginCheck" method=RequestMethod.POST)
	@PostMapping("/admin/loginCheck")
	public ModelAndView adminIdCheck(@ModelAttribute AdminVO paramVO, HttpSession session) {
		ModelAndView view = new ModelAndView("jsonView"); // jsonView : ajax success에서 파싱 값을 받을 수 있음 
		//view.setViewName("jsonView"); new할때 말고 이렇게도 가능함
		
		int result = service.adminLoginIdCount(paramVO);
		
		if(result > 0) {
			
			AdminVO vo = service.adminLogin(paramVO);
			
			session.setAttribute("id", vo.getId()); 	// 세션에 아이디를 저장
			session.setAttribute("name", vo.getName());
			view.addObject("result", "success" ); // 로그인 성공 시 
		}else {
			view.addObject("result", "fail");		// 로그인 실패 시
		}
		
		return view;
	}
	
	@RequestMapping("/admin/login")
	public String login() {
		return "admin/page/basic/login";
	}
	
	@RequestMapping("/admin/logout")
    public ModelAndView logout(HttpSession session, HttpServletRequest request){
		
        session.invalidate();
        
        ModelAndView mav = new ModelAndView();
        mav.setViewName("admin/page/basic/login");
        mav.addObject("result", "logout");
        return mav;
    }
}
