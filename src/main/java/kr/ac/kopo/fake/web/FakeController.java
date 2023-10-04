package kr.ac.kopo.fake.web;

import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;
import java.util.UUID;

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
import org.springframework.web.multipart.MultipartHttpServletRequest;

import kr.ac.kopo.fake.service.FakeService;
import kr.ac.kopo.user.web.UserVO;

@Controller
@RequestMapping("/fake")
public class FakeController {
	
	@Autowired
	FakeService service;
	
	final String path = "/fake";
	
	@GetMapping("/list")
	public String fakeList(Model model, FakeVO fakeVO) {
		List<FakeVO> list = service.fakeList(fakeVO);
		model.addAttribute("list", list);
		return path + "/list";
	}
	
	@GetMapping("/{itemNo}")
	public String fake(@PathVariable Long itemNo, HttpSession session, Model model) {
		//model.addAttribute("roomNo", roomNo);
		UserVO loginVO =  (UserVO) session.getAttribute("loginVO");
//		System.out.println(loginVO);

//		if(loginVO == null) {
//			model.addAttribute("loginMsg", "로그인 후 이용가능합니다.");
//			model.addAttribute("loginUrl", "/login");
//			return "/alert";
//			}
//		else { // @@@@@@@@@@
//			String userId = loginVO.getUserId();
//		}
		// System.out.println(userId);
		
		if(loginVO != null && loginVO.getUserId() != null && !loginVO.getUserId().equals("")) { 
			return path + "/fakeAdd";
		} else {
			model.addAttribute("loginMsg", "로그인 후 이용가능합니다.");
			model.addAttribute("loginUrl", "/login");
			return "/alert"; 
		}	
	}
	
	@PostMapping("/{itemNo}")
	public String fakeAdd(@PathVariable Long itemNo, HttpSession session, Model model, FakeVO fakeVO, @RequestParam("file") MultipartFile file) {
		model.addAttribute("itemNo", itemNo);
		
		UserVO loginVO =  (UserVO) session.getAttribute("loginVO");
		//System.out.println(loginVO);
		if(loginVO != null) {String userId = loginVO.getUserId();}
		
		if(loginVO != null && loginVO.getUserId() != null && !loginVO.getUserId().equals("") && file != null) {
		
			String uploadFolder = "C:\\Temp\\folder";
			//List<MultipartFile> list = files.getFiles("files");
			String fileRealName = file.getOriginalFilename();
			long size = file.getSize();
			String fileExtension = fileRealName.substring(fileRealName.lastIndexOf("."),fileRealName.length());
			
			
//			if(list.size()!=0) {
//				for(int i=0; i<list.size(); i++) {
//					System.out.println(list.get(i));
//					String fileRealName = list.get(i).getOriginalFilename(); 
					System.out.println("@@@@@@@@@@test");
//					long size = list.get(i).getSize(); 
					
					System.out.println("파일명 : "  + fileRealName);
					System.out.println("용량크기(byte) : " + size);
					System.out.println("확장자 : " + fileExtension);
					//File saveFile = new File(uploadFolder + "\\" + fileRealName);
	
					UUID uuid = UUID.randomUUID();
					System.out.println(uuid.toString());
					String[] uuids = uuid.toString().split("-");
					
					String uniqueName = uuids[0];
					System.out.println("생성된 고유문자열" + uniqueName); 
					
					File saveFile = new File(uploadFolder + "\\" + uniqueName + fileExtension); 
					
//					String uuid = UUID.randomUUID().toString();
					//String saveFile = uploadFolder + File.separator + uuid + "_" + fileRealName;
//					File saveFile = new File(uploadFolder + File.separator + uuid + "_" + fileRealName);
					
					//Path savePath = Paths.get(saveFile);
					
					
					try {
//						list.get(i).transferTo(saveFile); 
						file.transferTo(saveFile);
					} catch (IllegalStateException e) {
						e.printStackTrace();
					} catch (IOException e) {
						e.printStackTrace();
					}  // 여기까지는 OK
					//service.fakeAdd(itemNo, fakeVO, saveFile);
					
					//System.out.println("DB에 저장될 파일명 : " + saveFile);
					model.addAttribute("fakeFinishMsg", "신고가 완료되었습니다.");
					model.addAttribute("fakeFinishUrl", "/itemSelect/3");
					return "/alert";
//				}
//			}
			
			
		} else if (loginVO != null && loginVO.getUserId() != null && !loginVO.getUserId().equals("") && file == null) {
			//service.fakeAdd(itemNo, fakeVO);
			return "/alert";  
		} else {
			model.addAttribute("loginMsg", "로그인 후 이용가능합니다.");
			model.addAttribute("loginUrl", "/login");
			//return "redirect:/roomSelect/{roomNo}";
			return "/alert";
		}
//		return "";
	}
}
