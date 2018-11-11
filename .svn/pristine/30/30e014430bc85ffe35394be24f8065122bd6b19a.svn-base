package com.lsm.web.moosinsa.member;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MemberController {

	@Autowired
	MemberService service;

	// 파라미터값을 파싱해주는 어노테이션
	/*
	 * @InitBinder public void initBinder(WebDataBinder wdb) {
	 * wdb.registerCustomEditor(int.class, new CustomNumberEditor(Integer.class,
	 * true));
	 * 
	 * }
	 */
	/**
	 * 관리자 차트 페이지
	 * */
	@GetMapping("/admin/page/chart")
	public String pageChart(Model model) {
		List<MemberVO> oneday = service.selectOnedayAgo();
		List<MemberVO> twoday = service.selectTwodayAgo();
		List<MemberVO> today = service.selectToday();
		List<MemberVO> week = service.selectWeek();
		List<MemberVO> month = service.selectMonth();
		System.out.println(today.size());
		model.addAttribute("oneday",oneday);
		model.addAttribute("twoday",twoday);
		model.addAttribute("today",today);
		model.addAttribute("week",week);
		model.addAttribute("month",month);
		
		
		return "admin/page/chart/sales_chart";
	}

	// 관리자 탈퇴처리 회원 보기
	@GetMapping("/admin/page/member/memberOutList")
	public String selectMemberOutView(Model model) {
		List<MemberVO> list = service.selectMemberOutView();
		model.addAttribute("mo", list);
		return "admin/page/member/memberOutList";
	}

	// 회원 조회&검색기능
	@GetMapping("/admin/page/member/memberList1")
	public String memberList(Model model, @ModelAttribute("svo") MemberSVO svo, BindingResult result) {
		// System.out.println("gender ==" + svo.getGender());
		List<MemberVO> list = service.selectMemberList(svo);
		model.addAttribute("list", list);

		return "admin/page/member/memberList1";

	}

	// 회원수정 뷰(모달)
	@GetMapping("/admin/page/member/memberModifyModal")
	public ModelAndView ModfiyModal(@ModelAttribute MemberVO mvo) {
		ModelAndView mav = new ModelAndView("jsonView");
		MemberVO vo = service.selectMemberView(mvo.getmId());
		mav.addObject("memberModal", vo);

		return mav;
	}

	// 임시
	@GetMapping("/user/page/member/templete")
	public String regsuc() {
		return "user/page/member/templete";
	}

	// 회원추방기능
	@PostMapping("/admin/page/member/memberDel")
	public ModelAndView memberDel(@ModelAttribute MemberVO vo) {
		ModelAndView mav = new ModelAndView("jsonView");
		service.insertMemberBann(vo); // 추방회원 추가
		int result = service.SelectMemberDelete(vo);
		if (result > 0) {
			mav.addObject("result", "100");
			mav.addObject("desc", "delete Succerss");
		} else {
			mav.addObject("result", "101");
			mav.addObject("desc", "delete fail");

		}

		return mav;
	}

	// 등급삭제기능
	@PostMapping("/admin/page/member/gradeDel")
	public String gradeDel(@ModelAttribute MemberVO vo) {
		service.selectGradeDelete(vo);
		return "admin/page/member/memberGradeList";
	}

	// 멤버 등급 조회
	@GetMapping("/admin/page/member/memberGradeList")
	public String memberGradeList(Model model) {
		List<MemberVO> list = service.selectMemberGradeList();
		model.addAttribute("list", list);
		return "admin/page/member/memberGradeList";
	}
	// 관리자 회원등급 수정뷰(모달)
	@GetMapping("/admin/page/member/gradeModifyModal")
	public ModelAndView gradeModfiyModal(@ModelAttribute MemberVO mvo) {
		ModelAndView mav = new ModelAndView("jsonView");
		MemberVO vo = service.selectGradeViewModal(mvo);
		mav.addObject("gradeModal", vo);

		return mav;
	}
	// 관리자 등급 수정
	@PostMapping("/admin/page/member/gradeChange")
	public ModelAndView gradeModify(@ModelAttribute MemberVO mvo) {
		ModelAndView mav = new ModelAndView("jsonView");
		int result = service.updateMemberGrade(mvo);
		System.out.println("sdadad:"+ mvo.getgNo());
		System.out.println(result);
		if(result>0) {
			mav.addObject("result", "300");
			mav.addObject("desc", "update Succerss");
			
		}else {
			mav.addObject("result", "301");
			mav.addObject("desc", "update fail");
		}
		
		return mav;
		
	}

	// 등급 추가 기능
	@PostMapping("/admin/page/member/gradeInsert")
	public ModelAndView memberGradeInsert(@ModelAttribute MemberVO vo, BindingResult result1) {
		ModelAndView mav = new ModelAndView("jsonView");
		int result = service.selectGradeInsert(vo);
		if (result > 0) {
			mav.addObject("result", "200");
			mav.addObject("desc", "insert Succerss");
		} else {
			mav.addObject("result", "100");
			mav.addObject("desc", "insert fail");
		}

		return mav;
	}

	@GetMapping("/user/page/member/memberRegistView")
	// 회원가입페이지
	public String memberRegisterView() {
		return "user/page/member/memberRegist";
	}

	// 회원 가입 처리
	@PostMapping("/user/page/member/memberRegist")
	public String memberRegister(@ModelAttribute MemberVO vo) {
		service.insertMemberRegist(vo);

		return "user/index";
	}
	// 회원가입 중복체크

	@PostMapping("/user/page/member/memberIdCheck")
	public ModelAndView memberIdCheck(@ModelAttribute MemberVO vo) {
		ModelAndView mav = new ModelAndView("jsonView");
		int result = service.selectIdNickCheck(vo);
		System.out.println(vo.getmId());
		if (result > 0) {
			mav.addObject("result", "200");
			mav.addObject("desc", "insert success");
		} else {
			mav.addObject("result", "201");
			mav.addObject("desc", "insert success");
		}
		return mav;
	}

	// 로그인 페이지
	@GetMapping("/user/page/member/loginMain")
	public String loginView() {
		return "user/page/member/loginMain";
	}

	// 로그인
	@PostMapping("/member/procLogin")
	public ModelAndView procLogin(Model model, @ModelAttribute MemberVO paramVO, HttpSession session) {
		ModelAndView mav = new ModelAndView("jsonView");
		MemberVO vo = service.selectSessionLogin(paramVO);
		if (vo != null) {
			service.updateLoginDate(paramVO); // 로그인날짜 업데이트
			service.updateVistCount(paramVO); // 로그인방문횟수 업데이트
			session.setAttribute("member", vo);
			mav.addObject("result", "200");
			mav.addObject("desc", "login success");

		} else {
			mav.addObject("result", "101");
			mav.addObject("desc", "login fail");

		}
		return mav;
	}

	// 로그아웃 처리
	@RequestMapping("/member/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/user/index";
	}

	// 아이디/패스워드 찾기
	@GetMapping("/user/page/member/searchUserInfo")
	public String searchForm() {
		return "user/page/member/searchUserInfo";
	}

	// 아이디 검색처리
	@PostMapping("/user/page/member/memberIdSearchCheck")
	public String searchId(Model model, @ModelAttribute MemberVO vo) {
		List<MemberVO> list = service.selectSearchUserInfo(vo);

		model.addAttribute("list", list);
		model.addAttribute("mName", vo.getmName());

		return "user/page/member/memberIdSearchResult";
	}

	// 비밀번호 검색처리
	@PostMapping("/user/page/member/memberPwSearchCheck")
	public String searchPw(Model model, @ModelAttribute MemberVO vo) {
		List<MemberVO> list = service.selectSearchUserInfo(vo);
		if (list.size() > 0) {
			// System.out.println("비번 사이즈 " + list.size());
			model.addAttribute("list", list);
			model.addAttribute("mId", vo.getmId());
			return "user/page/member/memberPwSearchResult";

		} else {
			return "user/page/member/memberPwSearchResultX";
		}

	}

	// 아이디 찾기후 비밀번호 변경 처리
	@PostMapping("/user/page/member/updatemPw")
	public ModelAndView updatemPw(@ModelAttribute MemberVO vo) {
		ModelAndView mav = new ModelAndView("jsonView");
		int result = service.updatemPw(vo);
		if (result > 0) {
			mav.addObject("result", "300");
			mav.addObject("desc", "update success");
		} else {
			mav.addObject("result", "301");
			mav.addObject("desc", "update fail");
		}

		return mav;
	}

	// 내정보 회원정보보기(메인)
	@GetMapping("/user/page/member/myInfo_main")
	public String info_main(Model model, HttpSession session) {
		MemberVO mvo = (MemberVO) session.getAttribute("member");
		MemberVO vo = service.selectMemberView(mvo.getmId());
		System.out.println(mvo.getmId());
		model.addAttribute("memberList", vo);
		return "user/page/member/myInfo_main";
	}

	// 내정보 회원등급
	@GetMapping("/user/page/member/myInfo_grade")
	public String info_grade(Model model, HttpSession session) {
		// MemberVO mvo = (MemberVO)session.getAttribute("member");
		// System.out.println(mvo.getmId());
		MemberVO mvo = (MemberVO) session.getAttribute("member");
		MemberVO vo = service.selectGradeViewDetail(mvo.getmId());
		List<MemberVO> list = service.selectGradeView();

		model.addAttribute("grade", list);
		model.addAttribute("gradeDetail", vo);

		return "user/page/member/myInfo_grade";
	}

	// 내정보 회원정보 수정 처리
	@PostMapping("/user/page/member/myInfo_modify")
	public ModelAndView infoModify(@ModelAttribute MemberVO vo) {
		ModelAndView mav = new ModelAndView("jsonView");
		MemberVO mvo = service.selectSessionLogin(vo);
		if (mvo != null) {

			int result = service.updateMemberModify(vo);

			if (result > 0) {
				mav.addObject("result", "300");
				mav.addObject("desc", "update success");
			} else {
				mav.addObject("result", "301");
				mav.addObject("desc", "update fail");
			}
		} else {
			mav.addObject("result", "201");
			mav.addObject("desc", "update fail");

		}

		return mav;
	}

	// 관리자 회원정보 수정 처리
	@PostMapping("/admin/page/member/myInfo_modify")
	public ModelAndView infoAdminModify(@ModelAttribute MemberVO vo) {
		ModelAndView mav = new ModelAndView("jsonView");
		int result = service.updateAdminMemberModify(vo);

		if (result > 0) {
			mav.addObject("result", "300");
			mav.addObject("desc", "update success");
		} else {
			mav.addObject("result", "301");
			mav.addObject("desc", "update fail");
		}

		return mav;
	}

	// 내정보 회원탈퇴
	@GetMapping("/user/page/member/myInfo_memberOut")
	public String outView(HttpSession session) {
		return "user/page/member/myInfo_memberOut";
	}

	// 내정보 회원탈퇴 처리
	@PostMapping("/user/page/member/procMemberOut")
	public ModelAndView procMemberOut(@ModelAttribute MemberVO vo, HttpSession session) {
		ModelAndView mav = new ModelAndView("jsonView");
		MemberVO mvo = service.selectOutCheck(vo);// 탈퇴가능여부 체크

		if (mvo != null) {

			service.insertMemberOut(vo); // 탈퇴회원 추가
			int deleteResult = service.deleteMemberOutSelf(vo); // 회원삭제

			if (deleteResult > 0) {
				mav.addObject("result", "400");
				mav.addObject("desc", "delete success");
				session.invalidate();
			} else {
				mav.addObject("result", "401");
				mav.addObject("desc", "update fail");
			}
		} else {
			mav.addObject("result", "402");
			mav.addObject("desc", "pasword not matched");
		}

		return mav;
	}

	/*
	 * 파일 업로드 시작 MultipartFile[] files = vo.getFile(); for(int i = 0; i <
	 * files.length; i++) {
	 * 
	 * if(files[i].isEmpty()) { // isEmpty 비어있으면 넘어감 continue; }
	 * 
	 * byte[] bytes;
	 * 
	 * try { bytes = files[i].getBytes(); Path path = Paths.get(
	 * "C:/Users/노형정/eclipse-workspace/spring_shoppingmall/src/main/resources/static/member/"
	 * + files[i].getOriginalFilename());
	 * 
	 * vo.setmImage(files[i].getOriginalFilename()); // 업로드한 파일 이름 셋팅
	 * 
	 * Files.write(path, bytes);
	 * 
	 * } catch (IOException e) { // TODO Auto-generated catch block
	 * e.printStackTrace(); } }
	 */

}
