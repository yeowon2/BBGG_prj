package kr.ac.kopo.room.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import kr.ac.kopo.room.service.RoomService;

@Controller
public class RoomController {
	
	@Autowired
	RoomService	service;

	private String path = "room/";
	
	//매물 리스트
	@GetMapping("/roomList")
	public String roomList(Model model) {
		List<RoomVO> list = service.roomList();
		model.addAttribute("list", list);

		return path + "roomlist";
	}
		
	//매물 상세페이지
	@GetMapping("/roomSelect/{roomNo}")
	public String roomSelect(RoomVO roomVO, Model model, @PathVariable Long roomNo) {
		RoomVO result = service.roomSelect(roomVO);
		model.addAttribute("result", result);
		return path + "roomselect";
	}
 
}

