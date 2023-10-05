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

        /* 리스트 창 스타일 설정 */
        #list-container {
            position: absolute;
            top: 350px; /* 검색 폼 아래에 위치하도록 조정 */
            left: 10px;
            z-index: 1;
            background-color: white;
            padding: 10px;
            border-radius: 5px;
            box-shadow: 0px 0px 5px 0px rgba(0,0,0,0.5);
            overflow-y: scroll;
            max-height: 500px;
        }
    </style>
</head>
	
	<body>
	    <jsp:include page="../nav.jsp"></jsp:include>
	    
	    <div id="map" style="width:100%;height:750px;"></div>
	    
	    <form method="post" id="search-container">
	    	<div>
		    	<!-- 방종류 -->
			    <select id="itemType" name="itemType">
					<option value="">원룸,투룸,쓰리룸,오피스텔</option>
					<option value="O" >원룸</option>
					<option value="T" >투룸</option>
					<option value="H" >쓰리룸</option>
					<option value="F" >오피스텔</option>
				</select>
	    	</div>
	    	<div>
		    	<!-- 월-전세 -->
			    <select id="leaseOrMonth" name="leaseOrMonth">
					<option value="">월세,전세</option>
					<option value="month" >월세</option>
					<option value="lease" >전세</option>
				</select>
	    	</div>
	        <label for="search">주소 입력:</label>
	        <input type="text" name="search" id="search" placeholder="도로명 또는 건물명을 입력하세요.">
	        <!-- <button onclick="applyFn()">적용</button> -->
	        <button type="submit">검색</button>
	    </form>
	
	    <script>
	        var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
	        mapOption = { 
	            center: new kakao.maps.LatLng(36.35107, 127.4544), // 지도의 중심좌표
	            level: 3 // 지도의 확대 레벨
	        };
	
	        // 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
	        var map = new kakao.maps.Map(mapContainer, mapOption); 
	        
	    </script>
	    
	    <!-- 검색 결과를 표시할 리스트 창 -->
		    <div id="list-container" >
		    	<table>
		    		<thead>
		    			<tr>
		    				<th><div>번호</div></th>
		    				<th><div>타입</div></th>
		    				<th><div>도로명</div></th>
		    				<th><div>상세주소</div></th>
		    				<th><div>관리비</div></th>
		    			</tr>
		    		</thead>
		    		<tbody>
		    			<c:forEach var="item" items="${list}">
				    			<tr>
				    				<td><div><a href="/itemDetail/${item.itemNo}">${item.itemNo}</a></div></td>
				    				<td>
				    					<div>
					    					<c:if test="${item.itemType == 'O' }">원룸</c:if>
					    					<c:if test="${item.itemType == 'T' }">투룸</c:if>
					    					<c:if test="${item.itemType == 'H' }">쓰리룸</c:if>
					    					<c:if test="${item.itemType == 'F' }">오피스텔</c:if>
				    					</div>
				    				</td>
				    				<td><div><a href="/itemDetail/${item.itemNo}">${item.address}</a></div></td>
				    				<td><div><a href="/itemDetail/${item.itemNo}">${item.address2}</a></div></td>
				    				<td>
				    					<div>
					    					<c:if test="${item.manageFeeAt == 'Y' }">${item.manageFee}</c:if>
					    					<c:if test="${item.manageFeeAt == 'N' }">${item.manageFee}</c:if>
				    					</div>
				    				</td>
				    			</tr>
		    			</c:forEach>
		    		</tbody>
		    	</table>
		    </div>
	    
	    <!-- 카테고리에 따른 마커 생성 -->
	    <c:forEach var="item" items="${list}">
	    
	        <script>
	            // var lat = [];
	            // var lng = [];
	            console.log(`${item.lat}, ${item.lng}`);
	
	            var positions = [
	                {
	                    title: `${item.itemNo}`, 
	                    latlng: new kakao.maps.LatLng(${item.lat}, ${item.lng})
	                }
	            ]
	
	            //마커 이미지의 이미지 주소입니다
	            var imageSrc = "../resources/comm/marker.png"; 
	
	            for (var i = 0; i < positions.length; i++) {
	
	                // 마커 이미지의 이미지 크기 입니다
	                var imageSize = new kakao.maps.Size(28, 35); 
	
	                // 마커 이미지를 생성합니다    
	                var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize); 
	
	                // 마커를 생성합니다
	                var marker = new kakao.maps.Marker({
	                    map: map, // 마커를 표시할 지도
	                    position: positions[i].latlng, // 마커를 표시할 위치
	                    title : positions[i].title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
	                    image : markerImage // 마커 이미지 
	                });
	
	                // 마커에 클릭 이벤트를 등록합니다
	                kakao.maps.event.addListener(marker, 'click', function() {
	                	// 클릭한 마커의 위치로 지도 중심 이동
	                    map.setCenter(marker.getPosition());
	                });
	            }
	        </script>
	    </c:forEach>
    </body>
</html>