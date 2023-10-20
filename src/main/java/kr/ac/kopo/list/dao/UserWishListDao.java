package kr.ac.kopo.list.dao;

import java.util.List;

import kr.ac.kopo.list.web.UserWishListVO;

public interface UserWishListDao {

	List<UserWishListVO> recentView(List<String> roomNumbers);

	// 관심 매물 리스트에서 제외
	public void delete(Long wishNo);

	// 관심 매물 리스트 불러오기 
	List<UserWishListVO> wishList();
	
	// 관심 매물 리스트에 추가 
	public int add(UserWishListVO listVO) throws Exception; /*{
		// 관심 매물 리스트에 추가하는 것이 완료된다면 등록 성공이 1을 반환하도록 함 
		return 1;
	}*/

	// 관심 매물 리스트에 매물 존재하는지 확인하는 메서드
	public static UserWishListVO checkList(UserWishListVO listVO) {
		return listVO;
	}
}
