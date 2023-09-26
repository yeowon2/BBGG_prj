package kr.ac.kopo.fake.service;

import java.io.File;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.fake.dao.FakeDao;
import kr.ac.kopo.fake.web.FakeVO;

@Service
public class FakeServiceImpl implements FakeService {

	@Autowired
	FakeDao dao;
	
	@Override
	public List<FakeVO> fakeList(FakeVO fakeVO) {
		return null; // @@@@@@@@@@
	}

	@Override
	public void fakeAdd(Long roomNo, FakeVO fakeVO, File saveFile) {
		dao.fakeAdd(roomNo, fakeVO, saveFile);
		
	}

	

}