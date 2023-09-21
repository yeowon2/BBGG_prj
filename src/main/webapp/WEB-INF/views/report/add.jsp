<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="../header.jsp"></jsp:include>
<title>허위 매물 신고</title>
<link rel="stylesheet" href="/resources/dist/css/modal.css" />
<style>
#modal {
	display: none;
}
</style>
</head>
<body>
	<div id="container">
		<h2>허위 매물 신고하기</h2>
		
		<div id="info">
			<p>
				클린한 사이트를 위해~~ 어쩌고 저쩌고~~ 설명... <br>
			
				· 개인정보 수집 및 이용 목적(개인정보보호법 제15조)<br>
				▫ 부동산매물클린관리센터는 관계 법령에 따라 소관 업무를 수행하기 위하여 개인정보를 수집 및 이용 합니다.<br>
				  수집된 개인정보는 정해진 목적 이외의 용도로는 이용되지 않으며 수집 목적이 변경될 경우 사전에 알리고 동의를 받을 예정입니다.<br><br>
				
				· 수집하는 개인정보의 항목<br>
				▫ 부동산매물클린관리센터는 아래와 같은 최소한의 개인정보를 수집하고 있습니다.<br>
				- 필수항목 : 신고자의 성명, 성별, 휴대폰 번호, 생년월일 / 증빙자료 내 신고인의 기타 정보<br>
				▫ 서비스 이용과정에서 아래와 같은 정보들이 자동으로 생성되어 수집될 수 있습니다.<br>
				- IP Address, 방문 일시, 서비스 이용기록<br><br>
				
				· 개인정보 파일 보유 및 기간<br>
				▫ 부동산매물클린관리센터는 원칙적으로 개인정보 보존기관이 경과하거나 처리목적이 달성된 경우 개인정보를 파기합니다.<br>
				- 보존 기간 : 수집일로부터 1년<br>
				- 증빙자료 보존기간 : 수집일로부터 60일<br><br>
				
				· 동의 거부 권리 및 거부에 따른 불이익<br>
				▫ 신고 처리를 위하여 수집하는 최소한의 정보 이외에 개인정보 수집에 동의를 거부할 권리가 있으나 최소한의 개인정보 수집동의 거부 시에는 부동산매물클린관리센터 서비스를 제공 받을 수 없습니다.<br>
			</p>
		</div>
		<div>
			<button id="btn-modal">모달 창 열기 버튼</button>
		</div>
	</div>

	<div id="modal" class="modal-overlay">
		<div class="modal-window">
			<fieldset>
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="modalTitle">허위 매물 신고</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        	<span aria-hidden="true">&times;</span>
                        </button>
						<input type="checkbox"><label>실제 매물이 해당 내용과 불일치 (위치, 정보 등)</label><br> 
						<input type="checkbox"><label>실제 소유자가 사이트의 내용과 불일치</label><br>
						<input type="checkbox"><label>기타 (체크 후 아래에 기입해주세요)</label>
					</div>
					<div class="modal-body">
						<p>검증 기준이 아닌 사유를 들어 반복적으로 신고하실 경우, 신고자 패널티를 부과할 수 있습니다.<br>
						이러한 행위는 공인중개사법 제 33조2항 ('시세에 부당한 영향을 줄 목적으로 중개사업무를 방해해서는 안된다')을 <br>
						위배해 고소, 고발의 대상이 될 수 있으므로 주의부탁드립니다.
						</p>
					</div>
					<div class="modal-footer">
                    	<button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
                    	<button type="button" class="btn btn-danger">다운받기</button>
                    </div>
				</div>
			</fieldset>
		</div>
	</div>

<script>       
	const modal = document.getElementById("modal")
	
	function modalOn() {
		modal.style.display = "flex"
	}
	function isModalOn() {
	    return modal.style.display === "flex"
	}
	function modalOff() {
	    modal.style.display = "none"
	}
	  	
	const btnModal = document.getElementById("btn-modal")
	btnModal.addEventListener("click", e => {
	    modal.style.display = "flex"
	})
	
	const closeBtn = modal.querySelector(".close-area")
	closeBtn.addEventListener("click", e => {
	    modal.style.display = "none"
	})
	
	modal.addEventListener("click", e => {
	    const evTarget = e.target
	    if(evTarget.classList.contains("modal-overlay")) {
	        modal.style.display = "none"
	    }
	})
	
	window.addEventListener("keyup", e => {
	    if(modal.style.display === "flex" && e.key === "Escape") {
	        modal.style.display = "none"
	    }
	})
</script>

</body>
</html>