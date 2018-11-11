package com.lsm.web.order;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.lsm.web.admin.AdminVO;
import com.lsm.web.cart.CartVO;

@Repository
public class OrderDAO {

	@Autowired
	SqlSession session;
	
	/**
	 * 유저 정보 출력
	 * */
	public AdminVO selectUserInfo(String id){
		return session.selectOne("product.selectUserInfo", id);
	}
	
	/**
	 * 상품 정보 출력
	 * */
	public List<CartVO> selectProductInfo(String id) {
		return session.selectList("product.selectProductInfo", id);
	}
	
	/**
	 * 상품 결제 총 금액
	 * */
	public int sumOrder(String id) {
		return session.selectOne("product.sumOrder", id);
	}
	
	/**
	 * 결제 상품 총 갯수 
	 * */
	public int sumAmount(String id) {
		return session.selectOne("product.sumAmount", id);
	}
	
	/**
	 * 상품 주문 
	 * */
	public int insertOrder(OrderVO vo) {
		return session.insert("order.insertOrder", vo);
	}
	
	/**
	 * 상품 상세 주문
	 * */
	public int insertOrderDetail(OrderDetailVO vo) {
		return session.insert("order.insertOrderDetail", vo);
	}
	
	/**
	 * 사용자 주문 내역 
	 * */
	public List<OrderVO> selectOrderList(String mId){
		return session.selectList("order.selectOrderList", mId);
	}
	
	/**
	 * 사용자 주문 내역 디테일 뷰
	 * */
	public List<OrderVO> selectOrderDetailView(String oCode){
		return session.selectList("order.selectOrderDetailView", oCode);
	}
	
	/**
	 * 받는사람 정보 출력
	 * */
	public OrderVO selectRecevieInfo(String oCode) {
		return session.selectOne("order.selectRecevieInfo", oCode);
	}
	
	/**
	 * 관리자 주문 내역 조회
	 * */
	public List<OrderVO> selectAdminOrderList(HashMap<String, Object> hashmap){
		return session.selectList("order.selectAdminOrderList", hashmap);
	}
	
	/**
	 * 관리자 주문 상세 보기
	 * */
	public List<OrderVO> selectAdminOrderDetail(String oCode){
		return session.selectList("order.selectAdminOrderDetail", oCode);
	}
	
	/**
	 * 관리자 주문자 상세 보기 
	 * */
	public OrderVO selectAdminRecevieInfo(String oCode) {
		return session.selectOne("order.selectAdminRecevieInfo", oCode);
	}
	
	/**
	 * 사용자 주문 후 장바구니 삭제
	 * */
	public int deleteOrderAfterCart(int cNo) {
		return session.delete("order.deleteOrderAfterCart", cNo);
	}
	
	
	/**
	 * 주문 상태 selectbox 출력
	 * */
	public List<OrderVO> selectStatus() {
		return session.selectList("order.selectStatus");
	}
	
	/**
	 * 유저 포인트 적립
	 * */
	public int updatePoint(OrderVO vo) {
		return session.update("order.updatePoint", vo);
	}
	
	/**
	 * 관리자 주문 건수 페이징용
	 * */
	public int selectAdminOrderCount() {
		return session.selectOne("order.selectAdminOrderCount");
	}
	
	/**
	 * 주문 상태 변경
	 * */
	public int updateOrderStatus(OrderVO vo) {
		return session.update("order.updateOrderStatus", vo);
	}
	
	/**
	 * 주문 상태 변경 시 시간 업데이트
	 * */
	public int updateDeliveryDate(String oCode) {
		return session.update("order.updateDeliveryDate", oCode);
	}
	
	/**
	 * 주문 후 금액 포인트 적립
	 * */
	public int updateAddOrder(OrderVO vo) {
		return session.update("order.updateAddOrder", vo);
	}
	
	/**
	 * 관리자 페이지에서 주문 내역 검색 
	 * */
	public List<OrderVO> selectAdminOrderSearch(HashMap<String, Object> hashmap){
		return session.selectList("order.selectAdminOrderSearch", hashmap);
	}
	
	/**
	 * 관리자 주문 검색 갯수 카운트
	 * */
	public int selectAdminOrderSearchCount(OrderSVO svo) {
		return session.selectOne("order.selectAdminOrderSearchCount", svo);
	}
}
