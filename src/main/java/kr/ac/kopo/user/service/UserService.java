package kr.ac.kopo.user.service;

import java.util.List;

import kr.ac.kopo.pager.Pager;
import kr.ac.kopo.user.web.UserVO;

public interface UserService {

	List<UserVO> list(Pager pager);

	void add(UserVO userVO);

	UserVO select(Long userNum);

	void update(UserVO userVO);

	void delete(Long userNum);

}
