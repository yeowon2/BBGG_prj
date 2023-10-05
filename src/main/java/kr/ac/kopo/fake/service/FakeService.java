package kr.ac.kopo.fake.service;

import java.io.File;
import java.util.List;

import org.springframework.ui.Model;

import kr.ac.kopo.fake.web.FakeVO;
import kr.ac.kopo.pager.Pager;

public interface FakeService {
	
	// 허위매물 리스트 보기
	List<FakeVO> fakeList(Model model, FakeVO fakeVO, Pager pager);
	
	// 허위 매물 등록 정보
	void fakeAdd(Long itemNo, FakeVO fakeVO, File saveFile);

}