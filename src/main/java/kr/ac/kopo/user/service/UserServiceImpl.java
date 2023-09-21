package kr.ac.kopo.user.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.pager.Pager;
import kr.ac.kopo.user.dao.UserDao;
import kr.ac.kopo.user.web.UserVO;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	UserDao dao;
	
	@Override
	public List<UserVO> list(Pager pager) {
		int total = dao.total(pager);
		
		return dao.list(pager);
	}

	@Override
	public void add(UserVO userVO) {
		dao.add(userVO);
	}

	@Override
	public UserVO select(Long userNo) {
		return dao.select(userNo);
	}

	@Override
	public void update(UserVO userVO) {
		dao.update(userVO);
	}

	@Override
	public void delete(Long userNo) {
		dao.delete(userNo);
	}



}
