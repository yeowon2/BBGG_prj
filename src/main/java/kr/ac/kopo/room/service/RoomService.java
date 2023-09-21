package kr.ac.kopo.room.service;

import java.util.List;

import kr.ac.kopo.room.web.RoomVO;

public interface RoomService {

	List<RoomVO> roomList(RoomVO roomVO);

	RoomVO roomSelect(RoomVO roomVO);

	void roomAdd(RoomVO roomVO);

	RoomVO roomVO(Long roomNo);

	void roomUpdate(RoomVO roomVO);

	void roomDelete(Long roomNo);

	

	

	

	


}
