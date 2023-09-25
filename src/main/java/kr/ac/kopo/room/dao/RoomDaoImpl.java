package kr.ac.kopo.room.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

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
	
	@Override
	public void roomAdd(RoomVO roomVO) {
		// 첫 번째 INSERT 문 실행
        sql.insert("room.roomAdd", roomVO);
    }

	@Override
	public void leaseAdd(HashMap<String, Long> map) {
		sql.insert("room.leaseAdd", map);
	}

	@Override
	public void monthAdd(HashMap<String, Long> map) {
		sql.insert("room.monthAdd", map);
	}

	
		
}
