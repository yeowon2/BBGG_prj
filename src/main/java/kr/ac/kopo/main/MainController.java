package kr.ac.kopo.main;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import kr.ac.kopo.item.service.ItemService;
import kr.ac.kopo.item.web.ItemVO;
import kr.ac.kopo.partner.service.PartnerService;
import kr.ac.kopo.partner.web.PartnerVO;

@Controller
public class MainController {

	@Autowired
	ItemService itemService;

	@Autowired
	PartnerService partnerService;
	
	@GetMapping("/")
	public String index(Model model) {
		
		//최근 업로드된 방 목록 
		List<ItemVO> recentItemList = new ArrayList<ItemVO>();
		recentItemList = itemService.selectRecentList();
		model.addAttribute("recentItemList", recentItemList);
		
		//[파트너]응답률 순위
		List<PartnerVO> respList = new ArrayList<PartnerVO>();
		respList = partnerService.selectRespList();
		model.addAttribute("respList", respList);
		
		return "index";
	}
	
	@GetMapping("/partner")
	public String indexPartner() {
		return "indexPartner";
	}
}
