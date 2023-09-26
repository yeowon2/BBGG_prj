package kr.ac.kopo.fake.service;

import java.io.File;
import java.util.List;

import kr.ac.kopo.fake.web.FakeVO;

public interface FakeService {
	
	// 허위매물 리스트 보기
	List<FakeVO> fakeList(FakeVO fakeVO);
	
	// 허위 매물 등록 정보
	void fakeAdd(Long itemNo, FakeVO fakeVO, File saveFile);

}