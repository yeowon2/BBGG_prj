package kr.ac.kopo.list.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.list.web.UserWishListVO;


@Repository
public class UserWishListDaoImpl implements UserWishListDao {

	@Autowired
	SqlSession sql;

	@Override
	public List<UserWishListVO> recentView(List<String> roomNumbers) {
		return sql.selectList("list", roomNumbers);
	}

	// 관심 매물 리스트 불러오기 
	@Override
	public List<UserWishListVO> wishList() {
		return sql.selectList("list.wishList");
	}

	// 관심 매물 리스트에서 제외
	@Override
	public void delete(Long wishNo) {
		sql.update("list.delete", wishNo); // 괄호 안에 들어가는 건 xml의 namespace에서 하나의 태그를 지정해주는 것 
		// 즉, 여기서는 list라는 namespace를 지닌 mapper의 delete 태그를 지정해주어 찾아갈 수 있도록 해줌
	}



	/*
	 * @Override public ViewListVO recentView(String no) { return
	 * sql.selectList("list", no); }
	 */
	
	
	
}
