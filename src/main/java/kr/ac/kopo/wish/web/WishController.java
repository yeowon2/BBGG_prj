package kr.ac.kopo.wish.web;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
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
	public Map<String, String> add(@PathVariable Long itemNo, HttpSession session, HttpServletResponse response) throws IOException {
	  
		Map<String, String> responseData = new HashMap<>();
	    UserVO loginVO = (UserVO) session.getAttribute("loginVO");
	    
	    if (loginVO == null) {
	        responseData.put("message", "로그인이 필요합니다");
	    } else {
	        boolean isItemInWishList = service.isInWish(loginVO.getUserNo(), itemNo);
	        if (isItemInWishList) {
	            responseData.put("message", "이미 추가된 항목입니다");
	        } else {
	            service.add(loginVO.getUserNo(), itemNo);
	            responseData.put("message", "추가되었습니다");
	        }
	    }
	    
	    return responseData;
	}
}
