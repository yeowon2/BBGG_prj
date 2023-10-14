package kr.ac.kopo.wish.web;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.ac.kopo.user.web.UserVO;
import kr.ac.kopo.wish.service.WishService;

@Controller
@RequestMapping("/wish")
public class WishController {
	
	@Autowired
	WishService service;

	@GetMapping("/add/{itemNo}")
	@ResponseBody
	public String add(@PathVariable Long itemNo, HttpSession session, HttpServletResponse response) throws IOException {
	    String message = "";
	    UserVO loginVO = (UserVO) session.getAttribute("loginVO");
	    if (loginVO == null) {
	        message = "로그인이 필요합니다.";
	    } else if (loginVO != null) {
	        Long userNO = loginVO.getUserNo();
	        WishVO wishVO = new WishVO();
	        wishVO.setUserNo(userNO);
	        wishVO.setItemNo(itemNo);
	        boolean isExisted = service.add(wishVO);
	        if (!isExisted) {
	            message = "이미 추가된 항목입니다.";
	        } else {
	            message = "관심목록에 추가되었습니다."; // 추가된 경우에만 메시지를 변경
	        }
	    }
	    return message;
	}

}
