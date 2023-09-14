package kr.ac.kopo.user.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import kr.ac.kopo.pager.Pager;
import kr.ac.kopo.user.web.UserVO;

public class UserDaoImpl implements UserDao {

	@Autowired
	SqlSession sql;
	
	@Override
	public List<UserVO> list(Pager pager) {
		return sql.selectList("user.list", pager);
	}

	@Override
	public void add(UserVO userVO) {
		sql.insert("user.add", userVO);
	}

	@Override
	public UserVO select(String userId) {
		return sql.selectOne("user.select", userId);
	}

	@Override
	public void update(UserVO userVO) {
		sql.update("user.update", userVO);
	}

	@Override
	public void delete(String userId) {
		sql.update("user.delete", userId);
	}

	@Override
	public int total(Pager pager) {
		return sql.selectOne("user.total", pager);
	}

}
