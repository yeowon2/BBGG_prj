package kr.ac.kopo.login.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.partner.web.PartnerVO;
import kr.ac.kopo.user.web.UserVO;

@Repository
public class LoginDaoImpl implements LoginDao {

	@Autowired
	SqlSession sql;
	
	@Override
	public UserVO actionLogin(UserVO userVO) {
		return sql.selectOne("login.actionLogin", userVO);
	}

	@Override
	public PartnerVO actionLogin(PartnerVO partnerVO) {
		return sql.selectOne("login.partnerActionLogin", partnerVO);
	}
}
