package kr.ac.kopo.login.dao;

import kr.ac.kopo.user.web.UserVO;

public interface LoginDao {
	
	//일반 로그인 처리
	UserVO actionLogin(UserVO userVO);
}
