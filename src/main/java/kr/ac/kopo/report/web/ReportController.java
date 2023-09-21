package kr.ac.kopo.report.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ReportController {

	// 허위 매물 신고 화면(우선 페이지로)
	@GetMapping("/report")
	public String declare() {
		final String path = "report/";
		
		//////////
		// 본인인증된 사람만
		//////////
		
		// 신고하기 페이지 볼 수 있음
		return path + "add";
	}
	
	// 신고 처리
	public String actionDeclare() {
		
		return "";
	}
}
