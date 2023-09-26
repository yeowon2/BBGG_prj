package kr.ac.kopo.login.dao;



import org.apache.ibatis.session.SqlSession;
import org.mybatis.logging.LoggerFactory;
import org.slf4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.partner.web.PartnerVO;
import kr.ac.kopo.user.web.UserVO;

@Repository
public class LoginDaoImpl implements LoginDao {

	private static final Logger logger = org.slf4j.LoggerFactory.getLogger(LoginDaoImpl.class);
	
	@Autowired
	SqlSession sql;
	
	@Override
	public UserVO actionLogin(UserVO userVO) {
		return sql.selectOne("login.actionLogin", userVO);
	}

	@Override
	public PartnerVO actionLogin(PartnerVO partnerVO) {
		
		PartnerVO vo = sql.selectOne("login.partnerActionLogin", partnerVO);
		
		return vo;
	}
}
