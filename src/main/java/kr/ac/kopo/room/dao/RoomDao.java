package kr.ac.kopo.room.dao;

import java.util.HashMap;
import java.util.List;

import kr.ac.kopo.room.web.RoomVO;

public interface RoomDao {

	List<RoomVO> roomList();

	RoomVO roomSelect(RoomVO roomVO);

	void roomAdd(RoomVO roomVO);

	void leaseAdd(HashMap<String, Long> map);

	void monthAdd(HashMap<String, Long> map);

	

}
