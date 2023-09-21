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
	public List<RoomVO> roomList() {
		return sql.selectList("room.roomList");
	}

	@Override
	public RoomVO roomSelect(RoomVO roomVO) {
		return sql.selectOne("room.roomSelect", roomVO);
	}

}
