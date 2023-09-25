package kr.ac.kopo.login.web;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import kr.ac.kopo.login.service.LoginService;
import kr.ac.kopo.partner.web.PartnerVO;
import kr.ac.kopo.user.web.UserVO;

@Controller
public class LoginController {

	@Autowired
	private LoginService loginService;


	//로그인 화면 
	@GetMapping("/login")
	public String login(@ModelAttribute UserVO userVO, Model model, HttpSession session, HttpServletRequest request) {

		return "login/login";
	};
	
	//로그인 화면 
	@GetMapping("/partner/login")
	public String login(@ModelAttribute PartnerVO partnerVO, Model model, HttpSession session, HttpServletRequest request) {
		
		return "login/login";
	};
	
	//로그인 처리
	@PostMapping("/actionLogin")
	public String actionLogin(@ModelAttribute UserVO userVO, Model model, HttpSession session, HttpServletResponse response) {
		UserVO loginVO = loginService.actionLogin(userVO);
		if(loginVO != null && loginVO.getUserId() != null && !loginVO.getUserId().equals("")) {
			session.setAttribute("loginVO", loginVO);
			
			 // "로그인 유지" 옵션 확인
	        if (userVO.isRememberMe()) {
	            // "로그인 유지" 쿠키 생성 및 클라이언트로 전송
	            Cookie loginCookie = new Cookie("loginCookie", userVO.getUserId());
	            loginCookie.setMaxAge(60 * 60 * 24 * 7); // 1주일 동안 유지
	            loginCookie.setPath("/"); // 전체 애플리케이션에 대한 유효 경로 설정
	            response.addCookie(loginCookie);
	        }
			
			return "redirect:/";
		} else {
			model.addAttribute("loginMessage", "로그인 정보가 올바르지 않습니다.");
			return "redirect:/login";
		}
	}
	
	
	//로그아웃 처리
	@GetMapping("/actionLogout")
	public String actionLogout(Model model, HttpSession session) {
		session.invalidate();
		
		return "redirect:/";
	}
}
