package com.lsm.web.board;

import java.beans.PropertyEditorSupport;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.lsm.web.common.CommonCheck;
import com.lsm.web.common.Pagenation;
import com.lsm.web.moosinsa.member.MemberVO;

@Controller
public class ReviewController {

	@Autowired
	ReviewService reviewService;
	
	@InitBinder
	public void initBinder(WebDataBinder binder) throws Exception {
	    binder.registerCustomEditor(MultipartFile.class, new PropertyEditorSupport() {

	        @Override
	        public void setAsText(String text) {
	            setValue(null);
	        }
	    });
	}


	/**
	 * 후기 작성 페이지 가기
	 * */
	@CommonCheck(isLogin="User")
	@GetMapping("/user/page/board/writer")
	public String writer(@RequestParam(value="pNo") int pNo, Model model) {
		
		model.addAttribute("pNo", pNo);
		
		return "user/page/board/review-writer";
	}
	
	/**
	 * 후기 글 쓰기
	 * */
	@CommonCheck(isLogin="User")
	@RequestMapping("/user/page/board/write")
	@ResponseBody
	public String insertReviewBoard(@ModelAttribute ReviewVO vo, HttpSession session) throws Exception {
		
		String id = "";
		MemberVO memberVO = null;
		
		if((String)session.getAttribute("id") != null) {
			id = (String)session.getAttribute("id");
			String rWriter = (String)session.getAttribute("name");
			vo.setmId(id);
			vo.setrWriter(rWriter);
		}
		
		if(session.getAttribute("member") != null) {
			memberVO = (MemberVO) session.getAttribute("member");
			
			vo.setmId(memberVO.getmId());
			vo.setrWriter(memberVO.getmName());
		}
		
		/*
		System.out.println("pNo = "+paramVO.getpNo());
		System.out.println(paramVO.getmId());
		System.out.println(paramVO.getrWriter());
		System.out.println(paramVO.getrTitle());
		System.out.println(paramVO.getrContent());
		System.out.println(paramVO.getrAvgScore());
		*/
		
		JSONObject jo = new JSONObject(); // VO를 사용해서 파일 업로드 하려면 JSONObject 사용해야하고 @ResponseBody 어노테이션 설정해줘야함
		
		MultipartFile[] files = vo.getFile();
		System.out.println("file == "+ files);
		
		if( files != null) {
			/* 파일 업로드 시작 */
			//MultipartFile[] files = vo.getFile();
		
		
			for(int i = 0; i <  files.length; i++) {
				
				//System.out.println(files.length);
				
				if(files[i].isEmpty()) { // isEmpty 비어있으면 넘어감
					continue;
				}
				
				byte[] bytes;
				
				try {
					bytes = files[i].getBytes();
					Path path = Paths.get("D:/Java_tutorials/spring_shoppingmall/src/main/resources/static/review/" + files[i].getOriginalFilename());
					
					//C:/JSP/projects/spring_shoppingmall/src/main/resources/static/review/
					//D:/Java_tutorials/spring_shoppingmall/src/main/resources/static/review/
					
					vo.setrImg1(files[i].getOriginalFilename());  // 업로드한 파일 이름 셋팅
					
					Files.write(path, bytes);
									
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			/* 파일 업로드 끝 */
				
			}
		}
		
		int result = reviewService.insertReviewBoard(vo);
		
		if(result > 0) {
			jo.put("result", "success");
		}else {
			jo.put("result", "fail");
			
		}
		
		return jo.toString();
	}
	
	
	/**
	 * 후기 글 전체 보기 - review페이지
	 * */
	@RequestMapping("/user/page/board/review")
	public String selectReviewList(Model model, @RequestParam (value="currPage", defaultValue="1" ) int currPage) {
		
		/*페이징 기능 시작*/
		Pagenation pg = new Pagenation();
		pg.getStartPageNum();
		pg.getLastPageNum();
		pg.setTotalCount(reviewService.countAllReview()); // 총 목록 갯수
		pg.setCurrPage(currPage);// 현재 페이지
		pg.setCountPerPage(pg.getCountPerPage()); // 페이지 번호 갯수 
		pg.setCountPerPage(5);
		
		model.addAttribute("paging", pg);
		
		HashMap<String, Object> hashmap = new HashMap<>();
		
		hashmap.put("limit", pg.getLimit());
		hashmap.put("offset", pg.getOffset());
		
		List<ReviewVO> reviewList = reviewService.selectReviewList(hashmap);
		/*
		for(int i = 0; i<reviewList.size(); i++ ) {
			System.out.println(reviewList.get(i).getrWriteDate());
			System.out.println(reviewList.get(i).getrWriteAgo());
		}
		*/
		
		model.addAttribute("reviewList", reviewList);
		
		return "user/page/board/review";
	}
	
	/**
	 * 후기게시글뷰
	 * */
	@CommonCheck(isLogin="User")
	@GetMapping("/user/page/board/detail")
	public String selectUserReviewDetail(@RequestParam int rNo, Model model, HttpSession session ) {
		
		String idCheck = "no";
		
		String id = "";
		MemberVO memberVO = null;
		
		if((String)session.getAttribute("id") != null) {
			id = (String)session.getAttribute("id");
		}
		
		if(session.getAttribute("member") != null) {
			memberVO = (MemberVO) session.getAttribute("member");
			System.out.println("현재 접속 한 memberVO에 있는 세션 아이디 "+memberVO.getmId());
		}
		
		ReviewVO vo = reviewService.reviewDetailview(rNo);
		
		reviewService.increaseViewCount(rNo); //조회수 증가
		
		//System.out.println("rNo ="+rNo);
		String paramId = reviewService.selectCheckWriter(rNo);
		//System.out.println("해당 글을 쓴 아이디 = "+paramId);
		//System.out.println("글작성 아이디와 접속한 아이디가 일치하는지 여부 = "+memberVO.getmId().equals(paramId));
		if(memberVO.getmId().equals(paramId)) {
			idCheck = "ok";
		}else if(id.equals(paramId)){
			idCheck = "ok";
		}
		
		model.addAttribute("reviewDetail", vo);
		model.addAttribute("idCheck", idCheck);
		
		return "user/page/board/review-detail";
	}
	
	/**
	 * 후기 수정 페이지 가기
	 * */
	@CommonCheck(isLogin="User")
	@GetMapping("/user/page/board/modi")
	public String modify(@RequestParam(value="rNo") int rNo, Model model) {
		
		ReviewVO vo = reviewService.reviewDetailview(rNo);
		model.addAttribute("reviewDetail", vo);
		
		return "user/page/board/review-modify";
	}
	
	/**
	 * 후기 수정
	 * */
	@CommonCheck(isLogin="User")
	@RequestMapping("/user/page/board/modify")
	public String updateReview(@ModelAttribute ReviewVO vo) {
		
		System.out.println("rNo = "+vo.getrNo());
		
		reviewService.updateReview(vo);
		
		return "redirect:/user/page/board/review";
	}
	
	
	/**
	 * 후기 삭제 
	 * */
	@CommonCheck(isLogin="User")
	@RequestMapping("/user/page/board/delete")
	public String deleteReview(@RequestParam int rNo) {
		
		reviewService.deleteReview(rNo);
		
		return "redirect:/user/page/board/review";
	}
	
	/**
	 * 후기 댓글 쓰기
	 * */
	@CommonCheck(isLogin="User")
	@RequestMapping("/user/page/comment/insert") //댓글 작성 
    @ResponseBody
    private int mCommentServiceInsert(@RequestParam int rNo, @RequestParam String content, HttpSession session) throws Exception{
        
		String id = "";	//관리자 아이디
		MemberVO memberVO = null;	//일반회원 아이디
		
		
        ReviewCommentVO rcVO = new ReviewCommentVO();
        rcVO.setrNo(rNo);
        rcVO.setRbcContent(content);
        
        if((String)session.getAttribute("id") != null) {
			id = (String)session.getAttribute("id");
			rcVO.setRbcWriter(id);
		}

		if(session.getAttribute("member") != null) {
			memberVO = (MemberVO) session.getAttribute("member");
			rcVO.setRbcWriter(memberVO.getmId());
		}
        
        return reviewService.insertComment(rcVO);
    }
	
	/**
	 * 후기 댓글 출력
	 * */
	@RequestMapping("/user/page/comment/list")
	@ResponseBody
	public List<ReviewCommentVO> selectCommentList(@RequestParam int rNo) throws Exception {
		
		return reviewService.selectCommentList(rNo);
	}
	
	/**
	 * 후기 댓글 수정
	 * */
	@RequestMapping("/user/page/comment/update") //댓글 수정  
    @ResponseBody
    private int mCommentServiceUpdateProc(@RequestParam int rbcNo, @RequestParam String rbcContent) throws Exception{
        
        ReviewCommentVO rcVO = new ReviewCommentVO();
        rcVO.setRbcNo(rbcNo);
        rcVO.setRbcContent(rbcContent);
        
        return reviewService.updateComment(rcVO);
    }
	
	/**
	 * 후기 댓글 삭제 
	 * */
	@RequestMapping("/user/page/comment/delete/{rbcNo}") //댓글 삭제  
    @ResponseBody
    private int mCommentServiceDelete(@PathVariable int rbcNo) throws Exception{
        
        return reviewService.deleteComment(rbcNo);
    }
	
	/**
	 * 리뷰 검색 
	 * */
	@RequestMapping("/user/page/review/search")
	public String selectReviewSearch(Model model, @ModelAttribute ReviewSVO vo, @RequestParam (value="currPage", defaultValue="1" ) int currPage){
		
		System.out.println(vo.getKeyword());
		System.out.println(vo.getSearchOption());
		
		/*페이징 기능 시작*/
		Pagenation pg = new Pagenation();
		pg.getStartPageNum();
		pg.getLastPageNum();
		pg.setTotalCount(reviewService.countSearchReview(vo)); // 총 목록 갯수
		pg.setCurrPage(currPage);// 현재 페이지
		pg.setCountPerPage(pg.getCountPerPage()); // 페이지 번호 갯수 
		pg.setCountPerPage(5);
		
		model.addAttribute("paging", pg);
		
		HashMap<String, Object> hashmap = new HashMap<>();
		
		hashmap.put("searchOption", vo.getSearchOption());
		hashmap.put("keyword", vo.getKeyword());
		hashmap.put("limit", pg.getLimit());
		hashmap.put("offset", pg.getOffset());
		
		List<ReviewVO> reviewList = reviewService.selectReviewSearch(hashmap);
		
		model.addAttribute("reviewList", reviewList);
		model.addAttribute("map", hashmap);
		
		return "user/page/board/review-search";
	}

}
