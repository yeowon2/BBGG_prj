package kr.ac.kopo.fake.dao;

import java.io.File;
import java.util.List;

import kr.ac.kopo.fake.web.FakeFileVO;
import kr.ac.kopo.fake.web.FakeVO;
import kr.ac.kopo.pager.Pager;

public interface FakeDao {

	List<FakeVO> list(Pager pager);

	void fakeAdd(Long itemNo, FakeVO fakeVO, FakeFileVO uploadVO, File saveFile, String userId);

	void fakeAdd(Long itemNo, FakeVO fakeVO, String userId);
	
	int total(Pager pager);

	FakeVO modal(String fakeNo);

	FakeVO fakeListOne(Long fakeNo);
	
	void fakeUpdate(Long itemNo);

	void fakeDelete(Long itemNo);
}
