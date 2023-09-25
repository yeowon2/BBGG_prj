package kr.ac.kopo.report.service;

import java.util.List;

import org.springframework.ui.Model;

import kr.ac.kopo.report.web.ReportVO;
import kr.ac.kopo.room.web.RoomVO;

public interface ReportService {
	
	// 허위매물 리스트 보기
	List<ReportVO> reportList(ReportVO reportVO);
	
	// 허위 매물 등록 정보
	void reportAdd(Long roomNo, ReportVO reportVO);

}