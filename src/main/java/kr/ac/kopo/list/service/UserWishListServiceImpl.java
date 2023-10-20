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

	// 관심 매물 리스트에 추가 


	/*
	 * @Override public int add(UserWishListVO listVO) {
	 * 
	 * // 관심 매물 리스트에 데이터 체크 // checkList 메서드를 활용하여 등록하고자 하는 데이터가 이미 DB에 존재하는지 확인하여
	 * 존재할 경우 2를 반환하도록 코드를 작성함 UserWishListVO checkList =
	 * UserWishListDao.checkList(listVO);
	 * 
	 * if(checkList != null) { // checkList가 null값이 아니라는 것은 등록된 값이 존재한다는 것 => 2를
	 * 반환하도록 함 return 2; }
	 * 
	 * // 만약 등록하고자 하는 데이터가 DB에 존재하지 않을 경우 DB에 저장하는 add 메서드를 호출하며 반환받은 값을 return 할 것
	 * // 장바구니 등록 & 에러 시 0을 반환 try { return UserWishListDao.add(listVO); } catch
	 * (Exception e) { return 0; }
	 * 
	 * }
	 */


	
	
	/*
	 * @Override public UserWishListVO recentView(String no) {
	 * 
	 * return dao.recentView(no); }
	 */

}
