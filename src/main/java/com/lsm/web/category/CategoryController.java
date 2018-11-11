package com.lsm.web.category;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.lsm.web.brand.BrandService;
import com.lsm.web.brand.BrandVO;
import com.lsm.web.common.CommonCheck;

@Controller
public class CategoryController {

	@Autowired
	CategoryService service;
	
	@Autowired
	BrandService bService;
	
	@CommonCheck(isLogin="Y")
	@GetMapping("/admin/page/product/goods_reg")
	public String selectCategory(Model model) {
		List<CategoryVO> cartegoryList = service.selectCategory();
		List<BrandVO> brandList = bService.selectBrand();
		model.addAttribute("categoryList", cartegoryList);
		model.addAttribute("brandList", brandList);
		
		return "admin/page/product/goods_reg";
	}
	
	@PostMapping("/admin/page/product/category1st")
	public ModelAndView category1st() {
		ModelAndView mav = new ModelAndView("jsonView");
		List<CategoryVO> cartegoryList = service.selectCategory();
		mav.addObject("categoryList", cartegoryList);
		return mav;
	}
	
	
	@PostMapping("/admin/page/product/category2nd")
	public ModelAndView category2nd(@RequestParam("pCategory") String pCategroy) {
		ModelAndView mav = new ModelAndView("jsonView");
		List<CategoryVO> selectChildCategory = service.selectChildCategory(pCategroy);
		mav.addObject("selectChildCategory", selectChildCategory);
		return mav;
	}

}
