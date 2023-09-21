package kr.ac.kopo.room.dao;

import java.util.List;

import kr.ac.kopo.room.web.RoomVO;

public interface RoomDao {

	List<RoomVO> roomList();

	RoomVO roomSelect(RoomVO roomVO);


}
