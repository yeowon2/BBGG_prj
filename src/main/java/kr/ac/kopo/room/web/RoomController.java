package kr.ac.kopo.room.web;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

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
	
	@GetMapping("/getCoordinates")
	@ResponseBody
	public List<Map<String, Double>> getCoordinates(@RequestParam("address") String address) {
	    List<Map<String, Double>> coordinatesList = new ArrayList<>();

	    try {
	        // 방 리스트를 불러옵니다.
	        List<RoomVO> rooms = service.roomList();

	        if (rooms != null) {
	            for (RoomVO room : rooms) {
	                // 주소 비교 로직을 여기에 추가합니다.
	                if (room.getAddress().contains(address)) {
	                    Map<String, Double> coordinates = new HashMap<>();
	                    coordinates.put("lat", room.getLat());
	                    coordinates.put("lng", room.getLng());
	                    coordinatesList.add(coordinates);
	                }
	            }
	        }
	    } catch (Exception e) {
	        e.printStackTrace();
	    }

	    return coordinatesList;
	}	
		
	//매물 상세페이지
	@GetMapping("/roomSelect/{roomNo}")
	public String roomSelect(RoomVO roomVO, Model model, @PathVariable Long roomNo) {
		RoomVO result = service.roomSelect(roomVO);
		model.addAttribute("result", result);
		return path + "roomselect";
	}
	
	//매물 등록
	@GetMapping("/roomAdd")
	public String roomAdd() {
		return path + "roomadd";
	}
	@PostMapping("/roomAdd")
	public String roomAdd(RoomVO roomVO) {
		service.roomAdd(roomVO);
		
		return "redirect:/roomList";
	}
 
}

