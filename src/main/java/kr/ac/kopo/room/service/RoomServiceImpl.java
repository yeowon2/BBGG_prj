package kr.ac.kopo.room.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.ac.kopo.room.dao.RoomDao;
import kr.ac.kopo.room.web.RoomVO;

@Service
public class RoomServiceImpl implements RoomService {
	@Autowired
	RoomDao dao;
	

	@Override
	public List<RoomVO> roomList() {
		return dao.roomList();
	}

	@Override
	public RoomVO roomSelect(RoomVO roomVO) {
		return dao.roomSelect(roomVO);
	}
	
	@Transactional
	@Override
	public void roomAdd(RoomVO roomVO) {
		dao.roomAdd(roomVO);
		
		HashMap<String, Long> map = new HashMap<String, Long>();
		map.put("roomNo", roomVO.getRoomNo());
		
		if(roomVO.getLeaseOrMonth().equals("lease")) {
			map.put("leasePrice", roomVO.getLeasePrice());
			dao.leaseAdd(map);
		}
		else {
			map.put("deposltFee", roomVO.getDeposltFee());
			map.put("monthPrice", roomVO.getMonthPrice());
			dao.monthAdd(map);
		}
		
		
		
		
	}
}
