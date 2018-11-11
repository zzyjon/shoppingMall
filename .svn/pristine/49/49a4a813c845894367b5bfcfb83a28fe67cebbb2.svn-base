package com.lsm.web.cart;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CartService {

	@Autowired
	CartDAO dao;
	
	/**
	 * 상품 장바구니 추가
	 * */
	public int insertCart(CartVO vo) {
		return dao.insertCart(vo);
	}
	
	/**
	 * 상품 장바구니 중복 확인
	 * */
	public int selectCartCheck(CartVO vo) {
		return dao.selectCartCheck(vo);
	}
	
	/**
	 * 상품 장바구니 합계
	 * */
	public int sumCart(String mId) {
		return dao.sumCart(mId);
	}
	
	/**
	 * 상품 장바구니 조회
	 * */
	public List<CartVO> selectCartList(String mId){
		return dao.selectCartList(mId);
	}
	
	/**
	 * 유저 사이트 장바구니 상품 갯수 수정
	 * */
	public int updateCartAmount(CartVO vo) {
		return dao.updateCartAmount(vo);
	}
	
	/**
	 * 유저 사이트 장바구니 삭제
	 * */
	public int deleteCart(int cNo) {
		return dao.deleteCart(cNo);
	}
}
