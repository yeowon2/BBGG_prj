package kr.ac.kopo.notice.service;

import java.util.List;

import kr.ac.kopo.notice.web.NoticeVO;
import kr.ac.kopo.pager.Pager;

public interface NoticeService {

	// 공지 전체
	List<NoticeVO> noticeListAll(Pager pager);
	
	// 공지 추가
	void addNotice(NoticeVO noticeVO);
	
	// 공지 하나
	NoticeVO noticeListOne(Long noticeNo);
}
