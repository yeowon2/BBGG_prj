package kr.ac.kopo.note.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.ac.kopo.note.service.NoteService;
import kr.ac.kopo.pager.Pager;

@Controller
@RequestMapping("/note")
public class NoteController {

	@Autowired 
	NoteService service;
	
	private String path = "note/";

	@GetMapping("/list")
	public String list(Model model, Pager pager) {
		List<NoteVO> list = service.list(pager);
		model.addAttribute("list", list);
		
		return path + "list";
	}
	
	@GetMapping("/detail/{noteNo}")
	public String detail(Model model, @PathVariable Long noteNo) {
		NoteVO noteVO = service.select(noteNo);
		model.addAttribute("noteVO", noteVO);
		return path + "detail";
	}
	
	@GetMapping("/add")
	public String add() {
		
		return path + "add";
	}
	
	@PostMapping("/add")
	public String add(NoteVO noteVO) {
		service.add(noteVO);
		
		return "forward:/note/list";
	}
	
	@GetMapping("/update/{noteNo}")
	public String update(@PathVariable Long noteNo, Model model) {

		NoteVO noteVO = service.select(noteNo);
		model.addAttribute("noteVO", noteVO);
		
		return path + "update";
	}
	
	@PostMapping("/update/{noteNo}")
	public String update(@PathVariable Long noteNo, NoteVO noteVO) {
		noteVO.setNoteNo(noteNo);
		service.update(noteVO);
		
		return "forward:/note/list";
	}
	
	@GetMapping("/delete/{noteNo}")
	public String delete(@PathVariable Long noteNo) {
		service.delete(noteNo);

		return "forward:/note/list";
	}
	
}
	
