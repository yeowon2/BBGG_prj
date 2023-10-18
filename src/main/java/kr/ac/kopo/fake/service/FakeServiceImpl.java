package kr.ac.kopo.fake.service;

import java.io.File;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import kr.ac.kopo.fake.dao.FakeDao;
import kr.ac.kopo.fake.web.FakeVO;
import kr.ac.kopo.fake.web.UploadVO;
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
	public void fakeAdd(Long itemNo, FakeVO fakeVO, UploadVO uploadVO, File saveFile, String userId) {
		dao.fakeAdd(itemNo, fakeVO, uploadVO, saveFile, userId);	
	}

	@Override
	public void fakeAdd(Long itemNo, FakeVO fakeVO, String userId) {
		dao.fakeAdd(itemNo, fakeVO, userId);	
	}
}