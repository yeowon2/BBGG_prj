package kr.ac.kopo.room.web;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
		public String roomSelect(RoomVO roomVO, Model model, @PathVariable Long roomNo, 
				HttpServletRequest request, HttpServletResponse response) {
			
			RoomVO result = service.roomSelect(roomVO);
			model.addAttribute("result", result);
			
			// 매물의 상세 정보 또는 어떠한 정보와 함께 쿠키 설정
			// 상세페이지를 다시 들어가게 되면 쿠키 값이 자동으로 업데이트 되지 않음 (일반적으로 쿠키는 만료되거나 명시적으로 수정/삭제되기 전까지 해당 값을 유지함)
			// 이름은 동일하지만 값이 다른 새 쿠키를 생성하므로 사용자가 상세페이지를 다시 들어갔을 때의 쿠키 값을 업데이트 하는 로직을 적어줘야 함 
			
			Cookie[] cookies = request.getCookies();
			String roomDetails = null;
			
			if(cookies != null) {
				for(Cookie cookie : cookies) {
					if("roomDetailsCookie".equals(cookie.getName())) {
						roomDetails = cookie.getValue();
						System.out.println(cookie.getValue());
						break;
					}
				}
			}
			// 우리가 지정해준 roomDetailsCookie의 값이 존재하는지 안 하는지 즉, 쿠키 값이 지정되었었는지 아닌지를 확인하고 지정해주는 코드
			if(roomDetails != null) {
				roomDetails = result.getRoomNo().toString(); // 만약 null 값이 아니라면 쿠키 값을 업데이트 해주는 것 
			}
			
				// 객실 세보 정보(result)를 가져온 후 roomDetailCookie라는 쿠키를 생성하며 이에 대한 추가 속성을 설정해줄 수 있음
				Cookie roomDetailsCookie = new Cookie("roomDetailsCookie", roomDetails);
				roomDetailsCookie.setMaxAge(9600); // 3시간동안 쿠키가 유지되도록 함
				// Http응답에 쿠키를 넣어줄 수 있음
				response.addCookie(roomDetailsCookie);

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

