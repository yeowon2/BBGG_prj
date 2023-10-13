package kr.ac.kopo.wish.web;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.ac.kopo.user.web.UserVO;
import kr.ac.kopo.wish.service.WishService;

@Controller
@RequestMapping("/wish")
public class WishController {
	
	@Autowired
	WishService service;

	@PostMapping("/add")
	@ResponseBody
	public ResponseEntity<String> add(@RequestBody Long itemNo, HttpSession session) {
		
		UserVO loginVO =  (UserVO)session.getAttribute("loginVO");
		if(loginVO == null) {
			return ResponseEntity.status(HttpStatus.UNAUTHORIZED).body("로그인이 필요합니다.");
		}
		Long userNO = loginVO.getUserNo();
		WishVO wishVO = new WishVO();
		wishVO.setUserNo(userNO);
		wishVO.setItemNo(itemNo);
		service.add(wishVO);
		
		return ResponseEntity.ok("OK");
	}
}
