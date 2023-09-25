package kr.ac.kopo.list.web;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import kr.ac.kopo.list.service.RecentListService;

@Controller
public class RecentListController {

	@Autowired
	RecentListService service;	
	
	private final String path = "list/";
	
	
	@GetMapping("/recentList")
	public String recentList(Model model, HttpServletRequest request) {
		
		// cookie 
		Cookie[] cookies = request.getCookies();
		List <RecentListVO> rList = new ArrayList<RecentListVO>();
		
		if(cookies != null) {
			for (int i = cookies.length-1; i>=0; i--) {
				
				// 루프 내에서 쿠키 이름이 특정형식으로 시작하는지 확인함 
				if(cookies[i].getName().startsWith("roomDetailsCookie")) {
					String no = cookies[i].getValue();
					
					RecentListVO rvo = new RecentListVO();
					rvo.setRoomId(Integer.parseInt(no));
					
					rList.add(rvo);
				}
			}
		}
			model.addAttribute(rList);
			return path + "recentList";
	}
}