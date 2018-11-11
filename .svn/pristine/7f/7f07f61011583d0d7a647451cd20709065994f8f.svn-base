package com.lsm.web.moosinsa.product;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ProductDAO {

	@Autowired
	SqlSession session;
	
	/**
	 * 상품 등록
	 * */
	public int insertProduct(ProductVO vo) {
		return session.insert("product.insertProduct", vo);
	}
	
	/**
	 * 상품 목록 조회 
	 * */
	public List<ProductVO> selectProductList(){
		return session.selectList("product.selectProductList");
	}
	
	
	/**
	 * 상품 삭제
	 * */
	public int deleteProduct(ProductVO vo) {
		return session.delete("product.deleteProduct", vo);
	}
	
	/**
	 * 상품 조회(수정 버튼 눌렀을 때 )
	 * */
	public ProductVO selectProduct(ProductVO vo) {
		return session.selectOne("product.selectProduct", vo);
	}
	
	
	/**
	 * 상품 수정
	 * */
	public int updateProduct(ProductVO vo) {
		return session.update("product.updateProduct", vo);
	}
	
	/**
	 * 유저사이트 상품별 뿌리기
	 * */
	public List<ProductVO> selectTypeProduct(HashMap<String , Object> haspmap){
		return session.selectList("product.selectTypeProduct", haspmap);
	}
	
	/**
	 * 유저사이트 상품 디테일 뷰
	 * */
	public ProductVO selectProductDetailView(ProductVO vo) {
		return session.selectOne("product.selectProductDetailView", vo);
	}
	
	/**
	 * 유저사이트 상품 검색
	 * */
	public List<ProductVO> selectSearchProduct(HashMap<String, Object> hashmap){
		return session.selectList("product.selectSearchProduct", hashmap);
	}
	
	/**
	 * 유저 사이트 상품 갯수 카운트 (검색 결과용)
	 * *
	 */
	public int countProduct(ProductSVO svo) {
		return session.selectOne("product.countProduct", svo);
	}
	
	/**
	 * 유저 사이트 상품 디테일에서 결제 시 상품 정보 출력 
	 * */
	public ProductVO selectPayOneProductInfo(int pNo) {
		return session.selectOne("order.selectPayOneProductInfo", pNo);
	}
}
