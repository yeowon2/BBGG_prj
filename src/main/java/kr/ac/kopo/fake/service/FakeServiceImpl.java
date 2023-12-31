package kr.ac.kopo.fake.service;

import java.io.File;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.fake.dao.FakeDao;
import kr.ac.kopo.fake.web.FakeFileVO;
import kr.ac.kopo.fake.web.FakeVO;
import kr.ac.kopo.pager.Pager;

@Service
public class FakeServiceImpl implements FakeService {

	@Autowired
	FakeDao dao;
	
	@Override
	public List<FakeVO> fakeList(Pager pager) {
		int total = dao.total(pager);
		pager.setTotal(total);
		return dao.list(pager);
	}

	@Override
	public void fakeAdd(Long itemNo, FakeVO fakeVO, FakeFileVO uploadVO, File saveFile, String userId) {
		dao.fakeAdd(itemNo, fakeVO, uploadVO, saveFile, userId);	
	}

	@Override
	public void fakeAdd(Long itemNo, FakeVO fakeVO, String userId) {
		dao.fakeAdd(itemNo, fakeVO, userId);	
	}
	
	@Override
	public FakeVO modal(String fakeNo) {
		return dao.modal(fakeNo);
	}
	
	@Override
	public FakeVO fakeListOne(Long fakeNo) {
		return dao.fakeListOne(fakeNo);
	}
	
	@Override
	public void fakeUpdate(Long itemNo) {
		dao.fakeUpdate(itemNo);
	}
	
	@Override
	public void fakeDelete(Long itemNo) {
		dao.fakeDelete(itemNo);
	}

	
}