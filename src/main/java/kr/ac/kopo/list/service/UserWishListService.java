package kr.ac.kopo.list.service;

import java.util.List;

import kr.ac.kopo.list.web.UserWishListVO;

public interface UserWishListService {

	List<UserWishListVO> recentView(List<String> roomNumbers);

	// 관심 매물 리스트 불러오기 
	List<UserWishListVO> wishList(Long userNo);
	
	// 관심 매물 리스트에서 제외
	public void delete(Long wishNo);

	// 관심 매물 리스트에 추가 
	public int add(UserWishListVO listVO);

	
}
