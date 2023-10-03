<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>

<jsp:include page="../head.jsp"></jsp:include>

<link rel="stylesheet" type="text/css" href="../../../resources/css/modal.css">

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=3deea4e437afacaccf5d342a0a21b891&libraries=services"></script>

<!-- 내 위치 가져오기 -->
<script src="../../../resources/js/kakaomap/pos.js"></script>   

<jsp:include page="../nav.jsp"></jsp:include>
<jsp:include page="../nav.jsp"></jsp:include>

</head>
<body>

	<form method="post" action="/shop/list">
		<select id="si" name="si">
			<option value="서울">서울</option>
			<option value="대전">대전</option>
		</select>
		<select id="gu" name="gu">
			<option value="동구">동구</option>
			<option value="서구">서구</option>
		</select>
		<select id="dong" name="dong">
			<option value="가양1동">가양1동</option>
			<option value="가양2동">가양2동</option>
		</select>
		<select id="categoryNo" name="categoryNo">
			<option value="1">한식</option>
			<option value="2">일식</option>
		</select>
		<!-- <button onclick="applyFn()">적용</button> -->
		<button type="submit">적용</button>
	</form>

<div id="map" style="width:500px;height:400px;"></div>

<!-- 카카오 지도 생성 -->
<script src="../../../resources/js/kakaomap/map.js"></script>   

<!-- 카테고리에 따른 마커 생성 -->
<c:forEach var="item" items="${list}">
	<p>위도 : ${item.latitude}, 경도 : ${item.longitude}</p>
	
	<script>
		//var lat = [];
		//var lng = [];
		
		alert(`${item.latitude}, ${item.longitude}`);
		
		
		
		
		var positions = [
			{
		        title: `${item.compName}`, 
		        latlng: new kakao.maps.LatLng(${item.latitude}, ${item.longitude})
		    }
		]
		
		//마커 이미지의 이미지 주소입니다
		var imageSrc = "https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; 
		
		for (var i = 0; i < positions.length; i ++) {
			
			// 마커 이미지의 이미지 크기 입니다
		    var imageSize = new kakao.maps.Size(24, 35); 
		    
		    // 마커 이미지를 생성합니다    
		    var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize); 
		    
		    // 마커를 생성합니다
		    var marker = new kakao.maps.Marker({
		        map: map, // 마커를 표시할 지도
		        position: positions[i].latlng, // 마커를 표시할 위치
		        title : positions[i].title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
		        image : markerImage // 마커 이미지 
		    });
		    
		 	// 마커에 클릭이벤트를 등록합니다
		    kakao.maps.event.addListener(marker, 'click', function() {
		    	document.getElementById('myModal').style.display = 'block';
		    	fetch(`item/${item.shopNo}`, {
		            method: "GET",
		        });
		    	document.getElementById('cn').innerHTML = `${item.compName}`;
		    	document.getElementById('ca').innerHTML = `${item.compAddr1}`;
		    	document.getElementById('cc').innerHTML = `${item.compCall}`;
		    	document.getElementById('sn').value = `${item.shopNo}`;
		
		    	alert("매장번호" + ${item.shopNo});
		    });
		    
		}
	</script>

</c:forEach>


<!-- <script language="JavaScript"> window.name = "Test_Dialog"; </script>
<a href="http://www.egocube.pe.kr/" target="Test_Dialog">Click!</a> -->


<div id="myModal" class="modal">
	<div class="modal-content">
		<span class="close">&times;</span>
		<div id="cn">
		</div>
		<div id="ca">
		</div>
		<div id="cc">
		</div>
		
		<form action="/booking/add" method="post">
		<input type="number" id="sn" name="shopNo" hidden="hidden">
		<input type="number" name="userNo" hidden="hidden" value="${sessionScope.user.userNo}">
		
		<div class="accordion border-0 accordion-s" id="accordion-group-6">
		
                    <div class="accordion-item">
                    
                        <button class="accordion-button collapsed px-0" type="button" data-bs-toggle="collapse" data-bs-target="#accordion6-1">
                            <!-- <span class="font-600 font-13">예약 날짜 선택</span> -->
                            <input class="font-600 font-13 datepicker" name="bookingDate" value="예약 날짜 선택">
                            <i class="bi bi-chevron-down font-20"></i>
                        </button>
                        
                        <div id="accordion6-1" class="accordion-collapse collapse" data-bs-parent="#accordion-group-6">
                            <p class="pb-3 opacity-60">
                                <!-- <input class="datepicker"> -->
                                <script>
                                $(function(){
                                    $('.datepicker').datepicker();
                                })
                                </script>
                            </p>
                        </div>
                        
                    </div>

                    <div class="accordion-item">
                        
                        <button class="accordion-button collapsed px-0" type="button" data-bs-toggle="collapse" data-bs-target="#accordion6-2">
                            <input type="text" id="bookingTime" class="font-600 font-13" name="bookingTime" value="예약 시간 선택">
                            <i class="bi bi-chevron-down font-20"></i>
                        </button>
                        
                        <div id="accordion6-2" class="accordion-collapse collapse" data-bs-parent="#accordion-group-6">
                        	
                        	<script>
                        	function bookingTime( item ) {
                        		document.querySelector('#bookingTime').value = $(item).text();
                        	}
                        	</script>
                        
                            <div class="mb-2 pb-2"></div>
                                <a href="#" class="btn btn-xxs gradient-orange" style="width:100px; margin: 0 auto;" onclick="bookingTime(this)">11:00</a>
                                <a href="#" class="btn btn-xxs gradient-orange" style="width:100px; margin: 0 auto;" onclick="bookingTime(this)">12:00</a>
                                <a href="#" class="btn btn-xxs gradient-orange" style="width:100px; margin: 0 auto;" onclick="bookingTime(this)">13:00</a>
                                <a href="#" class="btn btn-xxs gradient-orange" style="width:100px; margin: 0 auto;" onclick="bookingTime(this)">14:00</a>
                                <a href="#" class="btn btn-xxs gradient-orange" style="width:100px; margin: 0 auto;" onclick="bookingTime(this)">17:00</a>
                                <a href="#" class="btn btn-xxs gradient-orange" style="width:100px; margin: 0 auto;" onclick="bookingTime(this)">18:00</a>
                                <a href="#" class="btn btn-xxs gradient-orange" style="width:100px; margin: 0 auto;" onclick="bookingTime(this)">19:00</a>
                                <a href="#" class="btn btn-xxs gradient-orange" style="width:100px; margin: 0 auto;" onclick="bookingTime(this)">20:00</a>
                                <a href="#" class="btn btn-xxs gradient-orange" style="width:100px; margin: 0 auto;" onclick="bookingTime(this)">21:00</a>
                            <div class="mb-2"></div> 
                            
                        </div>
                    </div>

                    <div class="accordion-item">
                    
                        <button class="accordion-button collapsed px-0" type="button" data-bs-toggle="collapse" data-bs-target="#accordion6-3">
                            <input type="number" id="tit_bookingMemNum" name="bookingMemNum" class="font-600 font-13" value="예약 인원 선택">
                            <i class="bi bi-chevron-down font-20"></i>
                        </button>
                        
                        <div id="accordion6-3" class="accordion-collapse collapse" data-bs-parent="#accordion-group-6">
                            <p class="pb-3 opacity-60">
                            1~10명까지 선택 가능합니다.<br>
                            방문하시는 인원을 선택하세요.
                            </p>

                            <div class="row">
                                <div class="col-6"  style="margin: 0 auto;">
                                    <div class="stepper rounded-s">
                                    	<script>
                                    	function count(type) {
                                    		let bmn = document.querySelector('#bookingMemNum').value;
                                    		
                                    		if(type === 'plus') {
                                    			bmn = parseInt(bmn) + 1;
                                    			if (bmn > 10) {
                                    				return false;
                                    			}
                                    		}
                                    		else if(type === 'minus')  {
                                    			bmn = parseInt(bmn) - 1;
                                    			if (bmn < 1) {
                                    				return false;
                                    			}
                                    		}
                                    		document.querySelector('#bookingMemNum').value = bmn;
                                    		document.querySelector('#tit_bookingMemNum').value = bmn;
										}
                                    	
                                    	function plus() {
                                    		//document.querySelector('#nop').value += 1;
                                    		//var nop = document.querySelector('#nop').value                                    		
                                    		//console.log(typeof(Number(nop)));
                                    		//console.log(Number(nop));
                                    		//Number(nop) = Number(nop) + 1;
										}
                                    	</script>
                                    	
                                        <a href="#"><i class="bi bi-dash font-18 color-red-dark" onclick="count('minus')"></i></a>
                                        <input type="number" id="bookingMemNum" class="color-theme" min="1" max="10" value="1">
                                        <a href="#"><i class="bi bi-plus font-18 color-green-dark" onclick="count('plus')"></i></a>
                                        
                                    </div>
                                </div>
                            </div>
                            
                        </div>

                    </div>
                </div>
		
		<div>
			<button type="submit" id="booking">예약하기</button>
		</div>
		</form>
		
	</div>
</div>

<div>
${info.shopNo}
</div>



<!-- 적용x -->
<script>
//배열에 추가된 마커들을 지도에 표시하거나 삭제하는 함수입니다
function setMarkers(map) {
    for (var i = 0; i < markers.length; i++) {
        markers[i].setMap(null);
    }
}
</script>

<script>
function applyFn(){
	
	var si  = document.getElementById("si");
	var sival = (si.options[si.selectedIndex].value);
	
	var gu  = document.getElementById("gu");
	var guval = (gu.options[gu.selectedIndex].value);
	
	var dong  = document.getElementById("dong");
	var dongval = (dong.options[dong.selectedIndex].value);
	
	var category  = document.getElementById("category");
	var categoryval = (category.options[category.selectedIndex].value);
	
	alert("value = " + sival + guval + dongval + categoryval);
	
	/* 		
	var selectedindex = city.selectedIndex;
	alert("value = "+value+" , selectedindex = "+selectedindex); 
	*/
	
	

	/* 주소-좌표 변환 */
	
	//주소-좌표 변환 객체를 생성합니다
	var geocoder = new kakao.maps.services.Geocoder();
	
	// 주소로 좌표를 검색합니다
	//console.log(cityval)
	geocoder.addressSearch(sival + " " + guval + " " + dongval, function(result, status) {
	
	    // 정상적으로 검색이 완료됐으면 
	    if (status === kakao.maps.services.Status.OK) {
	
	        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
	
	        // 결과값으로 받은 위치를 마커로 표시합니다
	        var marker = new kakao.maps.Marker({
	            map: map,
	            position: coords
	        });
	
	        // 인포윈도우로 장소에 대한 설명을 표시합니다
	        var infowindow = new kakao.maps.InfoWindow({
	            content: '<div style="width:150px;text-align:center;padding:6px 0;">적용위치</div>'
	        });
	        infowindow.open(map, marker);
	
	        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
	        map.setCenter(coords);
		        
		        
		        
	        /* ~ 카테고리 검색 ~ */
	    	
	    	// 장소 검색 객체를 생성합니다
	    	var ps = new kakao.maps.services.Places(); 
	    	
	    	// input에서 키워드 받음 
	    	//var keyword = document.querySelector('#search').value;	
	    		
	    	// 키워드로 장소를 검색합니다
	    	ps.keywordSearch(categoryval, placesSearchCB, {
	    		radius : 2000,
	    		location: coords
	    	});
	
	
	    	// 키워드 검색 완료 시 호출되는 콜백함수 입니다
	    	function placesSearchCB (data, status, pagination) {
	    	    if (status === kakao.maps.services.Status.OK) {
	
	    	        // 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
	    	        // LatLngBounds 객체에 좌표를 추가합니다
	    	        var bounds = new kakao.maps.LatLngBounds();
	
	    	        for (var i=0; i<data.length; i++) {
	    	            displayMarker(data[i]);    
	    	            bounds.extend(new kakao.maps.LatLng(data[i].y, data[i].x));
	    	        }       
	    			
	    	        //if ( bounds =! null )
	    	        // 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
	    	        map.setBounds(bounds);
	    	    } 
	    	}
	    	
	    	// 지도에 마커를 표시하는 함수입니다
	    	function displayMarker(place) {
	    		
	    	    // 마커를 생성하고 지도에 표시합니다
	    	    var marker = new kakao.maps.Marker({
	    	        map: map,
	    	        position: new kakao.maps.LatLng(place.y, place.x) 
	    	    });
	
	    	    // 마커에 클릭이벤트를 등록합니다
	    	    kakao.maps.event.addListener(marker, 'click', function() {
	    	    	document.getElementById('myModal').style.display = 'block';
	    	    });
	    	    	
	   	    	//modal.classList.remove('hidden');
	   	    	
	   	        
	   	    	// 마커를 클릭하면 장소명이 인포윈도우에 표출됩니다
	   	        /* infowindow.setContent(
	   	       		'<div style="padding:5px;font-size:12px;">' + place.place_name + '</div><br><div style="padding:5px;font-size:12px;">' + place.road_address_name + '</div><br><div style="padding:5px;font-size:12px;">' + place.phone + '</div>'
	   	        );
	   	        infowindow.open(map, marker); */
	    	        
			};
		}	
	});
};
</script>
<!-- 적용x -->



<script>
//모달 닫기 버튼 이벤트 처리
document.querySelector('.close').addEventListener('click', function() {
    document.getElementById('myModal').style.display = 'none';
});

// 모달 바깥 영역 클릭 시 모달 닫기
window.addEventListener('click', function(event) {
    var modal = document.getElementById('myModal');
    if (event.target === modal) {
        modal.style.display = 'none';
    }
});
</script>

<button type="button" id="getMyPositionBtn" onclick="getCurrentPosBtn()">내 위치 가져오기</button>

</body>
</html>