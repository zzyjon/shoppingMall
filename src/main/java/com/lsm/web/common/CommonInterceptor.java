package com.lsm.web.common;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Component;
import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.lsm.web.moosinsa.member.MemberVO;

@Component
public class CommonInterceptor extends HandlerInterceptorAdapter{

	//private static final Logger log = LoggerFactory.getLogger(CommonIntercepter.class);
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception{
		
		String loginYn = null;
		
		HandlerMethod handlerMethod = (HandlerMethod) handler;
		Class<?> clazz = handlerMethod.getBeanType();
		
		if(handlerMethod != null) {
			CommonCheck commonCheck = handlerMethod.getMethodAnnotation(CommonCheck.class);
			if(commonCheck != null) {
				loginYn = commonCheck.isLogin();
			}
		}
		
		CommonCheck commClassChk = (CommonCheck) clazz.getAnnotation(CommonCheck.class);
		if(commClassChk != null) {
			if(loginYn == null || "".equals(loginYn)) {
				loginYn = commClassChk.isLogin();
			}
		}
		
		if("Y".equalsIgnoreCase(loginYn)) {
			HttpSession session = request.getSession();
			String id = (String) session.getAttribute("id");
			//System.out.println("session id = " + id);
			if(id == null) {
				response.sendRedirect("/admin/login");
				return false;
			}
		}else if("User".equalsIgnoreCase(loginYn)) {
			HttpSession session = request.getSession();
			MemberVO memberVO = (MemberVO) session.getAttribute("member");
			if(memberVO == null) {
				response.sendRedirect("/user/page/member/loginMain");
				return false;
			}
		}
		
		// log.info("소요시간 : " + (System.currentTimeMilis()-cur) + "");
		
		return true;
	}
	
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView mav) throws Exception{
		super.postHandle(request, response, handler, mav); // - jsp 파싱 전 
	}
	
	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception{
		super.afterCompletion(request, response, handler, ex); // - jsp 파싱 후 
	}
	
}
