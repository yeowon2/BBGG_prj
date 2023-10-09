package kr.ac.kopo.fake.dao;

import java.io.File;
import java.util.List;

import kr.ac.kopo.fake.web.FakeVO;
import kr.ac.kopo.fake.web.UploadVO;
import kr.ac.kopo.pager.Pager;

public interface FakeDao {

	List<FakeVO> list(Pager pager);

	void fakeAdd(Long itemNo, FakeVO fakeVO, UploadVO uploadVO, File saveFile);

	int total(Pager pager);

	
}
