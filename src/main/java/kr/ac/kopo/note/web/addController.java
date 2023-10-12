package kr.ac.kopo.note.web;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.ac.kopo.note.service.NoteService;
import kr.ac.kopo.user.web.UserVO;

@Controller
@RequestMapping("/note")
public class addController {
	
private String path = "note/send/";
	
	@Autowired
	NoteService service;

	@GetMapping("/{itemNo}/add")
	public String add(@PathVariable Long itemNo) {

		return path + "add";
	}
	
	@PostMapping("/{itemNo}/add")
	public String add(@PathVariable Long itemNo, NoteVO noteVO, HttpSession session) {
		
		UserVO loginVO = (UserVO) session.getAttribute("loginVO");
		if(loginVO == null) {
			return "redirect:/login";
		}
		noteVO.setUserNo(loginVO.getUserNo());
		service.add(itemNo, noteVO);
		
		return "redirect:/itemDetail/{itemNo}";
	}
	
//	@PostMapping("/{itemNo}/add")
//	@ResponseBody
//	public ResponseEntity<String> add(@PathVariable Long itemNo, NoteVO noteVO, HttpSession session){
//		UserVO loginVO = (UserVO) session.getAttribute("loginVO");
//		
//		 // 세션에 로그인 정보가 없는 경우
//	    if (loginVO == null) {
//	        // 실패 응답 반환
//	        return ResponseEntity.status(HttpStatus.UNAUTHORIZED).body("로그인이 필요합니다.");
//	    }
//	    
//	 	noteVO.setUserNo(loginVO.getUserNo());
//	 	service.add(itemNo, noteVO);
//	 	return ResponseEntity.ok("쪽지가 성공적으로 전송되었습니다.");
//	}
}