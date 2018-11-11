package com.lsm.web.cart;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.lsm.web.common.CommonCheck;
import com.lsm.web.moosinsa.member.MemberVO;

@Controller
public class CartController {

	@Autowired
	CartService service;
	
	/**
	 * 유저 장바구니 조회
	 * */
	@CommonCheck(isLogin="User")
	@GetMapping("/user/page/member/cart/")
	public ModelAndView viewCart( ModelAndView view, HttpSession session) {
		
		String id = "";
		MemberVO memberVO = null;
		List<CartVO> cartList = null;
		int sumCart = 0;
		
		if((String)session.getAttribute("id") != null) {
			id = (String)session.getAttribute("id");
			cartList = service.selectCartList(id);
			sumCart = service.sumCart(id);// 장바구니 총 금액
		}
		if(session.getAttribute("member") != null) {
			memberVO = (MemberVO) session.getAttribute("member");
			cartList = service.selectCartList(memberVO.getmId());
			sumCart = service.sumCart(memberVO.getmId());// 장바구니 총 금액
		}
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("list", cartList); 	// 장바구니 목록
		map.put("sumCart", sumCart);	// 장바구니 합계
		map.put("cartExist", cartList.size());	// 장바구니 상품 존재 여부
		
		view.setViewName("user/page/member/cart");// view(jsp) page 경로 
		view.addObject("map", map);
		
		return view;
	}
	
	/**
	 * 유저 장바구니 메뉴바에서 조회 
	 * */
	@GetMapping("/user/page/member/menucart/")
	public ModelAndView viewMenuCart ( ModelAndView view, HttpSession session) {
		
		
		String id = "";
		MemberVO memberVO = null;
		List<CartVO> cartList = null;
		int sumCart = 0;
		
		if((String)session.getAttribute("id") != null) {
			id = (String)session.getAttribute("id");
			cartList = service.selectCartList(id);
			sumCart = service.sumCart(id);// 장바구니 총 금액
		}
		if(session.getAttribute("member") != null) {
			memberVO = (MemberVO) session.getAttribute("member");
			cartList = service.selectCartList(memberVO.getmId());
			sumCart = service.sumCart(memberVO.getmId());// 장바구니 총 금액
		}
		
		Map<String, Object> map = new HashMap<String, Object>();
		
		map.put("list", cartList); 	// 장바구니 목록
		map.put("sumCart", sumCart);	// 장바구니 합계
		map.put("cartExist", cartList.size());	// 장바구니 상품 존재 여부
		
		view.setViewName("jsonView");
		view.addObject("map", map);
		
		return view;
	}
	
	/**
	 * 유저 장바구니 추가
	 * */
	@CommonCheck(isLogin="User")
	@PostMapping("/user/page/member/insert_cart")
	public ModelAndView insertCart(@ModelAttribute CartVO paramVO, HttpSession session) {
		
		String id = "";
		MemberVO memberVO = null;
		
		if((String)session.getAttribute("id") != null) {
			id = (String)session.getAttribute("id");
			paramVO.setmId(id);
		}else if(session.getAttribute("member") != null) {
			memberVO = (MemberVO)session.getAttribute("member");
			paramVO.setmId(memberVO.getmId());
		}
		
		ModelAndView view = new ModelAndView("jsonView");
		
		System.out.println("상품 번호 = "+paramVO.getpNo());
		
		int cartExistCheck = service.selectCartCheck(paramVO);
		if(cartExistCheck == 0) {// 장바구니에 상품이 존재하지 않으면 상품을 추가
			service.insertCart(paramVO);
			view.addObject("result", "success");
		}else {
			view.addObject("result", "fail");
		}
		
		return view;
	}
	
	/**
	 * 유저 장바구니 수정 
	 * */
    @RequestMapping("/user/page/member/update_cart")
    public String update(@RequestParam int[] amount, @RequestParam int[] cNo, HttpSession session) {
        // session의 id
        String id = "";
		MemberVO memberVO = null;
		
		if((String)session.getAttribute("id") != null) {
			id = (String)session.getAttribute("id");
			// 레코드의 갯수 만큼 반복문 실행
	        for(int i=0; i<cNo.length; i++){
	            CartVO vo = new CartVO();
	            vo.setmId(id);
	            vo.setAmount(amount[i]);
	            vo.setcNo(cNo[i]);
	            service.updateCartAmount(vo);
	        }
			
		}else if(session.getAttribute("member") != null) {
			memberVO = (MemberVO)session.getAttribute("member");
			// 레코드의 갯수 만큼 반복문 실행
	        for(int i=0; i<cNo.length; i++){
	            CartVO vo = new CartVO();
	            vo.setmId(memberVO.getmId());
	            vo.setAmount(amount[i]);
	            vo.setcNo(cNo[i]);
	            service.updateCartAmount(vo);
	        }
		}

        return "redirect:/user/page/member/cart/";
    }
    
    /**
     * 유저 장바구니 삭제 
     * */
    @RequestMapping("/user/page/member/delete_cart")
    public String delete(@RequestParam int cNo) {
    	
    		service.deleteCart(cNo);
    	
    	return "redirect:/user/page/member/cart/";
    }
    
    
    /**
     * 장바구니 전체 삭제 
     * */
    @ResponseBody
    @RequestMapping(value = "사용한 URL",method = RequestMethod.POST)
    public ModelAndView MethodName(@RequestBody ArrayList<CartVO> arraylist) throws Exception{
        //위와 같이 적어주면 ArrayList 를 받을수 있다.
        //같은 방식으로 Object 같은 객체도 Map을 통해서 받을수 있다.
    	
    	ModelAndView view = new ModelAndView("jsonView");
    	
    	
    	
    	return view;
    }

}
