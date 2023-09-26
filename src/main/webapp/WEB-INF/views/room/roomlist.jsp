<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html lang="ko">
  <head>
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
	
	<div id="search-container">
	    <label for="address">주소 입력:</label>
	    <input type="text" id="address" placeholder="주소를 입력하세요.">
	    <button onclick="searchAddress()">검색하기</button>
	</div>
	
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=63c0f4f3e00e8d6c49088160aa0fdd64&libraries=services,clusterer,drawing"></script>
	<script>
		var map;
		var markers = [];
		
		// 카카오 지도 초기화
		function initMap() {
		    var mapContainer = document.getElementById('map');
		    var mapOptions = {
		        center: new kakao.maps.LatLng(36.35107, 127.4544), // 초기 중심 좌표
		        level: 3 // 초기 확대 레벨
		    };
		    map = new kakao.maps.Map(mapContainer, mapOptions);
		}
		
		// 서버에서 주소 검색 결과를 가져오는 함수
		function searchAddress() {
		    var address = document.getElementById('address').value;
		
		    // 카카오 맵 API를 사용하여 주소를 좌표로 변환
		    var geocoder = new kakao.maps.services.Geocoder();
		    geocoder.addressSearch(address, function (result, status) {
		        if (status === kakao.maps.services.Status.OK) {
		            var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
		
		            // 이전에 표시된 마커들을 모두 삭제
		            removeAllMarkers();
		
		            // 마커 생성 및 표시
		            var marker = new kakao.maps.Marker({
		                map: map,
		                position: coords
		            });
		
		            // 검색 결과 위치를 지도 중심으로 설정
		            map.setCenter(coords);
		
		            // 생성된 마커를 배열에 추가
		            markers.push(marker);
		        } else {
		            alert('주소를 찾을 수 없습니다.');
		        }
		    });
		}
		
		// 이전에 표시된 마커들을 모두 삭제하는 함수
		function removeAllMarkers() {
		    for (var i = 0; i < markers.length; i++) {
		        markers[i].setMap(null);
		    }
		    markers = [];
		}
		
		// 페이지 로드 시 지도 초기화
		window.onload = function () {
		    initMap();
		};
	</script>

</html>
