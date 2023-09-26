package kr.ac.kopo.fake.web;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import kr.ac.kopo.fake.service.FakeService;
import kr.ac.kopo.user.web.UserVO;

@Controller
@RequestMapping("/fake")
public class FakeController {
	
	@Autowired
	FakeService service;	
	
	final String path = "/fake";
	
	@GetMapping("list")
	public String fakeList(Model model, FakeVO fakeVO) {
		List<FakeVO> list = service.fakeList(fakeVO);
		model.addAttribute("list", list);
		return path + "/list";
	}
	
	@GetMapping("/{roomNo}")
	public String fake(@PathVariable Long roomNo, HttpSession session, Model model) {
		//model.addAttribute("roomNo", roomNo);
		UserVO loginVO =  (UserVO) session.getAttribute("loginVO");
		System.out.println(loginVO);
		if(loginVO != null) {String userId = loginVO.getUserId();}
		// System.out.println(userId);
		
		if(loginVO != null && loginVO.getUserId() != null && !loginVO.getUserId().equals("")) { 
			return path + "/fakeAdd";
		} else {
			model.addAttribute("loginMsg", "로그인 후 이용가능합니다.");
			model.addAttribute("loginUrl", "/login");
			return "/alert"; 
		}	
	}
	
	@PostMapping("/{roomNo}")
	public String fakeAdd(@PathVariable Long roomNo, HttpSession session, Model model, FakeVO fakeVO, MultipartHttpServletRequest files) {
		model.addAttribute("roomNo", roomNo);
		
		UserVO loginVO =  (UserVO) session.getAttribute("loginVO");
		//System.out.println(loginVO);
		if(loginVO != null) {String userId = loginVO.getUserId();}
		
		if(loginVO != null && loginVO.getUserId() != null && !loginVO.getUserId().equals("")) {
		
			String uploadFolder = "D:\\TECH\\PROJECT\\files";
			List<MultipartFile> list = files.getFiles("files");
			for(int i=0; i<list.size(); i++) {
				String fileRealName = list.get(i).getOriginalFilename(); 
				long size = list.get(i).getSize(); 
				
				//System.out.println("파일명 : "  + fileRealName);
				//System.out.println("용량크기(byte) : " + size);
				File saveFile = new File(uploadFolder + "\\" + fileRealName);
				try {
					list.get(i).transferTo(saveFile); 
				} catch (IllegalStateException e) {
					e.printStackTrace();
				} catch (IOException e) {
					e.printStackTrace();
				} 
				service.fakeAdd(roomNo, fakeVO, saveFile);
				
				//System.out.println("DB에 저장될 파일명 : " + saveFile);
				model.addAttribute("fakeFinishMsg", "신고가 완료되었습니다.");
				model.addAttribute("fakeFinishMsg", "redirect:/roomSelect/{roomNo}"); // @@@@@@@@@@
				return "alert";
			}
		}
		
			model.addAttribute("loginMsg", "로그인 후 이용가능합니다.");
			model.addAttribute("loginUrl", "/login/login");
			//return "redirect:/roomSelect/{roomNo}";
			return "/alert";  
	}
}
