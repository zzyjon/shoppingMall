package com.lsm.web.brand;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BrandDAO {

	@Autowired
	SqlSession sqlSession;
	
	/**
	 * 브랜드 목록 조회
	 * */
	public List<BrandVO> selectBrand(){
		return sqlSession.selectList("brand.selectBrand");
	}
	
	/**
	 * 브랜드 갯수 카운트
	 * */
	public int countBrand() {
		return sqlSession.selectOne("brand.countBrand");
	}
	
	/**
	 * 브랜드 추가
	 * */
	public int insertBrand(BrandVO vo) {
		return sqlSession.insert("brand.insertBrand", vo);
	}
	
	/**
	 * 브랜드 수정
	 * */
	public int updateBrand(BrandVO vo) {
		return sqlSession.update("brand.updateBrand", vo);
	}
	
	/**
	 * 브랜드 삭제
	 * */
	public int deleteBrand(BrandVO vo) {
		return sqlSession.update("brand.deleteBrand", vo);
	}
}
