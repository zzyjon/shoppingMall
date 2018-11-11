package com.lsm.web.moosinsa.product;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.lsm.web.board.ReviewService;
import com.lsm.web.board.ReviewVO;
import com.lsm.web.brand.BrandService;
import com.lsm.web.brand.BrandVO;
import com.lsm.web.common.CommonCheck;
import com.lsm.web.common.Pagenation;

@Controller
public class ProductController {

	
	@Autowired
	ProductService service;
	
	@Autowired
	BrandService bService;
	
	@Autowired
	ReviewService reviewService;
	
	/**
	 * 상품 목록 뿌리기
	 * */
	@GetMapping("/admin/page/product/goods_list")
	public String selectProductList(Model model	) {
		
		List<ProductVO> list = service.selectProductList();
		List<BrandVO> bList = bService.selectBrand();
		model.addAttribute("productList", list);
		model.addAttribute("brandList", bList);
		
		return "admin/page/product/goods_list";
	}
	
	/**
	 * 상픔 등록
	 * */
	@CommonCheck(isLogin="Y")
	@PostMapping("/admin/page/product/goods_upload")
	public String insertProduct(@ModelAttribute ProductVO vo) {
		
		/* 파일 업로드 시작 */
		MultipartFile[] files = vo.getFile();
		for(int i = 0; i <  files.length; i++) {
			
			if(files[i].isEmpty()) { // isEmpty 비어있으면 넘어감
				continue;
			}
			
			byte[] bytes;
			
			try {
				bytes = files[i].getBytes();
				Path path = Paths.get("D:/Java_tutorials/spring_shoppingmall/src/main/resources/static/product/" + files[i].getOriginalFilename());
				
				System.out.println("파일 명 = "+files[i].getOriginalFilename());
				
				vo.setpImg1(files[0].getOriginalFilename());  // 업로드한 파일 이름 셋팅
				vo.setpImg2(files[1].getOriginalFilename());
				vo.setpImg3(files[2].getOriginalFilename());
				
				
				Files.write(path, bytes);
								
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		/* 파일 업로드 끝 */
			
		}
		
		service.insertProduct(vo);
		
		return "redirect:/admin/page/product/goods_list";
	}
	
	 // 파일명 랜덤생성 메서드
   /* private String uploadFile(String originalName, byte[] fileData) throws Exception{
        // uuid 생성(Universal Unique IDentifier, 범용 고유 식별자)
        UUID uuid = UUID.randomUUID();
        // 랜덤생성+파일이름 저장
        String savedName = uuid.toString()+"_"+originalName;
        File target = new File(uploadPath, savedName);
        // 임시디렉토리에 저장된 업로드된 파일을 지정된 디렉토리로 복사
        // FileCopyUtils.copy(바이트배열, 파일객체)
        FileCopyUtils.copy(fileData, target);
        return savedName;
    }*/
	
	
	/**
	 * 상품 삭제 
	 * */
	@CommonCheck(isLogin="Y")
	@PostMapping("/admin/page/product/del")
	public String deleteProduct(@ModelAttribute ProductVO vo) {
		
		service.deleteProduct(vo);
		
		return "admin/page/product/goods_list";
	}
	
	/**
	 * 상품 뷰 (수정 버튼 눌렀을때) 
	 * */
	@CommonCheck(isLogin="Y")
	@GetMapping("/admin/page/product/detailView")
	public ModelAndView selectProduct(@ModelAttribute ProductVO paramVO) {
		
		ModelAndView view = new ModelAndView();
		view.setViewName("jsonView");
		
		//System.out.println(paramVO.getpNo());
		
		ProductVO vo = service.selectProduct(paramVO);
		view.addObject("goods", vo);
		//model.addAttribute("ProductView", vo);
		
		return view;
	}
	
	/**
	 * 상품 수정
	 * */
	@CommonCheck(isLogin="Y")
	@RequestMapping(value="/admin/page/product/modify")
	public String updateProduct(@ModelAttribute ProductVO paramVO) {
		
		service.updateProduct(paramVO);
		
		return "admin/page/product/goods_list";
	}
	
	
	/**
	 * 유저 상폼별 페이지
	 * */
	@GetMapping("/user/page/product/view")
	public String selectUserProductType(Model model, @ModelAttribute ProductSVO paramSVO, @RequestParam(value="currPage", defaultValue="1") int currPage ) {
		
		/*
		int totalRow = service.countProduct();// 게시글 총 갯수
		int limit = 9; // 한 페이지에 보여질 게시글 수 
		int offset = 0; // 한 페이지에 보여질 시작 행 
		int pageGroup = 3; // 페이지 그룹
		int currPage = 1; // 현재 페이지 
		int startPageNum = ((currPage -1)/pageGroup) * pageGroup + 1;
		int lastPageNum = startPageNum + pageGroup -1;
		int totalPageNum = totalRow/limit + ((totalRow % limit > 0)? 1:0); // 총 페이지 수
		*/
		
		/*페이징 기능 시작*/
		Pagenation pg = new Pagenation();
		pg.getStartPageNum();
		pg.getLastPageNum();
		pg.setTotalCount(service.countProduct(paramSVO)); // 총 목록 갯수
		pg.setCurrPage(currPage);// 현재 페이지
		pg.setCountPerPage(pg.getCountPerPage()); // 페이지 번호 갯수 
				
		model.addAttribute("paging", pg);
		
		//System.out.println("오프셋 값 = "+pg.getOffset());
		//System.out.println("게시글 페이지 전체 갯 수 = " +pg.getTotalPage());
		/*페이징 기능 끝*/
		
		if(paramSVO.getKeyword() != null){
			String productType = "";
			model.addAttribute("productType", productType);
		}
		
		HashMap<String , Object> hashmap = new HashMap<>();
		hashmap.put("productType", paramSVO.getProductType());
		hashmap.put("offset", pg.getOffset());
		hashmap.put("limit", pg.getLimit());
		
		List<ProductVO> list = service.selectTypeProduct(hashmap);
		model.addAttribute("goodsList", list);
		model.addAttribute("productType", paramSVO.getProductType());
		
		return "user/page/product/product";
		
	}
	
	/**
	 * 유저 상품 검색
	 * */
	@GetMapping("/user/page/product/search")
	public String selectSearchProduct(@ModelAttribute ProductSVO svo, Model model, @RequestParam (value="currPage", defaultValue="1") int currPage) {
		
		/*페이징 기능 시작*/
		Pagenation pg = new Pagenation();
		pg.getStartPageNum();
		pg.getLastPageNum();
		pg.setTotalCount(service.countProduct(svo)); // 총 목록 갯수
		pg.setCurrPage(currPage);// 현재 페이지
		pg.setCountPerPage(pg.getCountPerPage()); // 페이지 번호 갯수 
				
		model.addAttribute("paging", pg);
		/*페이징 기능 끝*/
		
		HashMap<String, Object> hashmap = new HashMap<>();
		hashmap.put("keyword", svo.getKeyword());
		hashmap.put("limit", pg.getLimit());
		hashmap.put("offset", pg.getOffset());
		
		List<ProductVO> list = service.selectSearchProduct(hashmap);
		model.addAttribute("goodsList", list);
		model.addAttribute("keyword", svo.getKeyword());
		
		return "user/page/product/product";
	}
	
	/**
	 * 상품 디테일 뷰
	 * */
	@GetMapping("/user/page/product/detail")
	public String selectProductDetailView(@ModelAttribute ProductVO paramVO, Model model, @RequestParam(value="pNo") int pNo) {
		
		ProductVO vo = service.selectProductDetailView(paramVO);
		
		//System.out.println(vo.getpSize());
		
		String size[] = vo.getpSize().split(",");  // 상품 사이즈를 ','로 쪼개서 배열에 담음
		
		/*
		for(int i = 0; i < size.length; i++) {
			System.out.println("size["+i+"] : " + size[i]);
		}*/
		
		List<ReviewVO> rList = reviewService.selectProductReview(pNo);
		int count = reviewService.countProductReview(pNo);
		
		model.addAttribute("goods", vo);
		model.addAttribute("size", size);
		model.addAttribute("rList", rList);
		model.addAttribute("count", count);
		
		return "user/page/product/product-detail";
	}
	
}
