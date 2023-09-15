package kr.ac.kopo.user.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.pager.Pager;
import kr.ac.kopo.user.dao.ProUsersDao;
import kr.ac.kopo.user.web.ProUsersVO;

@Service
public class ProUsersServiceImpl implements ProUsersService {
	@Autowired
	ProUsersDao dao;
	
	@Override
	public List<ProUsersVO> list(Pager pager) {
		int total = dao.total(pager);
		
		return dao.list(pager);
	}

	@Override
	public void add(ProUsersVO proVO) {
		dao.add(proVO);
	}

	@Override
	public ProUsersVO select(Long proUnumber) {
		return dao.select(proUnumber);
	}

	@Override
	public void update(ProUsersVO proVO) {
		dao.update(proVO);
	}

	@Override
	public void delete(Long proUnumber) {
		dao.delete(proUnumber);
	}

}
