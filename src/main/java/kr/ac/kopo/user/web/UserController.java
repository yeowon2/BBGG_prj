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
@RequestMapping("/user")
public class UserController {

	private final String path = "user/";
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
	public String add(UserVO userVO) {
		service.add(userVO);
		
		return "redirect:/user/list";
	}
	
	@GetMapping("/update/{userNum}")
	public String update(@PathVariable Long userNum, Model model) {
		UserVO userVO = service.select(userNum);
		model.addAttribute("userVO", userVO);
		
		return path + "update";
	}
	
	@PostMapping("/update/{userNum}")
	public String update(@PathVariable Long userNum, UserVO userVO) {
		userVO.setUserNum(userNum);
		service.update(userVO);
		
		return "redirect:../list";
	}
	
	@GetMapping("/delete/{userNum}")
	public String delete(@PathVariable Long userNum) {
		service.delete(userNum);
		
		return "redirect:../list";
	}
}
