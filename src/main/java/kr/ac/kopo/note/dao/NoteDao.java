package kr.ac.kopo.note.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import kr.ac.kopo.note.web.NoteVO;
import kr.ac.kopo.pager.Pager;

public interface NoteDao {

	List<NoteVO> sendList(NoteVO noteVO);

	List<NoteVO> receiveList(NoteVO noteVO);

	int total(Pager pager);

	void add(@Param("itemNo") Long itemNo, @Param("noteVO") NoteVO noteVO);

	NoteVO sendDetail(Map<String, Long> paramMap);

	NoteVO receiveDetail(Long noteNo);

	void update(NoteVO noteVO);

	boolean delete(Long noteNo);

	boolean updateStatus(Long noteNo);


}
