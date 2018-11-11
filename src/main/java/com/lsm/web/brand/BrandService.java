package com.lsm.web.brand;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BrandService {

	@Autowired
	BrandDAO dao;
	
	public List<BrandVO> selectBrand(){
		return dao.selectBrand();
	}
	
	public int countBrand() {
		return dao.countBrand();
	}
	
	public int insertBrand(BrandVO vo) {
		return dao.insertBrand(vo);
	}
	
	public int updateBrand(BrandVO vo) {
		return dao.updateBrand(vo);
	}
	
	public int deleteBrand(BrandVO vo) {
		return dao.deleteBrand(vo);
	}
}
