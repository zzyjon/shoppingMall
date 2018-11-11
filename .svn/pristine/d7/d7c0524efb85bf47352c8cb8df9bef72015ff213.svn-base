package com.lsm.web.order;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.lsm.web.admin.AdminVO;
import com.lsm.web.cart.CartVO;
import com.lsm.web.common.CommonCheck;
import com.lsm.web.common.Pagenation;
import com.lsm.web.moosinsa.member.MemberService;
import com.lsm.web.moosinsa.member.MemberVO;
import com.lsm.web.moosinsa.product.ProductService;

@Controller
public class OrderController {

	@Autowired
	OrderService orderService;
	
	@Autowired
	MemberService memberService;
	
	@Autowired
	ProductService productService;
	
	/**
	 * 결제 정보 출력
	 * */
	@CommonCheck(isLogin="User")
	@GetMapping("/user/page/member/order")
	public String insertOrder(HttpSession session, Model model ) {
		
		String id = "";
		MemberVO memberVO = null;
		AdminVO vo = null;
		List<CartVO> cartList = null;
		int sumOrder = 0, sumAmount = 0;
		
		if((String)session.getAttribute("id") != null) {
			id = (String)session.getAttribute("id");
			vo = orderService.selectUserInfo(id);	// 결제 회원 정보 출력
			cartList = orderService.selectProductInfo(id); // 주문 상품 뿌리기
			sumOrder = orderService.sumOrder(id);	// 결제 금액 총합 출력
			sumAmount = orderService.sumAmount(id);	// 결제 상품 총 갯수
		}
		if(session.getAttribute("member") != null) {
			memberVO = (MemberVO) session.getAttribute("member");
			memberVO = memberService.selectMemberView(memberVO.getmId());	// 결제 회원 정보 출력
			cartList = orderService.selectProductInfo(memberVO.getmId()); // 주문 상품 뿌리기
			sumOrder = orderService.sumOrder(memberVO.getmId());	// 결제 금액 총합 출력
			sumAmount = orderService.sumAmount(memberVO.getmId());	// 결제 상품 총 갯수
		}
		
		model.addAttribute("user", memberVO);
		model.addAttribute("cart", cartList);
		model.addAttribute("sumOrder", sumOrder);
		model.addAttribute("sumAmount", sumAmount);
		
		return "user/page/member/order";
	}
	
	/**
	 * 상품디테일페이지에서 결제하기
	 * */
	@RequestMapping("/user/page/member/orderAnother")
	public String payProductDetail(HttpSession session, @ModelAttribute CartVO paramVO, Model model) {
		
		MemberVO memberVO = null;
		CartVO cartVO = null;
		
		if(session.getAttribute("member") != null) {
			memberVO = (MemberVO) session.getAttribute("member");
			memberVO = memberService.selectMemberView(memberVO.getmId());
			cartVO = (CartVO) productService.selectPayOneProductInfo(paramVO.getpNo());
		}
		model.addAttribute("payProduct", cartVO);
		model.addAttribute("user", memberVO);
		model.addAttribute("payParam", paramVO);
		
		return "user/page/member/order";
	}
	
	
	/**
	 * 결제 진행 
	 * */
	@PostMapping("/user/page/checkOut")
	public String checkOut(@RequestParam int[] pNo,@RequestParam int[] amount, @RequestParam String[] pSize, @RequestParam String[] pColor, @ModelAttribute OrderVO paramVO, HttpSession session) {
		
		String id = "";
		MemberVO memberVO = null;
		OrderDetailVO  vo = null;
		int orderResult = 0;
		int orderDetailResult = 0;
		
		// 기본 주문
		if((String)session.getAttribute("id") != null) {
			id = (String)session.getAttribute("id");
			paramVO.setmId(id);
		}else if(session.getAttribute("member") != null) {
			memberVO = (MemberVO) session.getAttribute("member");
			paramVO.setmId(memberVO.getmId());
		}
		orderResult = orderService.insertOrder(paramVO);
		
		//디테일 주문 
		for(int i = 0; i<pNo.length; i++) {
			
			vo = new OrderDetailVO();
			vo.setpNo(pNo[i]);
			vo.setpColor(pColor[i]);
			vo.setpSize(pSize[i]);
			vo.setAmount(amount[i]);
			vo.setoCode(paramVO.getoCode());
			
			orderDetailResult = orderService.insertOrderDetail(vo);
			
		}
		
		// 주문 쿼리가 정상 실행 되면 회원 테이블에 구매한 상품 금액과 포인트가 삽입 
		if( orderResult > 0 && orderDetailResult > 0) {
			orderService.updateAddOrder(paramVO);
		}
		
		return "redirect:/user/page/member/orderList";
	}
	
	/**
	 * 사용자 주문 목록 출력 
	 * */
	@CommonCheck(isLogin="User")
	@RequestMapping("/user/page/member/orderList")
	public String orderList(HttpSession session, Model model) {
		
		String id = "";
		MemberVO memberVO = null;
		List<OrderVO> orderList = null;
		
		// 기본 주문
		if((String)session.getAttribute("id") != null) {
			id = (String)session.getAttribute("id");
			orderList = orderService.selectOrderList(id);
		}else if(session.getAttribute("member") != null) {
			memberVO = (MemberVO) session.getAttribute("member");
			orderList = orderService.selectOrderList(memberVO.getmId());
		}
		
		model.addAttribute("orderList", orderList);
		
		return "user/page/member/order-list";
	}

	/**
	 * 사용자 주문 디테일 뷰
	 * */
	@RequestMapping("/user/page/member/orderDetail")
	public String orderDetail(@RequestParam String oCode, Model model) {
		
		List<OrderVO> orderDetail = orderService.selectOrderDetailView(oCode);
		model.addAttribute("orderDetail", orderDetail);
		OrderVO orderVO = orderService.selectRecevieInfo(oCode);
		model.addAttribute("receiveInfo", orderVO);
		
		return "user/page/member/order-detail";
	}
	
	/**
	 * 관리자 주문 목록 뿌리기
	 * */
	@RequestMapping("/admin/page/order")
	public String adminOrderList(Model model, @RequestParam(value="currPage", defaultValue="1") int currPage) {
		
		/*페이징 기능 시작*/
		Pagenation pg = new Pagenation();
		pg.getStartPageNum();
		pg.getLastPageNum();
		pg.setTotalCount(orderService.selectAdminOrderCount()); // 총 목록 갯수
		pg.setCurrPage(currPage);// 현재 페이지
		pg.setCountPerPage(pg.getCountPerPage()); // 페이지 번호 갯수 
		pg.setCountPerPage(10);
		
		model.addAttribute("paging", pg);
		
		HashMap<String, Object> hashmap = new HashMap<>();
		
		hashmap.put("limit", pg.getLimit());
		hashmap.put("offset", pg.getOffset());
		
		List<OrderVO> orderList = orderService.selectAdminOrderList(hashmap);
		model.addAttribute("orderList", orderList);
		model.addAttribute("orderCount", orderService.selectAdminOrderCount());
		
		return "admin/page/order/order_list";
	}
	
	/**
	 * 주문 상태 뿌리기
	 * */
	@RequestMapping("/admin/page/order/status")
	public ModelAndView adminOrderStatus() {
		
		ModelAndView view = new ModelAndView("jsonView");
		List<OrderVO> statusList = orderService.selectStatus();
		view.addObject("status", statusList);
		
		return view;
	}
	
	
	/**
	 * 주문 상태 변경
	 * */
	@RequestMapping("/admin/page/order/statusModify")
	public ModelAndView updateOrderStatus(@ModelAttribute OrderVO vo) {
		
		ModelAndView view = new ModelAndView("jsonView");
		
		int result = orderService.updateOrderStatus(vo);
		
		if(result > 0) {
			view.addObject("result", "success");
			orderService.updateDeliveryDate(vo.getoCode());	// orders테이블에서 주문 상태 변경 한 시간 업데이트 쿼리 
			
		}else {
			view.addObject("result", "fail");
		}
		
		return view; 
	}
	
	
	/**
	 * 관리자 주문 상세보기 
	 * */
	@RequestMapping("/admin/page/orderDetail")
	public String adminOrderDetail(@RequestParam String oCode, Model model) {
		
		List<OrderVO> detailList = orderService.selectAdminOrderDetail(oCode);
		model.addAttribute("detailList", detailList);
		OrderVO receiveInfo = orderService.selectRecevieInfo(oCode);
		model.addAttribute("receiveInfo", receiveInfo);
		
		return "admin/page/order/order_detail";
	}
	
	/**
	 * 관리자 주문 검색 
	 * */
	@RequestMapping("/admin/page/orderSearch")
	public String adminOrderSearch(@ModelAttribute OrderSVO svo, @RequestParam(value="currPage", defaultValue="1") int currPage, Model model) {
		
		/*페이징 기능 시작*/
		Pagenation pg = new Pagenation();
		pg.getStartPageNum();
		pg.getLastPageNum();
		pg.setTotalCount(orderService.selectAdminOrderSearchCount(svo)); // 총 목록 갯수
		pg.setCurrPage(currPage);// 현재 페이지
		pg.setCountPerPage(pg.getCountPerPage()); // 페이지 번호 갯수 
		pg.setCountPerPage(10);
		
		model.addAttribute("paging", pg);
		
		HashMap<String, Object> hashmap = new HashMap<>();
		hashmap.put("limit", pg.getLimit());
		hashmap.put("offset", pg.getOffset());
		hashmap.put("searchOption", svo.getSearchOption());
		hashmap.put("keyword", svo.getKeyword());
		hashmap.put("startDate", svo.getStartDate());
		hashmap.put("endDate", svo.getEndDate());
		
		List<OrderVO> searchList = orderService.selectAdminOrderSearch(hashmap);
		
		model.addAttribute("map", hashmap);
		model.addAttribute("searchList", searchList);
		
		return "admin/page/order/order_search";
	}
}
