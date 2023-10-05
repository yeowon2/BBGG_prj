package kr.ac.kopo.list.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import kr.ac.kopo.list.service.UserWishListService;

@Controller
public class UserWishListController {
	@Autowired
	UserWishListService service;

	private final String path = "list/";

	// 쿠키 생성 후 나타내기 -> 스크립트로 적기 위해서 주석처리
	/*
	 * @GetMapping("/recentList") public String recentList(Model model,
	 * HttpServletRequest request, HttpServletResponse response) {
	 * 
	 * // cookie Cookie[] cookies = request.getCookies(); List <UserWishListVO>
	 * rList = new ArrayList<UserWishListVO>();
	 * 
	 * if(cookies != null) { // 방넘버를 저장하기 위해서 리스트 생성 List<String> itemNumbers = new
	 * ArrayList<String>();
	 * 
	 * for (int i = cookies.length-1; i>=0; i--) {
	 * 
	 * // 루프 내에서 쿠키 이름이 특정형식으로 시작하는지 확인함
	 * if(cookies[i].getName().startsWith("itemDetailsCookie")) { // RoomNo인 no
	 * String no = cookies[i].getValue(); // 넘버를 묶어서 리스트나 배열로 넘기면 최종적으로 쿼리할 때 where
	 * 절로 가지고 오도록
	 * 
	 * // VO의 리스트에다가 새롭게 rvo를 저장해준다 itemNumbers.add(no); } // 서비스 메소드에다가 방 넘버 리스트를
	 * 넘겨줌 List<UserWishListVO> uwvoList = service.recentView(itemNumbers);
	 * 
	 * // rList.addAll(uwvoList); } } model.addAttribute("rList", rList); // size라는
	 * 속성을 추가함으로써 rList(최근 본 제품 목록)의 크기(요소 수)를 제공하여 JSP에서 사용
	 * model.addAttribute("size", rList.size());
	 * 
	 * return path + "recentList"; }
	 */

	// 쿠키에서 값을 가져와 DB에 저장 -> 세션에 저장?


	// 제품 상세페이지로 이동 
	// @GetMapping

}