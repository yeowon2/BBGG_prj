<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<style>
section {
	background-color:#F5F5F5;
}
section div {
	background-color:#fff;
}
.submit-form {
	margin:50px;
}	
#moveInDate {
    padding: 30px 15px !important;
    border: 1px solid lightgrey !important;
  
    box-sizing: border-box;
    background-color: #fff !important;
    color: #4CAF50 !important;
    font-size: 18px !important;
    letter-spacing: 1px;
    position: relative;
    font-weight: bold !important;
}

#moveInDate:focus {
    -moz-box-shadow: none !important;
    -webkit-box-shadow: none !important;
    box-shadow: none !important;
    border: 1px solid #512DA8;
    outline-width: 0;
}

::placeholder {
    color: #BDBDBD;
    opacity: 1;
}

:-ms-input-placeholder {
    color: #BDBDBD;
}

::-ms-input-placeholder {
    color: #BDBDBD;
}

button:focus {
    -moz-box-shadow: none !important;
    -webkit-box-shadow: none !important;
    box-shadow: none !important;
    outline-width: 0;
}

.datepicker {
  background-color: #fff;
  border-radius: 0 !important;
  padding: 15px 20px !important;
  align-content: center !important;
}

.datepicker-dropdown {
  top: 0;
  left: calc(50% - 161px) !important;
}

.datepicker-dropdown.datepicker-orient-left:before {
  left: calc(50% - 6px) !important;
}

.datepicker-dropdown.datepicker-orient-left:after {
  left: calc(50% - 5px) !important;
}

.datepicker table tr td.today, span.focused {
  border-radius: 50% !important;
  background-image: linear-gradient(#FFF3E0, #FFE0B2);
}

.datepicker table tr td.today.range {
  background-image: linear-gradient(#eeeeee, #eeeeee) !important;
  border-radius: 0 !important;
}

/*Weekday title*/
thead tr:nth-child(3) th {
  font-weight: bold !important;
  padding-top: 10px;
  padding-bottom: 10px;
}

.old, .day, .new {
  width: 40px !important;
  height: 40px !important;
  border-radius: 0px !important;
  border: 1px solid lightgrey !important;
}

.day.old, .day.new {
  background-color: #F5F5F5 !important;
  color: #E0E0E0 !important;
}

.day.old:hover, .day.new:hover {
  border-radius: 0px !important;
}

.old-day:hover, .day:hover, .new-day:hover, .month:hover, .year:hover, .decade:hover, .century:hover {
  border-radius: 50% !important;
  background-color: #eee;
}

.input-group.active {
  border-radius: 50% !important;
  background-image: linear-gradient(#90CAF9, #64B5F6) !important;
  color: #fff !important;
}

.range-start, .range-end {
  border-radius: 50% !important;
  background-image: linear-gradient(#4CAF50, #4CAF50) !important;
}

.range {
  color: #4CAF50 !important;
}

.prev, .next, .datepicker-switch {
  border-radius: 0 !important;
  padding: 10px 10px 10px 10px !important;
  font-size: 18px;
  opacity: 0.7;
  color: #4CAF50;
}

.prev:hover, .next:hover, .datepicker-switch:hover {
  background-color: inherit !important;
  opacity: 1;
}

@media screen and (max-width: 500px) {
  .datepicker-dropdown.datepicker-orient-right:before {
    right: calc(50% - 6px) !important;
  }

  .datepicker-dropdown.datepicker-orient-right:after {
    right: calc(50% - 5px) !important;
  }
}	
</style>
<jsp:include page="../head.jsp"></jsp:include>
</head>
<jsp:include page="../navPartner.jsp"></jsp:include>
<body>
 <!-- Page Banner Start -->
    <div id="page-banner-area" class="page-banner">
      <div class="page-banner-title">
        <div class="text-center">
          <h2>매물 등록하기</h2>
          <a href="#"><i class="lni-home"></i> Home</a>
          <span class="crumbs-spacer"><i class="lni-chevron-right"></i></span>
          <span class="current">매물 등록하기</span>
        </div>
      </div>
    </div>
    <!-- Page Banner End -->

    <!-- User Section Start -->
    <section class="user-page submit-property section-padding">
      <div class="container">
        <div class="row">
          <div class="col-lg-12 mt-30">
            <div class="submit-form">
              <form method="post">
              	<section>
	              	<h3 class="heading">위치 정보</h3>
	                <div class="row mb-3">
	                  <div class="col-lg-12 col-md-6">
	                  <!-- <input type="text" id="sample5_address" placeholder="주소">
						<input type="button" onclick="sample5_execDaumPostcode()" value="주소 검색"><br> -->
	                    <div class="form-group row">
	                      <label class="col-lg-12 col-md-6" >주소</label>
		                      <div class="col-lg-8 col-md-6 row">
		                      	<input readonly type="text" name="address" id="sample5_address"  class="form-control col" placeholder="주소">
		                      	<input type="button" class="btn btn-success col-lg-2 ml-10" onclick="sample5_execDaumPostcode()" value="주소 검색">
		                      	<input type="hidden" id="latInput" name="lat" value="">
		   						 <input type="hidden" id="lngInput" name="lng" value="">
		                      </div>	
	                    </div>
	                    <div class="form-group row">
                    		<div class="col-lg-12 col-md-6 row">
		                      <div class="col-lg-8 col-md-6">
		                      	<input type="text" name="address2" class="form-control" placeholder="건물명을 입력하세요">
		                      </div>
		                    </div>  
	                  	  </div>	
  	                     <div class="form-group row">
		                     	<div class="col-lg-12 col-md-6 row"> 
			                      <div class="col-lg-4 col-md-6 row">
			                      	<input type="number" name="dong" class="form-control col-lg-6" placeholder="101"><span class="col-lg-6">동</span>
			                      </div>
			                      <div class="col-lg-4 col-md-6 row">
			                      	<input type="number" name="ho" class="form-control col-lg-6" placeholder="1004"><span class="col-lg-6">호</span>
			                      </div>
			                   </div>   
	                  	  </div>
                  	  </div>
                  	  </div>	
					</section>
	              	<section>
		                <h3 class="heading">기본 정보</h3>
		                <div class="row mb-3">
		                <div class="col-lg-6 col-md-6">
		                    <div class="form-group">
		                      <label for="itemType">방 타입</label>
						        <select class="classic" id="itemType" name="itemType">
						            <option value="O">원룸</option>
						            <option value="T">투룸</option>
						            <option value="H">쓰리룸</option>
						            <option value="F">오피스텔</option>
						        </select>
		                    </div>
		                  </div>
		                <div class="col-lg-12 col-md-6">
		                    <div class="form-group">
		                       <div class="btn-group">
		                        <input type="button" id="monthButton" class="btn btn-outline-success col-lg-6 ml-10" onclick="showMonthlyFields()" value="월세">
		                        <input type="button"  id="leaseButton" class="btn btn-outline-warning col-lg-6 ml-10" onclick="showLeaseFields()" value="전세">
		                      </div>
		                    </div>
		                  </div>
		                  	<div class="col-lg-12" id="monthlyFields" style="display: none;">
				               <div class="row">  
				                 <div class="col-lg-6 col-md-6">
				                    <div class="form-group">
				                      <label>보증금</label>
				                      <input type="text" name="depositFee" class="form-control" placeholder="USD">
				                    </div>
				                  </div>
				                  <div class="col-lg-6 col-md-6">
				                    <div class="form-group">
				                      <label>월세</label>
				                      <input type="text" name="monthPrice" class="form-control" placeholder="SqFt">
				                    </div>
				                  </div>
				                </div>  
			                 </div>	 
		                  	<div class="col-lg-12" id="leaseFields" style="display: none;">
			                  <div class="row">
			                  <div class="col-lg-6 col-md-6">
			                    <div class="form-group">
			                      <label>전세금</label>
			                      <input type="text" name="leasePrice" class="form-control" placeholder="USD">
			                    </div>
			                  </div>
		                  </div>
		                </div>
		                   <div class="col-lg-3 col-md-6">
		                    <div class="form-group">
		                      <label>건물 층수</label>
		                      <input type="number" name="buildingFloor" class="form-control" placeholder="">
		                    </div>
		                  </div>
		                  <div class="col-lg-3 col-md-6">
		                     <label>해당 층수</label>
		                    <input type="number" name="itemFloor" class="form-control" placeholder="">
		                  </div>
		                  <div class="col-lg-6 col-md-6">
		                    <div class="form-group">
		                      <label>전용 면적</label>
		                      <input type="text" name="itemSize" class="form-control" placeholder="">
		                    </div>
		                  </div>
		                  <div class="col-lg-3 col-md-6">
		                    <div class="form-group">
		                      <label>방 수</label>
		                      <input type="number" name="itemCount" class="form-control" placeholder="">
		                    </div>
		                  </div>
		                  <div class="col-lg-3 col-md-6">
		                    <div class="form-group">
		                      <label>욕실 수</label>
		                     <input type="number" name="bathAt" class="form-control" placeholder="">
		                    </div>
		                  </div>
	                  </div>
					</section>
					<section>
		                <h3 class="heading">추가 정보</h3>
		                <div class="row mb-3">
		                  <div class="col-lg-12 col-md-4">
		                    <div class="form-group row">
		                      <label class="col-lg-2">관리비</label>
		                	  <div class="col-lg-4 col-md-4">
		                      	<input type="number" name="manageFee" class="form-control" placeholder="" value="0">
		                      </div>
		                      	<div class="col-lg-2 col-md-4">
				                    <div class="form-group">
				                      <div class="form-check">
				                        <input class="form-check-input" name="manageFeeAt" type="checkbox" value="Y" id="manageFeeAtY">
				                        <label class="form-check-label" for="manageFeeAtY">있음</label>
				                      </div>
				                    </div>
			                 	</div>
		                      	<div class="col-lg-2 col-md-4">
				                    <div class="form-group">
				                      <div class="form-check">
				                        <input class="form-check-input" name="manageFeeAt" type="checkbox" value="N" id="manageFeeAtN">
				                        <label class="form-check-label" for="manageFeeAtN">없음</label>
				                      </div>
				                    </div>
			                 	</div>
		                    </div>
		                  </div>
		                  <div class="col-lg-12 col-md-4">
		                    <div class="form-group row col-lg-6">
		                      <label class="col-lg-4 col-md-4">엘리베이터</label>
		                      	<div class="col-lg-3 col-md-4">
				                    <div class="form-group">
				                      <div class="form-check">
				                        <input class="form-check-input" name="elevatorAt" type="checkbox" value="Y" id="elevatorY">
				                        <label class="form-check-label" for="elevatorY">있음</label>
				                      </div>
				                    </div>
			                 	</div>
		                      	<div class="col-lg-3 col-md-4">
				                    <div class="form-group">
				                      <div class="form-check">
				                        <input class="form-check-input" name="elevatorAt" type="checkbox" value="N" id="elevatorN">
				                        <label class="form-check-label" for="elevatorN">없음</label>
				                      </div>
				                    </div>
			                 	</div>
		                    </div>
		                  </div>
		                  <div class="col-lg-12 col-md-4">
		                    <div class="form-group row col-lg-6">
		                      <label class="col-lg-4 col-md-4">주차 여부</label>
		                      	<div class="col-lg-3 col-md-4">
				                    <div class="form-group">
				                      <div class="form-check">
				                        <input class="form-check-input" name="parkingAt" type="checkbox" value="Y" id="parkingAtY">
				                        <label class="form-check-label" for="parkingAtY">가능</label>
				                      </div>
				                    </div>
			                 	</div>
		                      	<div class="col-lg-3 col-md-4">
				                    <div class="form-group">
				                      <div class="form-check">
				                        <input class="form-check-input" name="parkingAt" type="checkbox" value="N" id="parkingAtN">
				                        <label class="form-check-label" for="parkingAtN">불가</label>
				                      </div>
				                    </div>
			                 	</div>
		                    </div>
		                  </div>
		                  <div class="col-lg-12 col-md-4">
		                    <div class="form-group row">
		                      <label class="col-lg-12">입주 가능일</label>
		                      <div class = "row col-lg-6">
			                      <div class="col-lg-4 col-md-4">
					                    <div class="form-group">
					                      <div class="form-check">
					                        <input class="form-check-input" name="moveInAt" type="checkbox" value="Y" id="moveInAtY">
					                        <label class="form-check-label" for="moveInAtY">즉시 입주</label>
					                      </div>
					                    </div>
				                 	</div>
			                      	<div class="col-lg-4 col-md-4">
					                    <div class="form-group">
					                      <div class="form-check">
					                        <input class="form-check-input" name="moveInAt" type="checkbox" value="N" id="moveInAtN">
					                        <label class="form-check-label" for="moveInAtN">날짜 협의</label>
					                      </div>
					                    </div>
				                 	</div>
			                 	</div>
			                 	<div class="col-lg-12 col-md-4">
		                      		 <input type="date" name="moveInDate" id="moveInDate" style="display: none;"> 
		                      	</div>
		                    </div>
		                  </div>
		                </div>
                </section>
                <section>
					 <h3 class="heading">상세 설명</h3>
	                <div class="row mb-3">
	                  <div class="col-lg-12">
	                    <div class="form-group">
	                      <label>방 제목</label>
	                      <input type="text" name="memoShort" class="form-control" placeholder="">
	                    </div>
	                  </div>
	                  <div class="col-lg-12">
	                    <div class="form-group message">
	                      <label>상세 설명</label>
	                      <textarea class="form-control" name="memoDetail" placeholder="Detailed Information"></textarea>
	                    </div>
	                  </div>
	                  <div class="col-lg-12">
	                    <div class="form-group message">
	                      <label>비공개 메모</label>
	                      <textarea class="form-control" name="" placeholder="Private Information"></textarea>
	                    </div>
	                  </div>
					</div>
				</section>
				<section>
	                <h3 class="heading">옵션 항목</h3>
	                <div class="row mb-3">
	                  <div class="col-lg-4 col-md-4">
	                    <div class="form-group">
	                      <div class="form-check">
	                        <input class="form-check-input" type="checkbox" value="" id="air-condition">
	                        <label class="form-check-label" for="air-condition">Air Conditioning</label>
	                      </div>
	                    </div>
	                    <div class="form-group">
	                      <div class="form-check">
	                        <input class="form-check-input" type="checkbox" value="" id="free-parking">
	                        <label class="form-check-label" for="free-parking">Swimming Pool</label>
	                      </div>
	                    </div>
	                    <div class="form-group">
	                      <div class="form-check">
	                        <input class="form-check-input" type="checkbox" value="" id="swimming-pool">
	                        <label class="form-check-label" for="swimming-pool">Central Heating</label>
	                      </div>
	                    </div>
	                  </div>
	                  <div class="col-lg-4 col-md-4">
	                    <div class="form-group">
	                      <div class="form-check">
	                        <input class="form-check-input" type="checkbox" value="" id="laundry-room">
	                        <label class="form-check-label" for="laundry-room">Laundry Room</label>
	                      </div>
	                    </div>
	                    <div class="form-group">
	                      <div class="form-check">
	                        <input class="form-check-input" type="checkbox" value="" id="window-covering">
	                        <label class="form-check-label" for="window-covering">Gym</label>
	                      </div>
	                    </div>
	                    <div class="form-group">
	                      <div class="form-check">
	                        <input class="form-check-input" type="checkbox" value="" id="places">
	                        <label class="form-check-label" for="places">Window Covering</label>
	                      </div>
	                    </div>
	                  </div>
	                  <div class="col-lg-4 col-md-4">
	                    <div class="form-group">
	                      <div class="form-check">
	                        <input class="form-check-input" type="checkbox" value="" id="alarm">
	                        <label class="form-check-label" for="alarm">Alarm</label>
	                      </div>
	                    </div>
	                    <div class="form-group">
	                      <div class="form-check">
	                        <input class="form-check-input" type="checkbox" value="" id="central-heating">
	                        <label class="form-check-label" for="central-heating">Central Heating</label>
	                      </div>
	                    </div>
	                  </div>
	                </div>
	                </section>
                	<section>
                		<h3 class="heading">사진 업로드</h3>
                		<div class="row mb-3">
                  			<div class="col-lg-12">
                    			<div id="drop-file" class="drop-file mb-5">
                      		<div class="drop-message"><span>Drop files here to upload</span></div>
                    	</div>
                  		</div>
                	</div>
                </section>
                <div>
                	<button class="btn btn-success" type="submit">등록</button>
                </div>
              </form>
            </div>

          </div>
        </div>
      </div>
    </section>
    <!-- Ueser Section End -->
<%-- <jsp:include page="../footer.jsp"></jsp:include> --%>
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=63c0f4f3e00e8d6c49088160aa0fdd64&libraries=services,clusterer,drawing"></script>
<script>

// Checkbox 토글 모음 시작
// checkbox 요소들을 배열로 관리
var checkboxes = [
  { id: "manageFeeAtY", counterpartId: "manageFeeAtN" },
  { id: "manageFeeAtN", counterpartId: "manageFeeAtY" },
  { id: "elevatorY", counterpartId: "elevatorN" },
  { id: "elevatorN", counterpartId: "elevatorY" },
  { id: "parkingAtY", counterpartId: "parkingAtN" },
  { id: "parkingAtN", counterpartId: "parkingAtY" }
];

// 반복문을 사용하여 이벤트 리스너 할당
checkboxes.forEach(function (checkbox) {
  var currentCheckbox = document.getElementById(checkbox.id);
  var counterpartCheckbox = document.getElementById(checkbox.counterpartId);

  currentCheckbox.addEventListener('change', function () {
    if (currentCheckbox.checked) {
      counterpartCheckbox.checked = false;
    }
  });
});
//Checkbox 토글 모음 끝


var moveInAtYCheckbox = document.getElementById("moveInAtY");
var moveInAtNCheckbox = document.getElementById("moveInAtN");
// "입주 가능일" input 요소 가져오기
var moveInDateInput = document.getElementById("moveInDate");

// "즉시 입주" 체크박스 상태 변경 시 이벤트 처리
moveInAtYCheckbox.addEventListener('change', function () {
    if (moveInAtYCheckbox.checked) {
    	moveInAtNCheckbox.checked = false;
        // "즉시 입주" 체크박스가 선택되면 "입주 가능일" input 요소를 숨김
        moveInDateInput.style.display = "none";
    } else{
    	moveInDateInput.style.display = "display";
    }
});

// "날짜 협의" 체크박스 상태 변경 시 이벤트 처리
moveInAtNCheckbox.addEventListener('change', function () {
    if (moveInAtNCheckbox.checked) {
    	moveInAtYCheckbox.checked = false;
        // "날짜 협의" 체크박스가 선택되면 "입주 가능일" input 요소를 표시
        moveInDateInput.style.display = "block";
    } else {
    	moveInDateInput.style.display = "none";
    }
});

// "관리비" 입력란 요소 가져오기
var manageAtFeeYCheckbox = document.getElementById("manageFeeAtY");
var manageAtFeeNCheckbox = document.getElementById("manageFeeAtN");
var manageFeeInput = document.querySelector('input[name="manageFee"]');

// "있음" 체크박스 상태 변경 시 이벤트 처리
manageAtFeeYCheckbox.addEventListener('change', function () {
    // "있음" 체크박스가 선택되면 "관리비" 입력란 활성화
    if (manageAtFeeYCheckbox.checked) {
        manageFeeInput.removeAttribute('readonly');
    } else {
        // "있음" 체크박스가 선택 해제되면 "관리비" 입력란 비활성화
        manageFeeInput.setAttribute('readonly', 'readonly');
    }
});

// "없음" 체크박스 상태 변경 시 이벤트 처리
manageFeeAtNCheckbox.addEventListener('change', function () {
    // "없음" 체크박스가 선택되면 "관리비" 입력란 비활성화
    if (manageFeeAtNCheckbox.checked) {
        manageFeeInput.setAttribute('readonly', 'readonly');
    } else {
        // "없음" 체크박스가 선택 해제되면 "관리비" 입력란 활성화
        manageFeeInput.removeAttribute('readonly');
    }
});


var form = document.querySelector('form');

function showMonthlyFields() {
    var monthlyFields = document.getElementById("monthlyFields");
    var monthButton = document.querySelector('#monthButton');
    
    if (monthlyFields.style.display === "block" || monthlyFields.style.display === "") {
        monthlyFields.style.display = "none";
        monthButton.classList.remove("btn-success");
        monthButton.classList.add("btn-outline-success");
        
    } else {
        monthlyFields.style.display = "block";
        monthButton.classList.remove("btn-outline-success");
        monthButton.classList.add("btn-success");
        
        var monthInput = document.createElement("input");
        monthInput.type = "hidden";
        monthInput.name = "leaseOrMonth";
        monthInput.value = "month"; // 월세 버튼이 선택되었을 때 값을 설정합니다.
        form.appendChild(monthInput); // 폼에 추가합니다.
        
    }
}
	
	  function showLeaseFields() {
		  var leaseFields = document.getElementById("leaseFields");
		  var leaseButton = document.querySelector('#leaseButton');
		  
	    if (leaseFields.style.display === "block" || leaseFields.style.display === "") {
	    	leaseFields.style.display = "none";
	    	leaseButton.classList.remove("btn-warning");
	    	leaseButton.classList.add("btn-outline-warning");
	    } else {
	    	leaseFields.style.display = "block";
	    	leaseButton.classList.remove("btn-outline-warning");
	    	leaseButton.classList.add("btn-warning");
	    	
	    	var leaseInput = document.createElement("input");
	    	leaseInput.type = "hidden";
	    	leaseInput.name = "leaseOrMonth";
	    	leaseInput.value = "lease"; // 월세 버튼이 선택되었을 때 값을 설정합니다.
	        form.appendChild(leaseInput); // 폼에 추가합니다.
	    	
	    }
	 
	  }

    function sample5_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                var addr = data.address; // 최종 주소 변수

                // 주소 정보를 해당 필드에 넣는다.
                document.getElementById("sample5_address").value = addr;
                
                // 주소를 좌표로 변환하는 Geocoder 객체 생성
		        var geocoder = new kakao.maps.services.Geocoder();
		
		        // 주소를 좌표로 변환
		        geocoder.addressSearch(addr, function (result, status) {
		            if (status === kakao.maps.services.Status.OK) {
		                var lat = result[0].y; // 위도
		                var lng = result[0].x; // 경도
		
		                // 위도와 경도를 숨겨진 입력 필드에 채워 넣기
		                document.getElementById('latInput').value = lat;
		                document.getElementById('lngInput').value = lng;
		
		            } else {
		                alert('주소를 찾을 수 없습니다.');
		            }
		        });
            }
        }).open();
    }
</script>
<jsp:include page="../js.jsp"></jsp:include>
  </body>
</html>