<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html lang="ko">
<head>
 	<!-- services와 clusterer, drawing 라이브러리 불러오기 -->
    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=63c0f4f3e00e8d6c49088160aa0fdd64&libraries=services,clusterer,drawing"></script>
    
    <jsp:include page="../head.jsp"></jsp:include>
    <jsp:include page="../nav.jsp"></jsp:include>
   
    <style>
    	body {
		    background-image: url('../resources/comm/backlogo.png'); /* 이미지 파일의 경로를 지정 */
		    background-repeat: repeat; /* 이미지를 반복해서 사용하도록 설정 */
		}
    
    	#header-wrap {
	        position: fixed; /* 헤더를 화면 상단에 고정합니다 */
	        width: 100%; /* 너비를 100%로 설정하여 화면 가로폭에 맞게 헤더가 나타나도록 합니다 */
	        z-index: 1000; /* 다른 요소 위에 나타나도록 설정하세요 (필요에 따라 숫자 조정) */
	    }
    
    	/* 스타일을 추가하여 검색창과 리스트를 원하는 위치에 배치합니다. */
	    #search-list-container {
	        position: absolute;
	        top: 16%; /* 헤더 높이만큼 아래에 위치하도록 조정 */
	        right: 0px; /* 오른쪽에 위치하도록 조정 */
	        /* z-index: 1; */
	        display: flex; /* 컨테이너 내부의 요소를 가로로 배치하기 위해 flex 사용 */
	        flex-direction: column; /* 컨테이너 내부의 요소를 세로로 배치하기 위해 flex-direction 사용 */
	        /* max-height: 84%; */
	        max-height: calc(100vh - 16%); /* 화면 높이에서 헤더의 높이를 빼서 최대 높이로 설정 */
	        width: 30%;
	    }
    
	    /* 스타일을 추가하여 검색창을 원하는 위치에 배치합니다. */
	    #search-container {
	    position: absolute;
	        background-color: white;
	        padding: 10px;
	        border-radius: 5px;
	        box-shadow: 0px 0px 5px 0px rgba(0, 0, 0, 0.5);
	        margin-bottom: 10px; /* 검색 폼과 리스트 사이의 간격을 설정 */
	        position: relative; /* 부모 컨테이너 기준으로 배치 */
            z-index: 2; /* 검색창을 부가 메뉴보다 위로 올립니다. */
	    }
	
	    /* 리스트 창 스타일 설정 */
	    #list-container {
	        background-color: white;
	        padding: 10px;
	        border-radius: 5px;
	        box-shadow: 0px 0px 5px 0px rgba(0, 0, 0, 0.5);
	        overflow-y: auto;
	    }
	
	    /* 지도 스타일 설정 */
	    #map {
	        position: absolute;
	        top: 16%; /* 헤더 높이만큼 아래에 위치하도록 조정 */
	        left: 5px;
	        width: calc(100% - 30%); /* 검색창과 리스트 창의 너비를 제외한 나머지 공간을 지도가 차지하도록 조정 */
	        /* height: 84%; */
	        height: calc(100vh - 16%); /* 화면 높이에서 헤더의 높이를 빼서 최대 높이로 설정 */
	        z-index: 0; /* 지도를 가장 뒤로 배치 
	    }
	    
	    /* 스타일을 추가하여 선택한 매물을 노란색으로 표시합니다. */
	    .property-item.selected {
	        background-color: yellow;
	    }
	    
	    /* 반짝이는 효과를 정의하는 클래스 */
		.marker-blink {
		    animation: blink 1s infinite; /* 1초 간격으로 반짝이게 함 */
		}
		
		@keyframes blink {
		    0%, 100% { opacity: 1; } /* 투명도를 1로 설정 */
		    50% { opacity: 0; } /* 투명도를 0으로 설정 */
		}
	</style>
</head>
	
	<body>
	    <div id="map"></div>
	    <script>
	        var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
	        mapOption = { 
	            center: new kakao.maps.LatLng(36.35107, 127.4544), // 지도의 중심좌표
	            level: 3 // 지도의 확대 레벨
	        };
	        // 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
	        var map = new kakao.maps.Map(mapContainer, mapOption); 
	    </script>
	    
	    <div class="container" id="search-list-container" >
		    <form role="search" class="email-search" method="post" id="search-container">
		        <div>
		            <!-- 방종류 -->
		            <select id="itemType" name="itemType">
		                <option value="">원룸,투룸,쓰리룸,오피스텔</option>
		                <option value="O">원룸</option>
		                <option value="T">투룸</option>
		                <option value="H">쓰리룸</option>
		                <option value="F">오피스텔</option>
		            </select>
		        </div>
		        <div>
		            <!-- 월-전세 -->
		            <select id="leaseOrMonth" name="leaseOrMonth">
		                <option value="">월세,전세</option>
		                <option value="month">월세</option>
		                <option value="lease">전세</option>
		            </select>
		        </div>
		        <div class="input-group">
		            <div class="input-group-prepend">
		                <span class="feather-icon"><i data-feather="search"></i></span>
		            </div>
		            <input type="text" class="form-control" name="search" id="search" placeholder="도로명 또는 건물명을 입력하세요.">
		        </div>
		    </form>
		
		    <div class="emailapp-emails-list" id="list-container">
		        <div class="nicescroll-bar">
		            <c:forEach var="item" items="${list}">
		                <a href="/itemDetail/${item.itemNo}" target="_blank" onclick="handleClick('${item.itemNo}')" class="property-item" id="property-${item.itemNo}">
		                    <div class="media-img-wrap">
		                        <div class="avatar">
		                            <img src="/resources/dist/img/avatar1.jpg" alt="user" class="avatar-img rounded-circle">
		                        </div>
		                    </div>
		                    
		                    <div class="media-body">
		                        <div>
		                            <div class="email-head font-weight-700 font-lg-15"><h5>${item.address} (${item.address2})</h5></div>
		                            <c:if test="${item.leaseOrMonth == 'lease' }">
		                                <div class="email-subject"><h5>전세 ${item.leasePrice }</h5></div>
		                            </c:if>
		                            <c:if test="${item.leaseOrMonth == 'month' }">
		                                <div class="email-subject"><h5>월세 ${item.depositFee} / ${item.monthPrice}</h5></div>
		                            </c:if>
		                            <c:if test="${item.itemType == 'O' }">
		                                <div class="email-subject">원룸, ${item.itemSize}평, ${item.itemFloor}층/${item.buildingFloor}층</div>
		                            </c:if>
		                            <c:if test="${item.itemType == 'T' }">
		                                <div class="email-subject">투룸, ${item.itemSize}평, ${item.itemFloor}층/${item.buildingFloor}층</div>
		                            </c:if>
		                            <c:if test="${item.itemType == 'H' }">
		                                <div class="email-subject">쓰리룸, ${item.itemSize}평, ${item.itemFloor}층/${item.buildingFloor}층</div>
		                            </c:if>
		                            <c:if test="${item.itemType == 'F' }">
		                                <div class="email-subject">오피스텔, ${item.itemSize}평, ${item.itemFloor}층/${item.buildingFloor}층</div>
		                            </c:if>
		                            <div class="email-subject">${item.memoShort} </div>
		                            <div class="email-text">
		                                <p>${item.memoDetail}</p>
		                            </div>
		                        </div>
		                    </div>
		                    
		                </a>
		                <div class="email-hr-wrap">
		                    <hr>
		                </div>
		            </c:forEach>
		        </div>
		    </div>
		</div>
		
		<!-- 카테고리에 따른 마커 생성 -->
		<c:forEach var="item" items="${list}">
		
		    <script>
		        var positions = [
		            {
		                title: "${item.itemNo}",
		                latlng: new kakao.maps.LatLng(${item.lat}, ${item.lng})
		            }
		        ]
		
		        // 마커 이미지의 이미지 주소입니다
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
		                
		             	// 클릭한 마커의 번호에 해당하는 페이지로 새 창으로 이동
		                var itemNo = this.getTitle(); // 클릭한 마커의 title 속성에 itemNo가 저장되어 있음
		                var url = "/itemDetail/" + itemNo; // 이동할 페이지의 URL을 생성
		                window.open(url, "_blank"); // 페이지를 새 창으로 열기
		            });
		        }
		        
		        // 검색 결과가 있을 때, 첫 번째 마커를 기준으로 지도 중심을 설정합니다
		        if (positions.length > 0) {
		            map.setCenter(positions[0].latlng);
		        }
		        
		    </script>
		</c:forEach>

		<script>
		 	// 페이지 로드 시 저장된 검색 조건을 불러와서 설정
		    window.addEventListener('load', function () {
		        var selectedItemType = localStorage.getItem('selectedItemType');
		        var selectedLeaseOrMonth = localStorage.getItem('selectedLeaseOrMonth');
		        var searchKeyword = localStorage.getItem('searchKeyword');
	
		        // 검색 조건 셀렉트 박스와 검색어 필드에 이전 값 설정
		        if (selectedItemType) {
		            document.getElementById('itemType').value = selectedItemType;
		        }
		        if (selectedLeaseOrMonth) {
		            document.getElementById('leaseOrMonth').value = selectedLeaseOrMonth;
		        }
		        if (searchKeyword) {
		            document.getElementById('search').value = searchKeyword;
		        }
		    });
	
		    // 폼 제출 시 선택한 옵션과 검색어를 저장
		    document.getElementById('search-container').addEventListener('submit', function (e) {
		        var selectedItemType = document.getElementById('itemType').value;
		        var selectedLeaseOrMonth = document.getElementById('leaseOrMonth').value;
		        var searchKeyword = document.getElementById('search').value;
	
		        // localStorage에 저장
		        localStorage.setItem('selectedItemType', selectedItemType);
		        localStorage.setItem('selectedLeaseOrMonth', selectedLeaseOrMonth);
		        localStorage.setItem('searchKeyword', searchKeyword);
		    });
		    
	    </script>
	    
	    <!-- 매물 봤다면 봤다는 표시 -->
	    <script>
		 	// 클릭한 매물을 저장할 변수
		    var selectedProperty = null;
	
		    // 매물을 클릭했을 때 호출되는 함수
		    function handleClick(propertyId) {
		        // 선택한 매물의 ID를 저장
		        selectedProperty = propertyId;
	
		        // 모든 매물 요소에 클래스를 제거
		        var propertyElements = document.querySelectorAll('.property-item');
		        propertyElements.forEach(function (element) {
		            element.classList.remove('selected');
		        });
	
		        // 선택한 매물에 클래스를 추가하여 노란색 스타일 적용
		        var selectedElement = document.getElementById('property-' + propertyId);
		        if (selectedElement) {
		            selectedElement.classList.add('selected');
		        }
		    }
		</script>
	    
    </body>
</html>