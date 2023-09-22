package kr.ac.kopo.note.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.ac.kopo.note.service.NoteService;
import kr.ac.kopo.pager.Pager;

@Controller
@RequestMapping("/note/send")
public class SendController {
	
	private String path = "note/send/";
	
	@Autowired
	NoteService service;
	
	@GetMapping("/list")
	public String list(Model model, NoteVO noteVO) {
		List<NoteVO> sendList = service.sendList(noteVO);
		model.addAttribute("sendList", sendList);
		
		return path + "list4";
	}
	
	@GetMapping("/detail/{noteNo}")
	@ResponseBody // JSON 응답을 생성합니다.
	public NoteVO detail(@PathVariable Long noteNo) {
		NoteVO noteVO = service.select(noteNo);
		return noteVO;
	}
}
