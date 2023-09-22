package kr.ac.kopo.note.web;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.ac.kopo.note.service.NoteService;

@Controller
@RequestMapping("/main/note/send")
public class SendController {
	
	private String path = "note/send/";
	
	@Autowired
	NoteService service;
	
	@GetMapping("/list/{userNo}")
	public String list(@PathVariable Long userNo,  Model model, NoteVO noteVO ) {
		noteVO.setUserNo(userNo);
		List<NoteVO> sendList = service.sendList(noteVO);
		model.addAttribute("sendList", sendList);
		System.out.println("userNo:" + noteVO.getUserNo()) ;
		
		return path + "list";
	}
	
	@GetMapping("/detail/{userNo}/{noteNo}")
	@ResponseBody // JSON 응답을 생성합니다.
	public NoteVO detail(@PathVariable Long userNo, 
						@PathVariable Long noteNo) {
		Map<String, Long> paramMap = new HashMap<String, Long>();
	    paramMap.put("userNo", userNo);
	    paramMap.put("noteNo", noteNo);
		
		NoteVO noteVO = service.select(paramMap);
		
		return noteVO;
	}
}
