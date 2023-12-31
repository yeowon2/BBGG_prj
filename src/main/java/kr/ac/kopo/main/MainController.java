package kr.ac.kopo.main;

import java.nio.file.FileSystemLoopException;
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
		for (ItemVO itemVO : recentItemList) {
			System.out.println("==============" + itemVO.getAddress2());
		}
		model.addAttribute("recentItemList", recentItemList);
		
		//[파트너]응답률 순위
		List<PartnerVO> respList = new ArrayList<PartnerVO>();
		respList = partnerService.selectRespList();
		for (PartnerVO partnerVO : respList) {
			System.out.println("==============" + partnerVO.getFileVO().getSavedName());
		}
		       
		model.addAttribute("respList", respList);
		
		//인기 매물 순위 방 목록
		List<ItemVO> popularItemList = new ArrayList<ItemVO>();
		popularItemList = itemService.selectPopularList();
		model.addAttribute("popularItemList", popularItemList);
		
		return "index";
	}
	
	@GetMapping("/partner")
	public String indexPartner() {
		return "indexPartner";
	}
}
