package kr.ac.kopo.note.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.note.dao.NoteDao;
import kr.ac.kopo.note.web.NoteVO;
import kr.ac.kopo.pager.Pager;

@Service
public class NoteServiceImpl implements NoteService {

	@Autowired
	NoteDao dao;
	
	@Override
	public List<NoteVO> list(Pager pager) {
		int total = dao.total(pager);
		
		return dao.list(pager);
	}

	@Override
	public void add(NoteVO noteVO) {
		dao.add(noteVO);
	}

	@Override
	public NoteVO select(Long noteNo) {
		return dao.select(noteNo);
	}

	@Override
	public void update(NoteVO noteVO) {
		dao.update(noteVO);
	}

	@Override
	public void delete(Long noteNo) {
		dao.delete(noteNo);
	}

}
