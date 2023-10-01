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

    <!-- Ueser Section Start -->
    <section class="user-page submit-property section-padding">
      <div class="container">
        <div class="row">
          <div class="col-lg-12 mt-30">
            <div class="submit-form">
              <form>
              	<section>
	              	<h3 class="heading">위치 정보</h3>
	                <div class="row mb-3">
	                  <div class="col-lg-12 col-md-6">
	                  <!-- <input type="text" id="sample5_address" placeholder="주소">
						<input type="button" onclick="sample5_execDaumPostcode()" value="주소 검색"><br> -->
	                    <div class="form-group row">
	                      <label class="col-lg-12 col-md-6" >주소</label>
	                      <div class="col-lg-8 col-md-6 row">
	                      	<input readonly type="text" id="sample5_address"  class="form-control col" placeholder="주소">
	                      	<input type="button" class="btn btn-success col-lg-2 ml-10" onclick="sample5_execDaumPostcode()" value="주소 검색">
	                      	<input type="hidden" id="latInput" name="latitude" value="">
	   						 <input type="hidden" id="lngInput" name="longitude" value="">
	                      </div>	
	                    </div>
	                    <div class="form-group row">
		                      <div class="col-lg-8 col-md-6">
		                      	<input type="text" name="address" class="form-control" placeholder="상세주소를 입력하세요">
		                      </div>
	                  	  </div>	
					</section>
	              	<section>
		                <h3 class="heading">기본 정보</h3>
		                <div class="row mb-3">
		                <div class="col-lg-12 col-md-6">
		                    <div class="form-group">
		                       <div class="btn-group">
		                        <input type="button" class="btn btn-success col-lg-6 ml-10" onclick="showMonthlyFields()" value="월세">
		                        <input type="button" class="btn btn-yellow col-lg-6 ml-10" onclick="showJeonseFields()" value="전세">
		                      </div>
		                    </div>
		                  </div>
		                  	<div class="col-lg-12" id="monthlyFields" style="display: none;">
				               <div class="row">  
				                 <div class="col-lg-6 col-md-6">
				                    <div class="form-group">
				                      <label>보증금</label>
				                      <input type="text" name="monthlyDeposit" class="form-control" placeholder="USD">
				                    </div>
				                  </div>
				                  <div class="col-lg-6 col-md-6">
				                    <div class="form-group">
				                      <label>월세</label>
				                      <input type="text" name="monthlyRent" class="form-control" placeholder="SqFt">
				                    </div>
				                  </div>
				                </div>  
			                 </div>	 
		                  	<div class="col-lg-12" id="jeonseFields" style="display: none;">
			                  <div class="row">
			                  <div class="col-lg-6 col-md-6">
			                    <div class="form-group">
			                      <label>전세금</label>
			                      <input type="text" name="price" class="form-control" placeholder="USD">
			                    </div>
			                  </div>
		                  </div>
		                </div>
		                   <div class="col-lg-3 col-md-6">
		                    <div class="form-group">
		                      <label>건물 층수</label>
		                      <select class="classic">
		                        <option>1</option>
		                        <option>2</option>
		                        <option>3</option>
		                        <option>4</option>
		                      </select>
		                    </div>
		                  </div>
		                  <div class="col-lg-3 col-md-6">
		                    <div class="form-group">
		                      <label>해당 층수</label>
		                      <select class="classic">
		                        <option>1</option>
		                        <option>2</option>
		                        <option>3</option>
		                        <option>4</option>
		                        <option>5</option>
		                      </select>
		                    </div>
		                  </div>
		                  <div class="col-lg-6 col-md-6">
		                    <div class="form-group">
		                      <label>전용 면적</label>
		                      <input type="text" name="price" class="form-control" placeholder="">
		                    </div>
		                  </div>
		                  <div class="col-lg-3 col-md-6">
		                    <div class="form-group">
		                      <label>방 수</label>
		                      <input type="number" name="price" class="form-control" placeholder="">
		                    </div>
		                  </div>
		                  <div class="col-lg-3 col-md-6">
		                    <div class="form-group">
		                      <label>욕실 수</label>
		                     <input type="number" name="price" class="form-control" placeholder="">
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
		                      	<input type="number" name="price" class="form-control" placeholder="">
		                      </div>
		                      	<div class="col-lg-2 col-md-4">
				                    <div class="form-group">
				                      <div class="form-check">
				                        <input class="form-check-input" type="checkbox" value="" id="manageAtY">
				                        <label class="form-check-label" for="manageAtY">있음</label>
				                      </div>
				                    </div>
			                 	</div>
		                      	<div class="col-lg-2 col-md-4">
				                    <div class="form-group">
				                      <div class="form-check">
				                        <input class="form-check-input" type="checkbox" value="" id="manageAtN">
				                        <label class="form-check-label" for="manageAtN">없음</label>
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
				                        <input class="form-check-input" type="checkbox" value="" id="elevator">
				                        <label class="form-check-label" for="elevator">있음</label>
				                      </div>
				                    </div>
			                 	</div>
		                      	<div class="col-lg-3 col-md-4">
				                    <div class="form-group">
				                      <div class="form-check">
				                        <input class="form-check-input" type="checkbox" value="" id="central-heating">
				                        <label class="form-check-label" for="central-heating">없음</label>
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
				                        <input class="form-check-input" type="checkbox" value="" id="alarm">
				                        <label class="form-check-label" for="alarm">가능</label>
				                      </div>
				                    </div>
			                 	</div>
		                      	<div class="col-lg-3 col-md-4">
				                    <div class="form-group">
				                      <div class="form-check">
				                        <input class="form-check-input" type="checkbox" value="" id="central-heating">
				                        <label class="form-check-label" for="central-heating">불가</label>
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
					                        <input class="form-check-input" type="checkbox" value="" id="alarm">
					                        <label class="form-check-label" for="alarm">즉시 입주</label>
					                      </div>
					                    </div>
				                 	</div>
			                      	<div class="col-lg-4 col-md-4">
					                    <div class="form-group">
					                      <div class="form-check">
					                        <input class="form-check-input" type="checkbox" value="" id="central-heating">
					                        <label class="form-check-label" for="central-heating">날짜 협의</label>
					                      </div>
					                    </div>
				                 	</div>
			                 	</div>
			                 	<div class="col-lg-6 col-md-4">
		                      		<input type="date">
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
	                      <input type="text" name="price" class="form-control" placeholder="">
	                    </div>
	                  </div>
	                  <div class="col-lg-12">
	                    <div class="form-group message">
	                      <label>상세 설명</label>
	                      <textarea class="form-control" name="message" placeholder="Detailed Information"></textarea>
	                    </div>
	                  </div>
	                  <div class="col-lg-12">
	                    <div class="form-group message">
	                      <label>비공개 메모</label>
	                      <textarea class="form-control" name="message" placeholder="Private Information"></textarea>
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
function showMonthlyFields() {
    var monthlyFields = document.getElementById("monthlyFields");
    
    if (monthlyFields.style.display === "block" || monthlyFields.style.display === "") {
        monthlyFields.style.display = "none";
    } else {
        monthlyFields.style.display = "block";
    }
}

	
	  function showJeonseFields() {
		  var jeonseFields = document.getElementById("jeonseFields");
	    
	    if (jeonseFields.style.display === "block" || jeonseFields.style.display === "") {
	    	jeonseFields.style.display = "none";
	    } else {
	    	jeonseFields.style.display = "block";
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
