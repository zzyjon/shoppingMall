package com.lsm.web.board;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lsm.web.common.TimeMaximum;

@Service
public class ReviewService {

	@Autowired
	ReviewDAO dao;
	
	/**
	 * 상품 리뷰글 작성
	 * */
	public int insertReviewBoard(ReviewVO vo) {
		return dao.insertReviewBoard(vo);
	}
	
	/**
	 * 상품 리뷰 전체 뿌리기
	 * */
	public List<ReviewVO> selectReviewList(HashMap<String, Object> hashmap){
		
		return dao.selectReviewList(hashmap);
	}
	
	/**
	 * 상품별 리뷰 뿌리기
	 * */
	public List<ReviewVO> selectProductReview(int pNo){
		return dao.selectProductReview(pNo);
	}
	/**
	 * 상품별 리뷰 갯수
	 * */
	public int countProductReview(int pNo) {
		return dao.countProductReview(pNo);
	}
	
	/**
	 * 전체 리뷰 갯수 페이징용
	 * */
	public int countAllReview() {
		return dao.countAllReview();
	}
	
	/**
	 * 리뷰 디테일 뷰
	 * */
	public ReviewVO reviewDetailview(int rNo) {
		return dao.reviewDetailview(rNo);
	}
	
	/**
	 * 리뷰 글 조회수 증가
	 * */
	public int increaseViewCount(int rNo) {
		return dao.increaseViewCount(rNo);
	}
	
	/**
	 * 리뷰 수정
	 * */
	public int updateReview(ReviewVO vo) {
		return dao.updateReview(vo);
	}
	
	/**
	 * 글 작성 ID와 현재 세션 ID 비교
	 * */
	public String selectCheckWriter(int rNo) {
		return dao.selectCheckWriter(rNo);
	}
	
	/**
	 * 리뷰 삭제 
	 * */
	public int deleteReview(int rNo) {
		return dao.deleteReview(rNo);
	}
	
	/**
	 * 리뷰 댓글 쓰기
	 * */
	public int insertComment(ReviewCommentVO vo) {
		return dao.insertComment(vo);
	}
	
	/**
	 * 리뷰 댓글 목록 출력
	 * */
	public List<ReviewCommentVO> selectCommentList(int rNo){
		
		
		return dao.selectCommentList(rNo);
	}
	
	/**
	 * 리뷰 댓글 수정
	 * */
	public int updateComment(ReviewCommentVO vo) {
		return dao.updateComment(vo);
	}
	
	/**
	 * 리뷰 댓글 삭제
	 * */
	public int deleteComment(int rbcNo) {
		return dao.deleteComment(rbcNo);
	}
	
	/**
	 * 리뷰 댓글 갯수 카운트
	 * */
	public int selectCountComment(int rNo) {
		return dao.selectCountComment(rNo);
	}
	
	/**
	 * 리뷰 검색 
	 * */
	public List<ReviewVO> selectReviewSearch(HashMap<String, Object> hashmap){
		return dao.selectReviewSearch(hashmap);
	}
	
	/**
	 * 리뷰 검색 결과 갯수 
	 * */
	public int countSearchReview(ReviewSVO vo) {
		return dao.countSearchReview(vo);
	}
}
