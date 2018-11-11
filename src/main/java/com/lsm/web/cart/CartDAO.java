package com.lsm.web.cart;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.lsm.web.cart.CartVO;

@Repository
public class CartDAO {

	@Autowired
	SqlSession session;
	
	/**
	 * 상품 장바구니 추가
	 * */
	public int insertCart(CartVO vo) {
		return session.insert("product.insertCart", vo);
	}
	
	/**
	 * 상품 장바구니 중복 확인
	 * */
	public int selectCartCheck(CartVO vo) {
		return session.selectOne("product.selectCartCheck", vo);
	}
	
	/**
	 * 상품 장바구니 합계
	 * */
	public int sumCart(String mId) {
		return session.selectOne("product.sumCart", mId);
	}
	
	/**
	 * 상품 장바구니 조회
	 * */
	public List<CartVO> selectCartList(String mId){
		return session.selectList("product.selectCartList", mId);
	}
	
	/**
	 * 유저 사이트 장바구니 상품 갯수 수정
	 * */
	public int updateCartAmount(CartVO vo) {
		return session.update("product.updateCartAmount", vo);
	}
	
	/**
	 * 유저 사이트 장바구니 삭제
	 * */
	public int deleteCart(int cNo) {
		return session.delete("product.deleteCart", cNo);
	}
}
