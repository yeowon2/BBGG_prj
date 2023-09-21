package kr.ac.kopo.room.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.room.web.RoomVO;

@Repository
public class RoomDaoImpl implements RoomDao {
	@Autowired
	SqlSession sql;

	@Override
	public List<RoomVO> roomList(RoomVO roomVO) {
		return sql.selectList("roomVO.roomList", roomVO);
	}

	@Override
	public RoomVO roomSelect(RoomVO roomVO) {
		return sql.selectOne("roomVO.roomSelect", roomVO);
	}

	@Override
	public void roomAdd(RoomVO roomVO) {
		sql.insert("roomVO.roomAdd");
	}

	@Override
	public RoomVO roomVO(Long roomNo) {
		return sql.selectOne("roomVO.roomNo", roomNo);
	}

	@Override
	public void roomUpdate(RoomVO roomVO) {
		sql.update("roomVO.roomUpdate", roomVO);
	}

	@Override
	public void roomDelete(Long roomNo) {
		sql.delete("roomVO.roomDelete", roomNo);
	}

}
