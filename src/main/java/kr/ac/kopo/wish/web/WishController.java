package kr.ac.kopo.wish.web;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttribute;

import kr.ac.kopo.item.service.ItemService;
import kr.ac.kopo.item.service.ItemServiceImpl;
import kr.ac.kopo.item.web.ItemVO;
import kr.ac.kopo.user.web.UserVO;
import kr.ac.kopo.wish.service.WishService;

@Controller
@RequestMapping("/wish")
public class WishController {
	
	private static final Logger logger = LoggerFactory.getLogger(WishController.class);
	
	@Autowired
	WishService service;

	@Autowired
	ItemService itemService;
	
	private String path = "wish/";

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
	
	@GetMapping("/list")
	public String list(@SessionAttribute(name = "loginVO", required = false) UserVO loginVO,
						Model model) {
		
		if(loginVO == null) {
			return "redirect:/login";
		}
		List<ItemVO> wishList = itemService.selectWishList(loginVO.getUserNo());
		
		model.addAttribute("wishList", wishList);
		return path + "list";
	}
	
	@GetMapping("/delete/{itemNo}")
	@ResponseBody
	public String delete(@SessionAttribute(name = "loginVO", required = false) UserVO loginVO,
			@PathVariable Long itemNo) {
		
		service.delete(loginVO.getUserNo(), itemNo);
		
		return "ok";
	}
}
