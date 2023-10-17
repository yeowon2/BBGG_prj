package kr.ac.kopo.sublet.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.sublet.dao.SubletDao;
import kr.ac.kopo.sublet.web.SubletVO;

@Service
public class SubletServiceImpl implements SubletService{

	@Autowired
	SubletDao dao;
	
	@Override
	public List<SubletVO> selectList() {
		return dao.selectList();
	}

	@Override
	public void add(SubletVO subletVO) {
		dao.add(subletVO);
	}

}
