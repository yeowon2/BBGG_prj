package kr.ac.kopo.note.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.note.web.NoteVO;
import kr.ac.kopo.pager.Pager;

@Repository
public class NoteDaoImpl implements NoteDao {

	@Autowired
	SqlSession sql;
	
	@Override
	public List<NoteVO> list(Pager pager) {
		return sql.selectList("note.list", pager);
	}

	@Override
	public int total(Pager pager) {
		return sql.selectOne("note.total", pager);
	}

	@Override
	public void add(NoteVO noteVO) {
		sql.insert("note.add", noteVO);

	}

	@Override
	public NoteVO select(Long noteNo) {
		return sql.selectOne("note.select", noteNo);
	}

	@Override
	public void update(NoteVO noteVO) {
		sql.update("note.update", noteVO);
	}

	@Override
	public boolean delete(Long noteNo) {
		 int result = sql.update("note.delete", noteNo);
		 return result > 0;
	}

}
