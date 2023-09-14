package kr.ac.kopo.user.dao;

import java.util.List;

import kr.ac.kopo.pager.Pager;
import kr.ac.kopo.user.web.UserVO;

public interface UserDao {

	List<UserVO> list(Pager pager);

	void add(UserVO memberVO);

	UserVO select(String userId);

	void update(UserVO userVO);

	void delete(String userId);

	int total(Pager pager);

}
