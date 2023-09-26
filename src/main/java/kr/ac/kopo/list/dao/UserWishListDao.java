package kr.ac.kopo.list.dao;

import java.util.List;

import kr.ac.kopo.list.web.UserWishListVO;

public interface UserWishListDao {

	List<UserWishListVO> recentView(List<String> roomNumbers);


}
