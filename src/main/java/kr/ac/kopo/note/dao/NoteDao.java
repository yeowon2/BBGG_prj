package kr.ac.kopo.note.dao;

import java.util.List;

import kr.ac.kopo.note.web.NoteVO;
import kr.ac.kopo.pager.Pager;

public interface NoteDao {

	List<NoteVO> sendList(Pager pager);

	List<NoteVO> receiveList(Pager pager);

	int total(Pager pager);

	void add(NoteVO noteVO);

	NoteVO select(Long noteNo);

	void update(NoteVO noteVO);

	boolean delete(Long noteNo);

}
