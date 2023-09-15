package kr.ac.kopo.user.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.pager.Pager;
import kr.ac.kopo.user.web.UserVO;

@Repository
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
	public UserVO select(Long userNum) {
		return sql.selectOne("user.select", userNum);
	}

	@Override
	public void update(UserVO userVO) {
		sql.update("user.update", userVO);
	}

	@Override
	public void delete(Long userNum) {
		sql.update("user.delete", userNum);
	}

	@Override
	public int total(Pager pager) {
		return sql.selectOne("user.total", pager);
	}

}
