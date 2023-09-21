package kr.ac.kopo.room.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import kr.ac.kopo.room.service.RoomService;

@Controller
public class RoomController {
	
	@Autowired
	RoomService	service;

	private String path = "room/";
	
	//매물 리스트
	@GetMapping("/roomList")
	public String roomList(Model model, RoomVO roomVO) {
		List<RoomVO> list = service.roomList(roomVO);
		model.addAttribute("list", list);

		return path + "roomlist";
	}
		
	//매물 상세페이지
	@GetMapping("/select/{roomNo}")
	public String roomSelect(RoomVO roomVO, Model model, @PathVariable Long roomNo) {
		RoomVO result = service.roomSelect(roomVO);
		model.addAttribute("result", result);
		return path + "roomselect";
	}

	//매물 등록
	@GetMapping("/add")
	public String roomAdd() {
		return path + "add";
	}
	@PostMapping("/add")
	public String roomAdd(RoomVO roomVO) {
		service.roomAdd(roomVO);
		return "redirect:/room/roomlist";
	}

	//매물 업데이트
	@GetMapping("/update/{roomNo}")
	public String roomUpdate(@PathVariable Long roomNo, Model model) {
		RoomVO roomVO = service.roomVO(roomNo);
		model.addAttribute("roomVO", roomVO);

		return path + "update";
	}
	@PostMapping("/update/{roomNo}")
	public String roomUpdate(@PathVariable Long roomNo, RoomVO roomVO) {
		roomVO.setRoomNo(roomNo);
		service.roomUpdate(roomVO);

		return "redirect:/room/roomlist";
	}
	
	@GetMapping("/delete/{roomNo}")
	public String roomDelete (@PathVariable Long roomNo) {
		service.roomDelete(roomNo);
		return "redirect:/room/roomlist";
	}

}

