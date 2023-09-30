package kr.ac.kopo.item.web;

import java.util.List;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.ac.kopo.item.service.ItemService;
import kr.ac.kopo.partner.service.PartnerService;
import kr.ac.kopo.partner.web.PartnerVO;

@Controller
public class ItemController {
	
	@Autowired
	ItemService	service;

	@Autowired
	PartnerService partnerService;
	
	private String path = "item/";
	
	//매물 리스트
	@GetMapping("/itemList")
	public String itemList(Model model) {
		List<ItemVO> list = service.itemList();
		model.addAttribute("list", list);

		return path + "item_list";
	}
		
	//매물 상세페이지
		@GetMapping("/itemSelect/{itemNo}")
		public String itemSelect(ItemVO itemVO, Model model, @PathVariable Long itemNo, 
				HttpServletRequest request, HttpServletResponse response) {
			
			ItemVO result = service.itemSelect(itemVO);
			model.addAttribute("result", result);
			
			// 매물의 상세 정보 또는 어떠한 정보와 함께 쿠키 설정
			// 상세페이지를 다시 들어가게 되면 쿠키 값이 자동으로 업데이트 되지 않음 (일반적으로 쿠키는 만료되거나 명시적으로 수정/삭제되기 전까지 해당 값을 유지함)
			// 이름은 동일하지만 값이 다른 새 쿠키를 생성하므로 사용자가 상세페이지를 다시 들어갔을 때의 쿠키 값을 업데이트 하는 로직을 적어줘야 함 
			
			Cookie[] cookies = request.getCookies();
			String itemDetails = null;
			
			if(cookies != null) {
				for(Cookie cookie : cookies) {
					if("itemDetailsCookie".equals(cookie.getName())) {
						itemDetails = cookie.getValue();
						System.out.println(cookie.getValue());
						break;
					}
				}
			}
			// 우리가 지정해준 itemDetailsCookie의 값이 존재하는지 안 하는지 즉, 쿠키 값이 지정되었었는지 아닌지를 확인하고 지정해주는 코드
			if(itemDetails != null) {
				itemDetails = result.toString(); // 만약 null 값이 아니라면 쿠키 값을 업데이트 해주는 것 
			}else {
				itemDetails = result.toString(); // 만약 null 값이라면 쿠키 값을 새롭게 지정해주는 것 
			}
			
				// 객실 세보 정보(result)를 가져온 후 itemDetailCookie라는 쿠키를 생성하며 이에 대한 추가 속성을 설정해줄 수 있음
				Cookie itemDetailsCookie = new Cookie("itemDetailsCookie", itemDetails);
				itemDetailsCookie.setMaxAge(9600); // 3시간동안 쿠키가 유지되도록 함
				// Http응답에 쿠키를 넣어줄 수 있음
				response.addCookie(itemDetailsCookie);

				return path + "item_select";
		}
	
	//매물 등록
	@GetMapping("/itemAdd")
	public String itemAdd() {
		return path + "itemAdd";
	}
	@PostMapping("/itemAdd")
	public String itemAdd(ItemVO itemVO) {
		service.itemAdd(itemVO);
		
		return "redirect:/itemList";
	}
	
	//파트너 매물 목록 조회
	@GetMapping("/partner/{partnerNo}/itemList")
	public String partItemList(@PathVariable Long partnerNo, Model model) {
		List<ItemVO> partItemList = service.partItemList(partnerNo);
		
		model.addAttribute("partItemList", partItemList);
		return path + "partItemList";
	}
	
	//매물 상태 변경
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
	
	//매물 상세페이지
	@GetMapping("/itemDetail/{itemNo}")
	public String itemDetail(@PathVariable Long itemNo, Model model) {
	    ItemVO itemVO = service.itemDetail(itemNo);
	    PartnerVO partnerVO = partnerService.detail(itemNo);
	    long partnerNo = partnerVO.getPartnerNo();
	    List<ItemVO> partItemList = service.partItemList(partnerNo);
	    for (ItemVO itemVO2 : partItemList) {
			System.out.println("============" + itemVO2.getPrice());
		}
	    
	    
	    model.addAllAttributes(Map.of(
	        "itemVO", itemVO,
	        "partnerVO", partnerVO,
	        "partItemList", partItemList
	    ));

	    return path + "itemDetail";
	}
}

