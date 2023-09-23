package kr.ac.kopo.report.web;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.ac.kopo.note.service.NoteService;
import kr.ac.kopo.note.web.NoteVO;
import kr.ac.kopo.report.service.ReportService;
import kr.ac.kopo.room.service.RoomService;
import kr.ac.kopo.room.web.RoomVO;
import kr.ac.kopo.user.web.UserVO;

@Controller
@RequestMapping("/report")
public class ReportController {
	
	@Autowired
	ReportService service;
	
	@Autowired
	RoomService	roomService;	
	
	final String path = "/report";
	
	// 관리자가보는 신고 리스트
	@GetMapping("list")
	public String reportList(Model model, ReportVO reportVO) {
		List<ReportVO> list = service.reportList(reportVO);
		model.addAttribute("list", list);

		return path + "/list";
	}
	
	// 허위매물 신고 메인
//	@GetMapping("/agree")
//	public String report(RoomVO roomVO,  Model model) {
//		Long roomNo = roomVO.getRoomNo();
//		model.addAttribute("roomNo", roomNo);
//		
//		return path + "/report";
//	}
	
	// 허위매물 신고 모달창불러오기
	@GetMapping("/add")
	public String reportAdd(RoomVO roomVO, Model model, HttpSession session) {
		if(session.getId() != null) { //@@@@@@@@@@
			Long roomNo = roomVO.getRoomNo();
			model.addAttribute("roomNo", roomNo);
			return path + "/add/{roomNo}";
		} else {
			return "login";
		} 
	}
	
	// 진짜 허위매물 신고 모달창보여드려요
	@PostMapping("/add/{roomNo}")
	public String reportAdd(@ModelAttribute UserVO userVO, HttpSession session, RoomVO roomVO, Model model) {
		if(userVO.getUserId() == session.getId()) { //@@@@@@@@@@
			Long roomNo = roomVO.getRoomNo();
			model.addAttribute("roomNo", roomNo);
			return "a";
		}
		return "";
	}
	
	// 허위 매물 진짜로 등록 
	@GetMapping("/addCom")
	public String reportAddCom(@ModelAttribute UserVO userVO, RoomVO roomNo, HttpSession session, Model model) {
		ReportVO repoInfo = service.repoInfo(roomNo); // 매물번호로 repoInfo 객체 생성
		
		model.addAttribute("repoInfo", repoInfo);
		return path + "comp";
	}
	
	@PostMapping("/addCom")
	public String reportAddCom(ReportVO repoInfo, Model model) {
		
		//repoInfo.setRoomNo();
		
		//service.update(repoInfo);
		return "";
	}
}
