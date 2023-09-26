package kr.ac.kopo.list.service;

import java.util.List;

import kr.ac.kopo.list.web.UserWishListVO;

public interface UserWishListService {

	List<UserWishListVO> recentView(List<String> roomNumbers);


}
