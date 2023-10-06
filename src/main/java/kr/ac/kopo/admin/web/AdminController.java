package kr.ac.kopo.admin.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import kr.ac.kopo.admin.service.AdminService;
import kr.ac.kopo.item.web.ItemVO;
import kr.ac.kopo.partner.web.PartnerVO;
import kr.ac.kopo.user.web.UserVO;

@Controller
public class AdminController {

	/*
	 * @Autowired UserService userService;
	 * 
	 * @Autowired PartnerService partnerService;
	 * 
	 * @Autowired ItemService itemService;
	 */
	
	@Autowired 
	AdminService adminService;
	
	@GetMapping("/admin")
	public String admin(Model model, UserVO userVO, PartnerVO partnerVO, ItemVO itemVO) {
		List<UserVO> userList = adminService.userList(userVO);
		model.addAttribute("userList", userList);
		
		List<PartnerVO> partnerList = adminService.partnerList(partnerVO);
		model.addAttribute("partnerList", partnerList);
		
		List<ItemVO> itemList = adminService.itemList(itemVO);
		model.addAttribute("itemList", itemList);
		
		return "/indexAdmin";
	}
	
	
}
