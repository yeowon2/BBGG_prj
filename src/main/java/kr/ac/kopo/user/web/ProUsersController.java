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
import kr.ac.kopo.user.service.ProUsersService;


@Controller
@RequestMapping("/prousers")
public class ProUsersController {

	private final String path = "pro/";
	@Autowired
	ProUsersService service;
	
	@GetMapping("/prolist")
	public String list(Model model, Pager pager) {
		List<ProUsersVO> list = service.list(pager);
		model.addAttribute("list", list);
		return path + "list";
	}
	
	@GetMapping("/proadd")
	public String add() {
		return path + "add";
	}
	@PostMapping("/proadd")
	public String add(ProUsersVO proVO) {
		service.add(proVO);
		
		return "redirect:/prousers/prolist";
	}
	
	@GetMapping("/proupdate/{proUnumber}")
	public String update(@PathVariable Long proUnumber, Model model) {
		ProUsersVO proVO = service.select(proUnumber);
		model.addAttribute("proVO", proVO);
		
		return path + "update";
	}
	@PostMapping("/proupdate/{proUnumber}")
	public String update(@PathVariable Long proUnumber, ProUsersVO proVO) {
		proVO.setProUnumber(proUnumber);
		service.update(proVO);
		
		return "redirect:../prolist";
	}
	
	@GetMapping("/prodelete/{proUnumber}")
	public String delete(@PathVariable Long proUnumber) {
		service.delete(proUnumber);
		
		return "redirect:../prolist";
	}
}
