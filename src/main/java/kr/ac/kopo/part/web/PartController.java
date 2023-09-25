package kr.ac.kopo.part.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.ac.kopo.pager.Pager;
import kr.ac.kopo.part.service.PartService;
import kr.ac.kopo.user.web.UserVO;

@Controller
@RequestMapping("/part")
public class PartController {

	private final String path = "part/";
	@Autowired
	PartService service;
	
	@GetMapping("/list")
	public String list(Model model, Pager pager) {
		List<PartVO> list = service.list(pager);
		model.addAttribute("list", list);
		return path + "list";
	}
	
	@GetMapping("/add")
	public String add() {
		return path + "signup";
	}
	
	@PostMapping("/add")
	public String add(PartVO partVO) {
		service.add(partVO);
		
		return "redirect:/";
	}
	
	@GetMapping("/update/{partVO}")
	public String update(@PathVariable Long partNo, Model model) {
		PartVO partVO = service.select(partNo);
		model.addAttribute("partVO", partVO);
		
		return path + "update";
	}
	
	@PostMapping("/update/{partNo}")
	public String update(@PathVariable Long partNo, PartVO partVO) {
		partVO.setPartNo(partNo);
		service.update(partVO);
		
		return "redirect:../list";
	}
	
	@GetMapping("/delete/{partNo}")
	public String delete(@PathVariable Long partNo) {
		service.delete(partNo);
		
		return "redirect:../list";
	}
}
