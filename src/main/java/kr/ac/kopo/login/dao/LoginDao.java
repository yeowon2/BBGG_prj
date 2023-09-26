package kr.ac.kopo.login.dao;

import kr.ac.kopo.partner.web.PartnerVO;
import kr.ac.kopo.user.web.UserVO;

public interface LoginDao {
	
	//일반 로그인 처리
	UserVO actionLogin(UserVO userVO);

	//중개사무소 로그인 처리 
	PartnerVO actionLogin(PartnerVO partnerVO);
}
