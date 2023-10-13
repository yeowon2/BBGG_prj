package kr.ac.kopo.item.web;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import kr.ac.kopo.file.FileMngUtil;
import kr.ac.kopo.file.FileService;
import kr.ac.kopo.file.FileVO;
import kr.ac.kopo.item.service.ItemService;
import kr.ac.kopo.partner.service.PartnerService;
import kr.ac.kopo.partner.web.PartnerVO;

@Controller
public class ItemController {
	private static final Logger logger = LoggerFactory.getLogger(ItemController.class);
	
	private final String fileStorePath = "D:/upload";
	
	@Autowired
	ItemService	service;

	@Autowired
	PartnerService partnerService;
	

    @Autowired
    FileService fileService;
    
    @Autowired
    FileMngUtil fileUtil;
    
	
	private String path = "item/";
	
	//매물 리스트
	@GetMapping("/itemList")
	public String itemLists(Model model, ItemVO itemVO) {
		List<ItemVO> list = service.itemList(itemVO);
		model.addAttribute("list", list);
		return path + "item_list";
	}
	@PostMapping("/itemList")
	public String itemList(Model model, ItemVO itemVO) {
		List<ItemVO> list = service.itemList(itemVO);
		model.addAttribute("list", list);
		return path + "item_list";
	}
	
	//매물 상세페이지
	@GetMapping("/itemDetail/{itemNo}")
	public String itemDetail(@PathVariable Long itemNo, Model model) {
		ItemVO itemVO = service.itemDetail(itemNo);
		if(itemVO.getLeasePrice() >= 10000) {
			int leaseBillion = (int)(itemVO.getLeasePrice() / 10000);
			int leaseTenMillion = (int)(itemVO.getLeasePrice() % 10000);
			model.addAttribute("LB",leaseBillion);
			model.addAttribute("LTM",leaseTenMillion);
		}
		PartnerVO partnerVO = partnerService.detail(itemNo);
		long partnerNo = partnerVO.getPartnerNo();
		List<ItemVO> partItemList = service.partItemList(partnerNo);
		logger.info("=============lat = {}",itemVO.getLat());
		logger.info("lng = {}",itemVO.getLng() );
		    
		model.addAllAttributes(Map.of(
			"itemVO", itemVO,
			"partnerVO", partnerVO,
			"partItemList", partItemList
		));

		return path + "itemDetail";
	}
	
	//매물 등록폼 이동
	@GetMapping("/partner/{partnerNo}/itemAdd")
	public String itemAdd(@PathVariable Long partnerNo) {
		return path + "itemAdd2";
	}
	
	//매물 등록 
	@PostMapping("/partner/{partnerNo}/itemAdd")
	public String itemAdd(@PathVariable Long partnerNo, ItemVO itemVO, final MultipartHttpServletRequest multiRequest) throws Exception{
		itemVO.setPartnerNo(partnerNo);
		
		//매물사진 업로드처리
		List<FileVO> fileVOList = null;
		
        final Map<String, MultipartFile> files = multiRequest.getFileMap();
        if(!files.isEmpty()) {
        	fileVOList = fileUtil.parseFileInfo(files, "ITEM_", fileStorePath);
        }
        
		service.itemAdd(itemVO, fileVOList);
		
		return "redirect:/partner/{partnerNo}/itemList";
	}
	
	//파트너 매물 목록 조회
	@GetMapping("/partner/{partnerNo}/itemList")
	public String partItemList(@PathVariable Long partnerNo, Model model) {
		List<ItemVO> partItemList = service.partItemList(partnerNo);
		
		model.addAttribute("partItemList", partItemList);
		return path + "partItemList";
	}
	
	//매물 거래 상태 변경
	@PostMapping("/updateStatus")
	@ResponseBody
	public String updateStatus( 
			@RequestParam("itemNo") Long itemNo
			)
	{
		 try {
	            service.updateStatus(itemNo);
           String status = service.selectStatus(itemNo);
	            return status;
	        } catch (Exception e) {
	            e.printStackTrace();
	            return "Error";
	        }
	}
	
	// 매물 삭제
	@PostMapping("/deleteItem")
	@ResponseBody
	public String deleteItem( 
			@RequestParam("itemNo") Long itemNo
			)
	{
		 try {
	            service.deleteItem(itemNo);
	            return "Success";
	        } catch (Exception e) {
	            e.printStackTrace();
	            return "Error";
	        }
	}
	
}
