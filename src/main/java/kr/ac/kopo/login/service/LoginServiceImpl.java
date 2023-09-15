package kr.ac.kopo.login.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.login.dao.LoginDao;
import kr.ac.kopo.user.web.UserVO;

@Service
public class LoginServiceImpl implements LoginService {

	@Autowired
	private LoginDao dao;
	
	//일반 로그인 
	@Override
	public UserVO actionLogin(UserVO userVO) {
		
		UserVO loginVO = dao.actionLogin(userVO);
		
		if(loginVO != null && !loginVO.getUserId().equals("") && !loginVO.getPassword().equals("")) {
			return loginVO;
		} else {
			loginVO = new UserVO();
		}
		
		return loginVO;
	}

}
