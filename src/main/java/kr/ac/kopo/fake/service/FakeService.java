package kr.ac.kopo.fake.service;

import java.io.File;
import java.util.List;

import kr.ac.kopo.fake.web.FakeFileVO;
import kr.ac.kopo.fake.web.FakeVO;
import kr.ac.kopo.pager.Pager;

public interface FakeService {
	
	// 허위매물 리스트 보기
	List<FakeVO> fakeList(Pager pager);
	
	// 허위 매물 등록 정보
	void fakeAdd(Long itemNo, FakeVO fakeVO, FakeFileVO uploadVO, File saveFile, String userId);

	void fakeAdd(Long itemNo, FakeVO fakeVO, String userId);
	
	void update(int itemNo);

	List<FakeVO> modal(String fakeNo);

}