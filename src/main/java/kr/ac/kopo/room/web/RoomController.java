package kr.ac.kopo.room.web;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
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
    public Map<String, Double> getCoordinates(@RequestParam("address") String address, RoomVO roomVO) {
        Map<String, Double> coordinates = new HashMap<>();

        try {
            // 주소를 이용하여 RoomService에서 좌표를 가져오는 메소드를 호출합니다.
        	List<RoomVO> room = service.roomList();

            if (room != null) {
                coordinates.put("lat", roomVO.getLat());
                coordinates.put("lng", roomVO.getLng());
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return coordinates;
    }
	
		
	//매물 상세페이지
	@GetMapping("/roomSelect/{roomNo}")
	public String roomSelect(RoomVO roomVO, Model model, @PathVariable Long roomNo) {
		RoomVO result = service.roomSelect(roomVO);
		model.addAttribute("result", result);
		return path + "roomselect";
	}
 
}

