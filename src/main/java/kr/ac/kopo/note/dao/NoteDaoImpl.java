package kr.ac.kopo.note.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.item.dao.ItemDaoImpl;
import kr.ac.kopo.note.web.NoteVO;
import kr.ac.kopo.pager.Pager;

@Repository
public class NoteDaoImpl implements NoteDao {

	private static final Logger logger = LoggerFactory.getLogger(NoteDaoImpl.class);
	
	@Autowired
	SqlSession sql;
	
	@Override
	public List<NoteVO> sendList(NoteVO noteVO) {
		return sql.selectList("note.sendList", noteVO);
	}

	@Override
	public List<NoteVO> receiveList(NoteVO noteVO) {
		return sql.selectList("note.receiveList", noteVO);
	}

	@Override
	public int total(Pager pager) {
		return sql.selectOne("note.total", pager);
	}

	@Override
	public void add(Long itemNo, NoteVO noteVO) {
		logger.info("userNo = {}", noteVO.getUserNo());
		
		Map<String, Object> paramMap = new HashMap<String, Object>();
		paramMap.put("itemNo", itemNo);
		paramMap.put("noteVO", noteVO);
		sql.insert("note.add", paramMap);

	}

	@Override
	public NoteVO sendDetail(Map<String, Long> paramMap) {
		return sql.selectOne("note.sendDetail", paramMap);
	}

	@Override
	public NoteVO receiveDetail(Long noteNo) {
		return sql.selectOne("note.receiveDetail", noteNo);
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

	@Override
	public boolean updateStatus(Long noteNo) {
		 int result = sql.update("note.updateStatus", noteNo);
		 return result > 0;
	}


}
