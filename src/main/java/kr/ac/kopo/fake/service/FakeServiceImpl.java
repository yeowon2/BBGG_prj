package kr.ac.kopo.fake.service;

import java.io.File;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import kr.ac.kopo.fake.dao.FakeDao;
import kr.ac.kopo.fake.web.FakeVO;
import kr.ac.kopo.pager.Pager;

@Service
public class FakeServiceImpl implements FakeService {

	@Autowired
	FakeDao dao;
	
	@Override
	public List<FakeVO> fakeList(Model model, FakeVO fakeVO, Pager pager) {
		int total = dao.total(pager);
		
		pager.setTotal(total);
		
		return dao.list(pager);
	}

	@Override
	public void fakeAdd(Long itemNo, FakeVO fakeVO, File saveFile) {
		dao.fakeAdd(itemNo, fakeVO, saveFile);
		
	}

	

}