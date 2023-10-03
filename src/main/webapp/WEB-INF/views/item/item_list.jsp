<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html lang="ko">
  <head>
 
	<!-- services와 clusterer, drawing 라이브러리 불러오기 -->
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=63c0f4f3e00e8d6c49088160aa0fdd64&libraries=services,clusterer,drawing"></script>
    
    <jsp:include page="../head.jsp"></jsp:include>
   
    <style>
        /* 스타일을 추가하여 검색창을 원하는 위치에 배치합니다. */
        #search-container {
            position: absolute;
            top: 150px;
            left: 10px;
            z-index: 1;
            background-color: white;
            padding: 10px;
            border-radius: 5px;
            box-shadow: 0px 0px 5px 0px rgba(0,0,0,0.5);
        }
    </style>
    
</head>
<body>
	<jsp:include page="../nav.jsp"></jsp:include>
	
	<div id="map" style="width:100%;height:750px;"></div>
	
	
	<form method="post" id="search-container">
		<label for="search">주소 입력:</label>
	    <input type="text" name="search" id="search" placeholder="주소를 입력하세요.">
		<!-- <button onclick="applyFn()">적용</button> -->
		<button type="submit">검색</button>
	</form>
	
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=63c0f4f3e00e8d6c49088160aa0fdd64&libraries=services,clusterer,drawing"></script>
	<script>
        var map;
        var markers = [];

        // 카카오 지도 초기화
        function initMap(centerCoords) {
            var mapContainer = document.getElementById('map');
            var mapOptions = {
                center: centerCoords ? centerCoords : new kakao.maps.LatLng(36.35107, 127.4544), // 초기 중심 좌표
                level: 3 // 초기 확대 레벨
            };
            map = new kakao.maps.Map(mapContainer, mapOptions);
        }

        // 페이지 로드 시 지도 초기화
        window.onload = function () {
            // 사용자 동의 여부 확인
            var locationConfirmed = localStorage.getItem('locationConfirmed');

            if (!locationConfirmed || locationConfirmed === 'false') {
                // 사용자가 동의하지 않은 경우
                showLocationConfirmation();
            } else {
                // 사용자가 이미 동의한 경우
                getCurrentLocation();
            }
        };

        // 현재 위치를 가져오기 전에 동의/비동의 알럿 창 표시
        function showLocationConfirmation() {
            var userAgrees = confirm('현재 위치 정보를 사용하시겠습니까?');
            if (userAgrees) {
                // 동의한 경우
                getCurrentLocation();
                localStorage.setItem('locationConfirmed', 'true');
            } else {
                // 비동의한 경우
                localStorage.setItem('locationConfirmed', 'false');
            }
        }

        // 현재 위치 정보 가져오기
        function getCurrentLocation() {
            if (navigator.geolocation) {
                navigator.geolocation.getCurrentPosition(function (position) {
                    var latitude = position.coords.latitude;
                    var longitude = position.coords.longitude;
                    var currentCoords = new kakao.maps.LatLng(latitude, longitude);

                    // 지도 초기화
                    initMap(currentCoords);
                }, function (error) {
                    // 위치 정보를 가져오는데 실패한 경우
                    alert('현재 위치 정보를 가져오는데 실패했습니다.');
                    localStorage.setItem('locationConfirmed', 'false');
                });
            } else {
                // Geolocation을 지원하지 않는 경우
                alert('현재 위치 정보를 가져올 수 없습니다.');
                localStorage.setItem('locationConfirmed', 'false');
            }
        }
    </script>
    <!-- 카테고리에 따른 마커 생성 -->
	<c:forEach var="item" items="${list}">
		<script>
			//var lat = [];
			//var lng = [];
			
			console.log(`${item.lat}, ${item.lng}`);
			
			var positions = [
				{
			        title: `${item.itemNo}`, 
			        latlng: new kakao.maps.LatLng(${item.lat}, ${item.lng})
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
			    	fetch(`item/${item.itemNo}`, {
			            method: "GET",
			        });
			    	document.getElementById('타입').innerHTML = `${item.itemType}`;
			    	document.getElementById('도로명').innerHTML = `${item.address}`;
			    	document.getElementById('상세주소').innerHTML = `${item.address2}`;
			    	document.getElementById('no').value = `${item.itemNo}`;
			
			    	alert("매물번호" + ${item.itemNo});
			    });
			    
			}
		</script>
	
	</c:forEach>

</html>