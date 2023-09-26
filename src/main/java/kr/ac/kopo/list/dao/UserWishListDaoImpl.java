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


	/*
	 * @Override public ViewListVO recentView(String no) { return
	 * sql.selectList("list", no); }
	 */
	
}
