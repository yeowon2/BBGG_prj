package kr.ac.kopo.wish.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.wish.dao.WishDao;
import kr.ac.kopo.wish.web.WishVO;

@Service
public class WishServiceImpl implements WishService {

	@Autowired
	WishDao dao;
	
	@Override
	public boolean add(WishVO wishVO) {
		Long itemNo = wishVO.getItemNo();
		Long userNo = wishVO.getUserNo();
		
		//지금 add하려는 wishVO가 wish테이블에 있는지 확인 
		WishVO selectWishVO = dao.select(wishVO);
		
		//만약에 select해온 wishVO가 
		//없다면 add 후에 새로 추가된 wishNo의 값 반환, 
		//있으면 있는 wishVO의 wishNo의 값을 반환
		if(selectWishVO == null || selectWishVO.getWishNo() == null) {
			dao.add(wishVO);
			return true;
			
		} else {
			return false;
		}
	}

	@Override
	public void add(Long userNo, Long itemNo) {
		
		WishVO wishVO = new WishVO();
		wishVO.setUserNo(userNo);
		wishVO.setItemNo(itemNo);
		dao.add(wishVO);
	}

	@Override
	public boolean isInWish(Long userNo, Long itemNo) {
		
		WishVO wishVO = new WishVO();
		wishVO.setUserNo(userNo);
		wishVO.setItemNo(itemNo);
		
		WishVO selected = dao.select(wishVO);
		if(selected != null) {
			return true;
		}
		return false;
	}
	
}
