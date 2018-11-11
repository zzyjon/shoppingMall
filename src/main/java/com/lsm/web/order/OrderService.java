package com.lsm.web.order;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lsm.web.admin.AdminVO;
import com.lsm.web.cart.CartVO;

@Service
public class OrderService {

	@Autowired
	OrderDAO dao;
	
	/**
	 * 유저 정보 출력
	 * */
	public AdminVO selectUserInfo(String id){
		return dao.selectUserInfo(id);
	}
	
	/**
	 * 상품 정보 출력
	 * */
	public List<CartVO> selectProductInfo(String id) {
		return dao.selectProductInfo(id);
	}

	/**
	 * 상품 결제 총 금액
	 * */
	public int sumOrder(String id) {
		return dao.sumOrder(id);
	}
	
	/**
	 * 결제 상품 총 갯수 
	 * */
	public int sumAmount(String id) {
		return dao.sumAmount(id);
	}
	
	/**
	 * 상품 주문
	 * */
	public int insertOrder(OrderVO vo) {
		Date d = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
		String o = sdf.format(d);
		String r = String.valueOf(randomRange(100, 999));
		vo.setoCode(o+r);
		System.out.println("insertOrder service oCode = " + (o+r));
		return dao.insertOrder(vo);
	}
	/**
	 * 상품 주문 번호 생성
	 * */
	private int randomRange(int n1, int n2) {
	    return (int) (Math.random() * (n2 - n1 + 1)) + n1;
	  }
	
	/**
	 * 상품 주문 디테일 
	 * */
	public int insertOrderDetail(OrderDetailVO vo) {
		return dao.insertOrderDetail(vo);
	}
	
	/**
	 * 사용자 주문 내역 
	 * */
	public List<OrderVO> selectOrderList(String mId){
		return dao.selectOrderList(mId);
	}
	
	/**
	 * 사용자 주문 내역 디테일 뷰
	 * */
	public List<OrderVO> selectOrderDetailView(String oCode){
		return dao.selectOrderDetailView(oCode);
	}
	
	/**
	 * 받는사람 정보 출력
	 * */
	public OrderVO selectRecevieInfo(String oCode) {
		return dao.selectRecevieInfo(oCode);
	}
	
	/**
	 * 관리자 주문 내역 조회
	 * */
	public List<OrderVO> selectAdminOrderList(HashMap<String, Object> hashmap){
		return dao.selectAdminOrderList(hashmap);
				
	}
	
	/**
	 * 관리자 주문 상세 보기
	 * */
	public List<OrderVO> selectAdminOrderDetail(String oCode){
		return dao.selectAdminOrderDetail(oCode);
	}
	
	/**
	 * 관리자 주문자 상세 보기 
	 * */
	public OrderVO selectAdminRecevieInfo(String oCode) {
		return dao.selectAdminRecevieInfo(oCode);
	}
	
	/**
	 * 사용자 주문 후 장바구니 삭제
	 * */
	public int deleteOrderAfterCart(int cNo) {
		return dao.deleteOrderAfterCart(cNo);
	}
	
	/**
	 * 주문 상태 selectbox 출력
	 * */
	public List<OrderVO> selectStatus(){
		return dao.selectStatus();
	}
	
	/**
	 * 유저 포인트 적립
	 * */
	public int updatePoint(OrderVO vo) {
		return dao.updatePoint(vo);
	}
	
	/**
	 * 관리자 주문 건수 페이징용
	 * */
	public int selectAdminOrderCount() {
		return dao.selectAdminOrderCount();
	}
	
	/**
	 * 주문 상태 변경
	 * */
	public int updateOrderStatus(OrderVO vo) {
		return dao.updateOrderStatus(vo);
	}
	
	/**
	 * 주문 상태 변경 시 시간 업데이트
	 * */
	public int updateDeliveryDate(String oCode) {
		return dao.updateDeliveryDate(oCode);
	}
	
	/**
	 * 주문 후 금액 포인트 적립
	 * */
	public int updateAddOrder(OrderVO vo) {
		return dao.updateAddOrder(vo);
	}
	
	/**
	 * 관리자 페이지에서 주문 내역 검색 
	 * */
	public List<OrderVO> selectAdminOrderSearch(HashMap<String, Object> hashmap){
		return dao.selectAdminOrderSearch(hashmap);
	}
	
	/**
	 * 관리자 주문 검색 갯수 카운트
	 * */
	public int selectAdminOrderSearchCount(OrderSVO svo) {
		return dao.selectAdminOrderSearchCount(svo);
	}
}
