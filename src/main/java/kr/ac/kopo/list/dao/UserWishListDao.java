package kr.ac.kopo.list.dao;

import java.util.List;

import kr.ac.kopo.list.web.UserWishListVO;

public interface UserWishListDao {

	List<UserWishListVO> recentView(List<String> roomNumbers);

	// 관심 매물 리스트에서 제외
	public void delete(Long wishNo);

	// 관심 매물 리스트 불러오기 
	List<UserWishListVO> wishList(Long userNo);
	
	// 관심 매물 리스트에 추가 
	// DB에 등록 성공 시 1을 반환함 하지만 제약조건에 맞지 않은 데이터들로 인해 DB등록에 실패했을 꼉우 0을 반환하지 않고 예외가 터지는 경우가 존재
	// 이를 방지하기위해서 예외를 던지도록 throws Exception 을 적어점(예외상황이 발생했을 때 어떤 예외 상황인지를 전달받을 수 있음)
	// 인터페이스이므로 바디 부분이 존재하지 않음
	public int add(UserWishListVO listVO) throws Exception;

	// 관심 매물 리스트에 매물 존재하는지 확인하는 메서드
	public UserWishListVO checkList(UserWishListVO listVO);

}
