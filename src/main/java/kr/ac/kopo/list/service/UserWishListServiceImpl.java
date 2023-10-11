package kr.ac.kopo.list.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.list.dao.UserWishListDao;
import kr.ac.kopo.list.web.UserWishListVO;

@Service
public class UserWishListServiceImpl implements UserWishListService {

	@Autowired
	UserWishListDao dao;

	@Override
	public List<UserWishListVO> recentView(List<String> roomNumbers) {
		return dao.recentView(roomNumbers);
	}
	
	// 관심 매물 리스트 불러오기 
	@Override
	public List<UserWishListVO> wishList() {
		return dao.wishList();
	}
	
	// 관심 매물 리스트에서 제외
	@Override
	public void delete(Long wishNo) {
		dao.delete(wishNo);
	}


	
	
	/*
	 * @Override public UserWishListVO recentView(String no) {
	 * 
	 * return dao.recentView(no); }
	 */

}
