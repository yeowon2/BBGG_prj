package kr.ac.kopo.note.service;

import java.util.List;
import java.util.Map;

import kr.ac.kopo.note.web.NoteVO;

public interface NoteService {

	List<NoteVO> sendList(NoteVO noteVO);

	List<NoteVO> receiveList(NoteVO noteVO);
	
	void add(NoteVO noteVO);

	NoteVO select(Map<String, Long> paramMap);

	void update(NoteVO noteVO);

	boolean delete(Long noteNo);

	NoteVO receiveDetail(Long noteNo);

	
}
