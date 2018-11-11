package com.lsm.web.moosinsa.product;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ProductService {

	@Autowired
	ProductDAO dao;
	
	/**
	 * 상품 등록
	 * */
	public int insertProduct(ProductVO vo) {
		return dao.insertProduct(vo);
	}
	
	/**
	 * 상품 뿌리기
	 * */
	public List<ProductVO> selectProductList(){
		return dao.selectProductList();
	}
	
	/**
	 * 상품 삭제
	 * */
	public int deleteProduct(ProductVO vo) {
		return dao.deleteProduct(vo);
	}
	
	/**
	 * 상품 상세조회 수정 버틀 눌렀을 때
	 * */
	public ProductVO selectProduct(ProductVO vo) {
		return dao.selectProduct(vo);
	}
	
	/**
	 * 상품 수정
	 * */
	public int updateProduct(ProductVO vo) {
		return dao.updateProduct(vo);
	}
	
	/**
	 * 상품 자세히 보기
	 * */
	public ProductVO selectProductDetailView(ProductVO vo) {
		return dao.selectProductDetailView(vo);
	}
	
	/**
	 * 유저 상품 뿌리기 
	 * */
	public List<ProductVO> selectTypeProduct(HashMap<String , Object> hashmap){
		return dao.selectTypeProduct(hashmap);
	}
	
	/**
	 * 유저 상품 검색
	 * */
	public List<ProductVO> selectSearchProduct(HashMap<String, Object> hashmap){
		return dao.selectSearchProduct(hashmap);
	}
	
	/**
	 * 유저 사이트 상품 갯수 
	 * *
	 */
	public int countProduct(ProductSVO svo) {
		return dao.countProduct(svo);
	}
	
	/**
	 * 유저 사이트 상품 디테일에서 결제 시 상품 정보 출력 
	 * */
	public ProductVO selectPayOneProductInfo(int pNo) {
		return dao.selectPayOneProductInfo(pNo);
	}
}
