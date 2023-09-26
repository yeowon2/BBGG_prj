package kr.ac.kopo.fake.dao;

import java.io.File;

import kr.ac.kopo.fake.web.FakeVO;

public interface FakeDao {

//	List<ReportVO> reportList(ReportVO reportVO);

	void fakeAdd(Long itemNo, FakeVO fakeVO, File saveFile);
}
