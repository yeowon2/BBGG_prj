package kr.ac.kopo.login.service;

import org.slf4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.login.dao.LoginDao;
import kr.ac.kopo.login.dao.LoginDaoImpl;
import kr.ac.kopo.partner.web.PartnerVO;
import kr.ac.kopo.user.web.UserVO;

@Service
public class LoginServiceImpl implements LoginService {

	private static final Logger logger = org.slf4j.LoggerFactory.getLogger(LoginServiceImpl.class);
	
	@Autowired
	private LoginDao dao;
	
	//일반 로그인 
	@Override
	public UserVO actionLogin(UserVO userVO) {
		
		UserVO loginVO = dao.actionLogin(userVO);
		
		if(loginVO != null && !loginVO.getUserId().equals("") && !loginVO.getUserPw().equals(""))
		{
			return loginVO;
		} else {
			loginVO = new UserVO();
		}
		
		return loginVO;
	}

	//중개사무소 로그인 
	@Override
	public PartnerVO actionLoginPartner(PartnerVO partnerVO) {
		PartnerVO loginPartnerVO = dao.actionLogin(partnerVO);
		
		if(loginPartnerVO != null && !loginPartnerVO.getUserId().equals("") && !loginPartnerVO.getUserPw().equals("")) {
			
			return loginPartnerVO;
			
		} else {
			loginPartnerVO = new PartnerVO();
		}
		
		return loginPartnerVO;
	}

}
