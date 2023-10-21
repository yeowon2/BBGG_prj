package kr.ac.kopo.fake.web;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import kr.ac.kopo.fake.service.FakeService;
import kr.ac.kopo.pager.Pager;
import kr.ac.kopo.user.web.UserVO;

@Controller
@RequestMapping("/fake")
public class FakeController {
	
	@Autowired
	FakeService service;
	
	final String path = "/fake";
	
	@GetMapping("/list")
	public String fakeList(Model model, Pager pager) {
		List<FakeVO> fakeList = service.fakeList(pager);
		model.addAttribute("fakeList", fakeList);
		return path + "/fakeList";
	}
	
	@GetMapping("/list{fakeNo}")
	public String fakeSelect(@PathVariable Long fakeNo, FakeVO fakeVO, Model model) {
		fakeVO = service.fakeListOne(fakeNo);
		
		model.addAttribute("fakeVO", fakeVO);
		return "/fake/fakeContent";
	}
	
	@GetMapping("/{itemNo}")
	public String fake(@PathVariable Long itemNo, HttpSession session, Model model) {
		UserVO loginVO = (UserVO) session.getAttribute("loginVO");
		
		if(loginVO != null && loginVO.getUserId() != null && !loginVO.getUserId().equals("")) { 
			return path + "/fakeAdd";
		} else {
			model.addAttribute("loginMsg", "로그인 후 이용가능합니다.");
			model.addAttribute("loginUrl", "/login");
			return "/alert"; 
		}	
	}
	
	@PostMapping("/{itemNo}")
	public String fakeAdd(@PathVariable Long itemNo, HttpSession session, Model model, 
						FakeVO fakeVO, FakeFileVO uploadVO, @RequestParam(required = false) MultipartFile file,
						HttpServletRequest request) throws Exception {
		model.addAttribute("itemNo", itemNo);
		
		String userId = null;
		
		UserVO loginVO = (UserVO) session.getAttribute("loginVO");
		
		if(loginVO != null) {userId = loginVO.getUserId();}
		
		if(loginVO != null && userId != null && !userId.equals("") && !file.isEmpty()) {

			String uploadFolder = "C:\\Temp\\folder";

			String originalFileName = file.getOriginalFilename();
			long fileSize = file.getSize();
			String fileExtension = originalFileName.substring(originalFileName.lastIndexOf("."), originalFileName.length());
			
			//System.out.println("파일명 : "  + originalFileName);
			//System.out.println("용량크기(byte) : " + fileSize);
			//System.out.println("확장자 : " + fileExtension);

			UUID uuid = UUID.randomUUID();
			System.out.println(uuid.toString());
			String[] uuids = uuid.toString().split("-");
			
			String uniqueFileName = uuids[0];
			//System.out.println("생성된 고유문자열 : " + uniqueFileName); 
			
			String savedFileName = uploadFolder + "\\" + "fake_" + uniqueFileName + fileExtension;
			File saveFile = new File(uploadFolder + "\\" + "fake_" + uniqueFileName + fileExtension); 
			System.out.println("DB에 저장될 파일명? : " + savedFileName); 
			System.out.println("DB에 저장될 파일명? : " + saveFile); 
			
			uploadVO.setOriginalFileName(originalFileName);
			uploadVO.setUniqueFileName(uniqueFileName);
			uploadVO.setFileExtension(fileExtension);
			uploadVO.setSavedFileName(savedFileName);
			uploadVO.setFileSize(fileSize);
			
			fakeVO.setAgreeAt(request.getParameter("agreeAt"));
			fakeVO.setFakeCheck1(request.getParameter("fakeCheck1"));
			fakeVO.setFakeCheck2(request.getParameter("fakeCheck2"));
			fakeVO.setFakeCheck3(request.getParameter("fakeCheck3"));
			fakeVO.setFakeContent(request.getParameter("fakeContent"));
			
			try {
				file.transferTo(saveFile); 
			} catch (IllegalStateException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}  
			service.fakeAdd(itemNo, fakeVO, uploadVO, saveFile, userId);
			
			model.addAttribute("fakeFinishMsg", "신고가 완료되었습니다.");
			model.addAttribute("fakeFinishUrl", "/itemList"); 
			return "/alert";			
			
		} else if (loginVO != null && loginVO.getUserId() != null && !loginVO.getUserId().equals("") && file.isEmpty()) {
			
			fakeVO.setAgreeAt(request.getParameter("agreeAt"));
			fakeVO.setFakeCheck1(request.getParameter("fakeCheck1")); 
			fakeVO.setFakeCheck2(request.getParameter("fakeCheck2")); 
			fakeVO.setFakeCheck3(request.getParameter("fakeCheck3")); 
			fakeVO.setFakeContent(request.getParameter("fakeContent")); 
			
			service.fakeAdd(itemNo, fakeVO, userId);
			model.addAttribute("fakeFinishMsg", "신고가 완료되었습니다.");
			model.addAttribute("fakeFinishUrl", "/itemList"); 
			return "/alert";  
		} else {
			model.addAttribute("loginMsg", "로그인 후 이용가능합니다.");
			model.addAttribute("loginUrl", "/login");
			//return "redirect:/roomSelect/{roomNo}";
			return "/alert";
		}
	}
	
	@GetMapping("/listOne/{fakeNo}")
	String modal(FakeVO fakeVO, @PathVariable String fakeNo, Model model) {
		fakeVO = service.modal(fakeNo);
        model.addAttribute("fakeVO", fakeVO);
		return "/fake/fakeTable";
	}
	
//	@PostMapping("/listOne/{fakeNo}")
//	String modal(FakeVO fakeVO, @PathVariable String fakeNo, HttpServletRequest request, Model model) {
//		//String fakeNo = request.getParameter("fakeNo");
//        fakeVO = service.modal(fakeNo);
//        model.addAttribute("fakeVO", fakeVO);
//        
//		return "/fake/fakeTable";
//	}
	
	@GetMapping("/update{itemNo}")
	String fakeUpdate(@PathVariable Long itemNo) {
		service.fakeUpdate(itemNo);
		return "/fake/fakeList";
	}
	
	@GetMapping("/delete{itemNo}")
	String fakeDelete(@PathVariable Long itemNo) {
		service.fakeUpdate(itemNo);
		return "/fake/fakeList";
	}
	
	@GetMapping("test")
	String test() {
		return "/fake/fakeTable";
	}
	
	
}
