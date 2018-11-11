package com.lsm.web.moosinsa.member;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDAO {

	@Autowired
	SqlSession sqlSession;

	// 회원 전체 조회 & 검색
	public List<MemberVO> selectMembersList(MemberSVO svo) {
		System.out.println("dao - " + svo.getGender());
		return sqlSession.selectList("moosinsa_members.selectMemberList", svo);
	}

	// 해당회원삭제기능
	public int selectMemberDelete(MemberVO vo) {
		return sqlSession.delete("moosinsa_members.selectMemberDelete", vo);

	}

	// 해당등급 삭제
	public int selectGradeDelete(MemberVO vo) {
		return sqlSession.delete("moosinsa_members.selectGradeDelete", vo);

	}

	// 회원 전체 등급 조회

	public List<MemberVO> selectMemberGradeList() {
		return sqlSession.selectList("moosinsa_members.selectMemberGradeList");

	}

	// 회원 등급 추가
	public int selectGradeInsert(MemberVO vo) {
		return sqlSession.insert("moosinsa_members.selectGradeInsert", vo);
	}

	// 회원 등급 수정
	public int updateMemberGrade(MemberVO vo) {
		return sqlSession.update("moosinsa_members.updateMemberGrade", vo);
	}

	// 회원 가입
	public int insertMemberRegist(MemberVO vo) {
		return sqlSession.insert("moosinsa_members.insertMemberRegist", vo);
	}

	// 회원가입 중복체크
	public int selectIdNickCheck(MemberVO vo) {
		return sqlSession.selectOne("moosinsa_members.selectIdNickCheck", vo);
	}

	// 세션로그인정보 가져오기
	public MemberVO selectSessionLogin(MemberVO vo) {
		return sqlSession.selectOne("moosinsa_members.selectSessionLogin", vo);
	}

	// 로그인시 방문횟수 업데이트
	public int updateVistCount(MemberVO vo) {
		return sqlSession.update("moosinsa_members.updateVistCount", vo);
	}

	// 최종로그인날짜 업데이트

	public int updateLoginDate(MemberVO vo) {
		return sqlSession.update("moosinsa_members.updateLoginDate", vo);
	}

	// 아이디 & 패스워드 찾기
	public List<MemberVO> selectSearchUserInfo(MemberVO vo) {
		return sqlSession.selectList("moosinsa_members.selectSearchUserInfo", vo);
	}

	// 회원정보 보기(유저)
	public MemberVO selectMemberView(String mId) {
		return sqlSession.selectOne("moosinsa_members.selectMemberView", mId);
	}

	// 회원정보 수정 처리(유저)
	public int updateMemberModify(MemberVO vo) {
		return sqlSession.update("moosinsa_members.updateMemberModify", vo);
	}

	// 아이디 찾기후 비밀번호 변경
	public int updatemPw(MemberVO vo) {
		return sqlSession.update("moosinsa_members.updatemPw", vo);
	}

	// 내정보 등급보기
	public List<MemberVO> selectGradeView() {
		return sqlSession.selectList("moosinsa_members.selectGradeView");
	}

	// 관리자 등급 수정보기(모달)
	public MemberVO selectGradeViewModal(MemberVO vo) {
		return sqlSession.selectOne("moosinsa_members.selectGradeViewModal", vo);
	}

	// 내정보 등급보기 detail
	public MemberVO selectGradeViewDetail(String mId) {
		return sqlSession.selectOne("moosinsa_members.selectGradeViewDetail", mId);
	}

	// 회원탈퇴
	public int deleteMemberOutSelf(MemberVO vo) {
		return sqlSession.delete("moosinsa_members.deleteMemberOutSelf", vo);
	}

	// 탈퇴가능여부 체크
	public MemberVO selectOutCheck(MemberVO vo) {
		return sqlSession.selectOne("moosinsa_members.selectOutCheck", vo);
	}

	// 탈퇴회원추가
	public int insertMemberOut(MemberVO vo) {
		return sqlSession.insert("moosinsa_members.insertMemberOut", vo);
	}

	// 추방회원추가
	public int insertMemberBann(MemberVO vo) {
		return sqlSession.insert("moosinsa_members.insertMemberBann", vo);
	}

	// 관리자권한 회원수정
	public int updateAdminMemberModify(MemberVO vo) {
		return sqlSession.update("moosinsa_members.updateAdminMemberModify", vo);
	}

	// 탈퇴된회원 보기
	public List<MemberVO> selectMemberOutView() {
		return sqlSession.selectList("moosinsa_members.selectMemberOutView");
	}

	// 통계 어제
	public List<MemberVO> selectOnedayAgo() {
		return sqlSession.selectList("moosinsa_members.selectOnedayAgo");
	}

	// 통계 엇그제
	public List<MemberVO> selectTwodayAgo() {
		return sqlSession.selectList("moosinsa_members.selectTwodayAgo");
	}

	// 통계 오늘
	public List<MemberVO> selectToday() {
		return sqlSession.selectList("moosinsa_members.selectToday");
	}

	// 통계 이번주
	public List<MemberVO> selectWeek() {
		return sqlSession.selectList("moosinsa_members.selectWeek");
	}

	// 통계 이번달
	public List<MemberVO> selectMonth() {
		return sqlSession.selectList("moosinsa_members.selectMonth");
	}
	
	// 통계 어제,오늘날짜
	public List<MemberVO> selectDays(){
		return sqlSession.selectList("moosinsa_members.selectDays");
	}
}
