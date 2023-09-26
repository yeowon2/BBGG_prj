package kr.ac.kopo.list.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import kr.ac.kopo.list.dao.UserWishListDao;
import kr.ac.kopo.list.web.UserWishListVO;

public class UserWishListServiceImpl implements UserWishListService {

	@Autowired
	UserWishListDao dao;

	@Override
	public List<UserWishListVO> recentView(List<String> roomNumbers) {
		return dao.recentView(roomNumbers);
	}

	
	
	/*
	 * @Override public UserWishListVO recentView(String no) {
	 * 
	 * return dao.recentView(no); }
	 */

}
