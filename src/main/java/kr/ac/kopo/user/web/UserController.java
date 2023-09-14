package kr.ac.kopo.user.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.ac.kopo.pager.Pager;
import kr.ac.kopo.user.service.UserService;

@Controller
@RequestMapping("/member")
public class UserController {

	private final String path = "member/";
	@Autowired
	UserService service;
	
	@GetMapping("/list")
	public String list(Model model, Pager pager) {
		List<UserVO> list = service.list(pager);
		model.addAttribute("list", list);
		return path + "list";
	}
	
	@GetMapping("/add")
	public String add() {
		return path + "add";
	}
	
	@PostMapping("/add")
	public String add(UserVO memberVO) {
		service.add(memberVO);
		
		return "redirect:/list";
	}
	
	@GetMapping("/update/{userId}")
	public String update(@PathVariable String userId, Model model) {
		UserVO userVO = service.select(userId);
		model.addAttribute("userVO", userVO);
		
		return path + "update";
	}
	
	@PostMapping("/update/{userId}")
	public String update(@PathVariable String userId, UserVO userVO) {
		userVO.setUserId(userId);
		service.update(userVO);
		
		return "redirect:../list";
	}
	
	@GetMapping("/delete/{userId}")
	public String delete(@PathVariable String userId) {
		service.delete(userId);
		
		return "redirect:../list";
	}
}
