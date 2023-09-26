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

        // 서버에서 주소 검색 결과를 가져와 DB 리스트와 비교하여 마커 표시
        function searchAddress() {
            var address = document.getElementById('address').value;

            // 카카오 맵 API를 사용하여 주소를 좌표로 변환
            var geocoder = new kakao.maps.services.Geocoder();
            geocoder.addressSearch(address, function (result, status) {
                if (status === kakao.maps.services.Status.OK) {
                    var searchCoords = new kakao.maps.LatLng(result[0].y, result[0].x);

                    // 이전에 표시된 마커들을 모두 삭제
                    removeAllMarkers();

                    // 서버에서 DB 리스트를 가져옵니다.
                    $.ajax({
                        url: '/itemList', // 서버에서 데이터를 가져올 엔드포인트
                        type: 'GET',
                        dataType: 'json',
                        success: function (data) {
                            if (data && data.length > 0) {
                                // 가져온 DB 리스트를 반복하여 마커를 생성하고 지도에 표시
                                for (var i = 0; i < data.length; i++) {
                                    var dbCoords = new kakao.maps.LatLng(data[i].lat, data[i].lng);

                                    // 주소 검색 결과 좌표와 DB 리스트 좌표를 비교하여 일치하는 경우에만 마커 표시
                                    if (searchCoords.equals(dbCoords)) {
                                        var marker = new kakao.maps.Marker({
                                            map: map,
                                            position: dbCoords
                                        });
                                        markers.push(marker);
                                    }
                                }
                            }
                        },
                        error: function (error) {
                            console.error('데이터를 불러오는데 실패했습니다.', error);
                        }
                    });

                    // 검색 결과 위치를 지도 중심으로 설정
                    map.setCenter(searchCoords);
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
    </script>

</html>
