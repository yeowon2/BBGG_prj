package kr.ac.kopo.part.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.pager.Pager;
import kr.ac.kopo.part.dao.PartDao;
import kr.ac.kopo.part.web.PartVO;
import kr.ac.kopo.user.web.UserVO;

@Service
public class PartServiceImpl implements PartService {

	@Autowired
	PartDao dao;
	
	@Override
	public List<PartVO> list(Pager pager) {
		int total = dao.total(pager);
		
		return dao.list(pager);
	}

	@Override
	public void add(PartVO partVO) {
		dao.add(partVO);
	}

	@Override
	public PartVO select(Long userNo) {
		return dao.select(userNo);
	}

	@Override
	public void update(PartVO partVO) {
		dao.update(partVO);
	}

	@Override
	public void delete(Long partNo) {
		dao.delete(partNo);
	}



}
