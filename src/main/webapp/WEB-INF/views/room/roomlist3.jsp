<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>주소로 장소 표시하기</title>
    <style>
        /* 스타일을 추가하여 검색창을 원하는 위치에 배치합니다. */
        #search-container {
            position: absolute;
            top: 10px;
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
<div id="map" style="width:100%;height:900px;"></div>

<div id="search-container">
    <label for="address">주소 입력:</label>
    <input type="text" id="address" placeholder="주소를 입력하세요.">
    <button onclick="searchAddress()">검색하기</button>
</div>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=63c0f4f3e00e8d6c49088160aa0fdd64&libraries=services,clusterer,drawing"></script>
<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = {
        center: new kakao.maps.LatLng(36.35107, 127.4544), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };  

// 지도를 생성합니다    
var map = new kakao.maps.Map(mapContainer, mapOption);

//지도에 교통정보를 표시하도록 지도타입을 추가합니다
map.addOverlayMapTypeId(kakao.maps.MapTypeId.TRAFFIC); 

// 주소-좌표 변환 객체를 생성합니다
var geocoder = new kakao.maps.services.Geocoder();

function searchAddress() {
    var address = document.getElementById('address').value;

    // 주소로 좌표를 검색합니다
    geocoder.addressSearch(address, function(result, status) {
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
                content: '<div style="width:150px;text-align:center;padding:6px 0;"> 여기있어 </div>'
            });
            infowindow.open(map, marker);

            // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
            map.setCenter(coords);
        } else {
            alert('주소를 찾을 수 없습니다: ' + status);
        }
    });
}
</script>
</body>
</html>
