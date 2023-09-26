package kr.ac.kopo.partner.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.ac.kopo.pager.Pager;
import kr.ac.kopo.partner.service.PartnerService;

@Controller
@RequestMapping("/partner")
public class PartnerController {

	private final String path = "partner/";
	
	@Autowired
	PartnerService service;
	
	@GetMapping("/{partnerNo}")
	public String partner(@PathVariable Long partnerNo, Model model) {
		PartnerVO partnerVO = service.select(partnerNo);
		model.addAttribute("partnerVO", partnerVO);
		
		
		return "indexPartner";
	}
	
	/*
	 * @GetMapping("/{partnerNo}")
	 * 
	 * @ResponseBody public PartnerVO detail(@PathVariable Long partnerNo, Model
	 * model) { PartnerVO partnerVO = service.detail(partnerNo);
	 * 
	 * return partnerVO; }
	 */
	
	@GetMapping("/list")
	public String list(Model model, Pager pager) {
		List<PartnerVO> list = service.list(pager);
		model.addAttribute("list", list);
		return path + "list";
	}
	
	@GetMapping("/add")
	public String add() {
		return path + "signup";
	}
	
	@PostMapping("/add")
	public String add(PartnerVO partnerVO) {
		service.add(partnerVO);
		
		return "redirect:/partner";
	}
	
	@GetMapping("/update/{partnerNo}")
	public String update(@PathVariable Long partnerNo, Model model) {
		PartnerVO partnerVO = service.select(partnerNo);
		model.addAttribute("partnerVO", partnerVO);
		
		return path + "update";
	}
	
	@PostMapping("/update/{partnerNo}")
	public String update(@PathVariable Long partnerNo, PartnerVO partnerVO) {
		partnerVO.setPartnerNo(partnerNo);
		service.update(partnerVO);
		
		return "redirect:../list";
	}
	
	@GetMapping("/delete/{partnerNo}")
	public String delete(@PathVariable Long partnerNo) {
		service.delete(partnerNo);
		
		return "redirect:../list";
	}
}
