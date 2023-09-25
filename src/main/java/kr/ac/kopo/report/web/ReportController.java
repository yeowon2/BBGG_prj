package kr.ac.kopo.report.web;

import java.io.Console;
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
import org.springframework.web.multipart.MultipartFile;

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
	
	final String path = "/report";
	
	// 관리자가보는 신고 리스트
	@GetMapping("list")
	public String reportList(Model model, ReportVO reportVO) {
		List<ReportVO> list = service.reportList(reportVO);
		model.addAttribute("list", list);

		return path + "/list";
	}
	
	// 허위매물 신고 메인(O)
	@GetMapping("/{roomNo}")
	public String report(@PathVariable Long roomNo, HttpSession session) {
		if(session.getId() != null) { //@@@@@@@@@@
			return path + "/reportAdd";
		} else {
			return "/login";
		}
		
	}
	
	// 모달창에서 작성하고, 버튼누르면
	@GetMapping("/add/{roomNo}")
	public String reportAdd(@PathVariable Long roomNo, HttpSession session) {
		if(session.getId() != null) { //@@@@@@@@@@
			return path + "/addAct/{roomNo}";
		} else {
			return "login";
		} 
	}
	
	
	// 진짜 허위매물 신고 모달창보여드려요
	@PostMapping("/addAct/{roomNo}")
	public String reportAddAct(@PathVariable Long roomNo, HttpSession session, MultipartFile File) {
		if(session.getId() != null) { //@@@@@@@@@@
			System.out.println("출력문확인");
			System.out.println(File.getOriginalFilename()); 
			System.out.println(File.getSize());
			System.out.println("작성되었습니다.");
			return path + "/reportAdd";
		}
		
		return "/login";
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
