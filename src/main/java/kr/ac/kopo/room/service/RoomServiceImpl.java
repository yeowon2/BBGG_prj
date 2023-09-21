package kr.ac.kopo.room.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.room.dao.RoomDao;
import kr.ac.kopo.room.web.RoomVO;

@Service
public class RoomServiceImpl implements RoomService {
	@Autowired
	RoomDao dao;

	@Override
	public List<RoomVO> roomList(RoomVO roomVO) {
		return dao.roomList(roomVO);
	}

	@Override
	public RoomVO roomSelect(RoomVO roomVO) {
		return dao.roomSelect(roomVO);
	}

	@Override
	public void roomAdd(RoomVO roomVO) {
		dao.roomAdd(roomVO);
	}

	@Override
	public RoomVO roomVO(Long roomNo) {
		return dao.roomVO(roomNo);
	}

	@Override
	public void roomUpdate(RoomVO roomVO) {
		dao.roomUpdate(roomVO);
	}

	@Override
	public void roomDelete(Long roomNo) {
		dao.roomDelete(roomNo);
	}


}
