package kr.ac.kopo.note.service;

import java.util.List;

import kr.ac.kopo.note.web.NoteVO;
import kr.ac.kopo.pager.Pager;

public interface NoteService {

	List<NoteVO> list(Pager pager);

	void add(NoteVO noteVO);

	NoteVO select(Long noteNo);

	void update(NoteVO noteVO);

	void delete(Long noteNo);

	
}
