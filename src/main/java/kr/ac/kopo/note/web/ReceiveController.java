package kr.ac.kopo.note.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.ac.kopo.note.service.NoteService;

@Controller
@RequestMapping("/note")
public class ReceiveController {

	@Autowired
	NoteService service;

	private String path = "note/receive/";

	@GetMapping("/receiveList/{partnerNo}")
	public String receiveList(@PathVariable Long partnerNo, Model model, NoteVO noteVO) {
		noteVO.setPartnerNo(partnerNo);
		List<NoteVO> receiveList = service.receiveList(noteVO);
		model.addAttribute("receiveList", receiveList);

		return path + "noteList";
	}
	


//	@GetMapping("/detail/{noteNo}")
//	public String detail(Model model, @PathVariable Long noteNo) {
//		NoteVO noteVO = service.select(noteNo);
//		model.addAttribute("noteVO", noteVO);
//		return path + "detail";
//	}

	@GetMapping("/receiveDetail/{noteNo}")
	@ResponseBody // JSON 응답을 생성합니다.
	public NoteVO detail(@PathVariable Long noteNo) {
		NoteVO noteVO = service.receiveDetail(noteNo);
		return noteVO;
	}

	

	/*
	 * @GetMapping("/update/{noteNo}") public String update(@PathVariable Long
	 * noteNo, Model model) {
	 * 
	 * NoteVO noteVO = service.select(noteNo); model.addAttribute("noteVO", noteVO);
	 * 
	 * return path + "update"; }
	 */

	@PostMapping("/update/{noteNo}")
	public String update(@PathVariable Long noteNo, NoteVO noteVO) {
		noteVO.setNoteNo(noteNo);
		service.update(noteVO);

		return "redirect:/note/list";
	}

	@GetMapping("/delete/{noteNo}")
	public ResponseEntity<String> delete(@PathVariable Long noteNo) {
		boolean deleted = service.delete(noteNo);

		if (deleted) {
			// 삭제 성공 시 200 OK 응답을 반환
			return ResponseEntity.ok("Success");
		} else {
			// 삭제 실패 시 500 Internal Server Error 응답을 반환
			return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body("Update failed");
		}

	}

}
