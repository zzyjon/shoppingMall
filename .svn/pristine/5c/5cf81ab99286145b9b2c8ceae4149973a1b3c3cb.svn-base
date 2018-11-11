package com.lsm.web.board;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ReviewDAO {

	@Autowired
	SqlSession session;
	
	/**
	 * 상품 리뷰글 작성
	 * */
	public int insertReviewBoard(ReviewVO vo) {
		return session.insert("board.insertReviewBoard", vo);
	}
	
	/**
	 * 상품 리뷰 전체 뿌리기
	 * */
	public List<ReviewVO> selectReviewList(HashMap<String, Object> hashmap){
		return session.selectList("board.selectReviewList", hashmap);
	}
	
	/**
	 * 상품별 리뷰 뿌리기
	 * */
	public List<ReviewVO> selectProductReview(int pNo){
		return session.selectList("board.selectProductReview", pNo);
	}
	
	/**
	 * 상품별 리뷰 갯수
	 * */
	public int countProductReview(int pNo) {
		return session.selectOne("board.countProductReview", pNo);
	}
	
	/**
	 * 전체 리뷰 갯수 페이징용
	 * */
	public int countAllReview() {
		return session.selectOne("board.countAllReview");
	}
	
	/**
	 * 리뷰 디테일 뷰
	 * */
	public ReviewVO reviewDetailview(int rNo) {
		return session.selectOne("board.reviewDetailview", rNo);
	}
	
	/**
	 * 리뷰 글 조회수 증가
	 * */
	public int increaseViewCount(int rNo) {
		return session.update("board.increaseViewCount", rNo);
	}
	
	/**
	 * 리뷰 수정
	 * */
	public int updateReview(ReviewVO vo) {
		return session.update("board.updateReview", vo);
	}
	
	/**
	 * 글 작성 ID와 현재 세션 ID 비교
	 * */
	public String selectCheckWriter(int rNo) {
		return session.selectOne("board.selectCheckWriter", rNo);
	}
	
	/**
	 * 리뷰 삭제 
	 * */
	public int deleteReview(int rNo) {
		return session.delete("board.deleteReview", rNo);
	}
	
	/**
	 * 리뷰 댓글 쓰기
	 * */
	public int insertComment(ReviewCommentVO vo) {
		return session.insert("board.insertComment", vo);
	}
	
	/**
	 * 리뷰 댓글 목록 출력
	 * */
	public List<ReviewCommentVO> selectCommentList(int rNo){
		return session.selectList("board.selectCommentList", rNo);
	}
	
	/**
	 * 리뷰 댓글 수정
	 * */
	public int updateComment(ReviewCommentVO vo) {
		return session.update("board.updateComment", vo);
	}
	
	/**
	 * 리뷰 댓글 삭제
	 * */
	public int deleteComment(int rbcNo) {
		return session.delete("board.deleteComment", rbcNo);
	}
	
	/**
	 * 리뷰 댓글 갯수 카운트
	 * */
	public int selectCountComment(int rNo) {
		return session.selectOne("board.selectCountComment", rNo);
	}
	
	/**
	 * 리뷰 검색 
	 * */
	public List<ReviewVO> selectReviewSearch(HashMap<String, Object> hashmap){
		return session.selectList("board.selectReviewSearch", hashmap);
	}
	
	/**
	 * 리뷰 검색 결과 갯수 
	 * */
	public int countSearchReview(ReviewSVO vo) {
		return session.selectOne("board.countSearchReview", vo);
	}
	
}
