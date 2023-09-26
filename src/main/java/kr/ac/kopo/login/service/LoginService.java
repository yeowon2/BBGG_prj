package kr.ac.kopo.login.service;

import kr.ac.kopo.partner.web.PartnerVO;
import kr.ac.kopo.user.web.UserVO;

public interface LoginService {

	UserVO actionLogin(UserVO userVO);

	PartnerVO actionLoginPartner(PartnerVO partnerVO);
}
