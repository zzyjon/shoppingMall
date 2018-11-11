package com.lsm.web.moosinsa.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jmx.export.assembler.MethodExclusionMBeanInfoAssembler;
import org.springframework.stereotype.Service;

@Service
public class MemberService {
	@Autowired
	MemberDAO dao;

	// 회원 전체 리스트
	public List<MemberVO> selectMemberList(MemberSVO svo) {
		return dao.selectMembersList(svo);
	}

	// 회원 로그인날짜 업데이트
	public int updateLoginDate(MemberVO vo) {
		return dao.updateLoginDate(vo);
	}

	// 회원 방문날짜 업데이트
	public int updateVistCount(MemberVO vo) {
		return dao.updateVistCount(vo);
	}

	// 해당회원 삭제기능

	public int SelectMemberDelete(MemberVO vo) {
		return dao.selectMemberDelete(vo);
	}
	// 해당등급 삭제

	public int selectGradeDelete(MemberVO vo) {
		return dao.selectGradeDelete(vo);
	}

	// 관리자 회원 전체 등급조회
	public List<MemberVO> selectMemberGradeList() {
		return dao.selectMemberGradeList();
	}

	// 회원 등급 추가
	public int selectGradeInsert(MemberVO vo) {
		return dao.selectGradeInsert(vo);
	}

	// 회원 등급 수정
	public int updateMemberGrade(MemberVO vo) {
		return dao.updateMemberGrade(vo);
	}

	// 회원 가입
	public int insertMemberRegist(MemberVO vo) {
		return dao.insertMemberRegist(vo);
	}

	// 회원가입 중복체크
	public int selectIdNickCheck(MemberVO vo) {
		return dao.selectIdNickCheck(vo);
	}

	// 로그인세션 정보 가져올떄
	public MemberVO selectSessionLogin(MemberVO vo) {
		return dao.selectSessionLogin(vo);
	}

	// 아이디 패스워드 찾기
	public List<MemberVO> selectSearchUserInfo(MemberVO vo) {
		return dao.selectSearchUserInfo(vo);
	}

	// 회원정보 수정 보기(유저)
	public MemberVO selectMemberView(String mId) {
		return dao.selectMemberView(mId);
	}

	// 회원정보수정 처리(유저)
	public int updateMemberModify(MemberVO vo) {
		return dao.updateMemberModify(vo);
	}

	// 아이디찾기후 비밀번호 변경
	public int updatemPw(MemberVO vo) {
		return dao.updatemPw(vo);
	}

	// 내정보 등급보기
	public List<MemberVO> selectGradeView() {
		return dao.selectGradeView();
	}

	// 내정보 등급보기 detail
	public MemberVO selectGradeViewDetail(String mId) {
		return dao.selectGradeViewDetail(mId);
	}

	// 내정보 회원탈퇴
	public int deleteMemberOutSelf(MemberVO vo) {
		return dao.deleteMemberOutSelf(vo);
	}

	// 탈퇴 가능여부 체크
	public MemberVO selectOutCheck(MemberVO vo) {
		return dao.selectOutCheck(vo);
	}

	// 탈퇴회원 추가
	public int insertMemberOut(MemberVO vo) {
		return dao.insertMemberOut(vo);
	}

	// 추방회원 추가
	public int insertMemberBann(MemberVO vo) {
		return dao.insertMemberBann(vo);

	}

	// 관리자권한 회원수정
	public int updateAdminMemberModify(MemberVO vo) {
		return dao.updateAdminMemberModify(vo);
	}

	// 탈퇴처리된 회원보기
	public List<MemberVO> selectMemberOutView() {
		return dao.selectMemberOutView();
	}

	// 관리자 회원수정보기(모달)
	public MemberVO selectGradeViewModal(MemberVO vo) {
		return dao.selectGradeViewModal(vo);
	}

	// 통계 어제
	public List<MemberVO> selectOnedayAgo() {
		return dao.selectOnedayAgo();
	}

	// 통계 엇그제
	public List<MemberVO> selectTwodayAgo() {
		return dao.selectTwodayAgo();
	}

	// 통계 오늘
	public List<MemberVO> selectToday() {
		return dao.selectToday();
	}

	// 통계 이번주
	public List<MemberVO> selectWeek() {
		return dao.selectWeek();
	}

	// 통계 이번달
	public List<MemberVO> selectMonth() {
		return dao.selectMonth();
	}
	
	//통계 어제오늘날짜
	public List<MemberVO> selectDays(){
		return dao.selectDays();
				
	}

}
