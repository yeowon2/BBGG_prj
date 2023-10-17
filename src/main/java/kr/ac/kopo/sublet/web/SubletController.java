//package kr.ac.kopo.sublet.web;
//
//import java.util.List;
//
//import javax.servlet.http.HttpSession;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.RequestMapping;
//
//import kr.ac.kopo.user.web.UserVO;
//
//@Controller
//@RequestMapping("/sublet")
//public class SubletController {
//	
//	private String path = "sublet/";
//
//	@Autowired 
//	//SubletService service;
//	
//	//@GetMapping("/list")
//	//public String list(Model model) {
//		//List<SubletVO> subletList =  service.selectList();
//		//model.addAttribute("subletList", subletList);
//	//}
//	
//	@GetMapping("/add")
//	public String add(HttpSession session) {
//		UserVO loginVO = (UserVO) session.getAttribute("loginVO");
//		if(loginVO == null) {
//			
//			return "redirect:/login";
//		}
//		
//		return path + "add";
//	}
//	
//}
