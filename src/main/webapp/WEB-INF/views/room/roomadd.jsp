<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>매물 상세 페이지</title>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="../resources/room/css/bootstrap.min.css">
    <link rel="stylesheet" href="../resources/room/fontawesome/css/all.min.css">
    <link rel="stylesheet" href="../resources/room/css/templatemo-style.css">
    
    <!-- Flatpickr 스타일 및 스크립트 파일 로드 -->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/flatpickr/dist/flatpickr.min.css">
	<script src="https://cdn.jsdelivr.net/npm/flatpickr"></script>
    
    <!-- services와 clusterer, drawing 라이브러리 불러오기 -->
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=63c0f4f3e00e8d6c49088160aa0fdd64&libraries=services,clusterer,drawing"></script>

</head>
<body>
    <!-- Page Loader -->
    <div id="loader-wrapper">
        <div id="loader"></div>

        <div class="loader-section section-left"></div>
        <div class="loader-section section-right"></div>

    </div>
    <nav class="navbar navbar-expand-lg">
        <div class="container-fluid">
            <a class="navbar-brand" href="/">
                <img alt="" src="../resources/comm/logo.png" style="width: 250px; height: 100px;">
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <i class="fas fa-bars"></i>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ml-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link nav-link-1" href="/roomList">지도</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link nav-link-2" href="#">미구현</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link nav-link-3" href="#">미구현</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link nav-link-4 active" aria-current="page" href="contact.html">매물 정보</a>
                </li>
            </ul>
            </div>
        </div>
    </nav>

    <div class="tm-hero d-flex justify-content-center align-items-center" data-parallax="scroll" data-image-src="../resources/room/image.png"></div>

    <div class="container-fluid tm-mt-60">
        <div class="row tm-mb-50">
        
            <div class="col-lg-4 col-12 mb-5">
                <h2 class="tm-text-primary mb-5">매물 등록</h2>
                <form id="contact-form" action="" method="POST" class="tm-contact-form mx-auto">
                	<div>
                		<!-- 로그인 한 파트너 값 -->		    
						<input type="hidden" id="addressInput" name="partnerNo" class="form-control rounded-0" value=""/>
                		
                		<!-- 주소(도로명) 입력 -->
	                    <div class="form-group">
						    <h6>주소(도로명)</h6>
						    <input type="text" id="addressInput" name="address" class="form-control rounded-0" value="" required placeholder="주소(도로명)을 입력 해주세요." />
						    <!-- 위도 -->
						    <input type="hidden" id="latInput" name="lat" class="form-control rounded-0" value="" />
						    <!-- 경도 -->
						    <input type="hidden" id="lngInput" name="lng" class="form-control rounded-0" value="" />
						    <button id="showLocationButton">위치 확인하기</button>
						</div>
	                    <script>
						    // 주소 확인 버튼 클릭 시 이벤트 핸들러
						    document.getElementById('showLocationButton').addEventListener('click', function () {
						        var address = document.getElementById('addressInput').value; // 입력된 주소 가져오기
						
						        // 주소를 좌표로 변환하는 Geocoder 객체 생성
						        var geocoder = new kakao.maps.services.Geocoder();
						
						        // 주소를 좌표로 변환
						        geocoder.addressSearch(address, function (result, status) {
						            if (status === kakao.maps.services.Status.OK) {
						                var lat = result[0].y; // 위도
						                var lng = result[0].x; // 경도
						
						                // 위도와 경도를 숨겨진 입력 필드에 채워 넣기
						                document.getElementById('latInput').value = lat;
						                document.getElementById('lngInput').value = lng;
						
						                // 지도에 마커 표시
						                var mapContainer = document.getElementById('map'); // 지도를 표시할 div 요소
						                var mapOptions = {
						                    center: new kakao.maps.LatLng(lat, lng), // 위도와 경도로 지도 중심 설정
						                    level: 5 // 지도 확대 레벨
						                };
						
						                var map = new kakao.maps.Map(mapContainer, mapOptions); // 지도 생성
						
						                var markerPosition = new kakao.maps.LatLng(lat, lng); // 마커의 위치 설정
						                var marker = new kakao.maps.Marker({
						                    position: markerPosition
						                });
						
						                marker.setMap(map); // 마커 지도에 표시
						            } else {
						                alert('주소를 찾을 수 없습니다.');
						            }
						        });
						    });
						</script>
	                    
	                    <div class="form-group">
	                    	<h6>상세주소</h6>
	                        <input type="text" id="addressInput" name="address2" class="form-control rounded-0" value=""required placeholder="주소(건물명)를 입력 해주세요." />
	                        <input type="text" id="addressInput" name="dong" class="form-control rounded-0" value=""required placeholder="동을 입력 해주세요." />
	                        <input type="text" id="addressInput" name="ho" class="form-control rounded-0" value=""required placeholder="호를 입력 해주세요." />
	                    </div>
                   
                    	<!-- 전세, 월세 표시 -->
	                    <div class="form-group">
	                    	<h6>전세 / 월세</h6>
	                        <label>
						        <input type="radio" name="name" value="y" required> 월세
						    </label>
						    <label>
						        <input type="radio" name="name" value="n" required> 전세
						    </label>
	                    </div>
	                    
	                    <!-- 매물타입(원룸,투룸,쓰리룸,오피스텔) -->
	                    <div class="form-group">
	                    	<h6>타입</h6>
	                        <label>
						        <input type="radio" name="roomType" value="o" required> 원룸
						    </label>
						    <label>
						        <input type="radio" name="roomType" value="t" required> 투룸
						    </label>
						    <label>
						        <input type="radio" name="roomType" value="h" required> 쓰리룸
						    </label>
						    <label>
						        <input type="radio" name="roomType" value="f" required> 오피스텔
						    </label>
	                    </div>
	                    
	                    <!-- 전용 면적 -->
	                    <div class="form-group">
	                    	<h6>전용 면적(평)</h6>
	                        <input type="text" name="roomSize" class="form-control rounded-0" value=""required placeholder="단위(평)" />
	                    </div>
	                    
	                    <!-- 건물 층/ 해당 층 -->
	                    <div class="form-group">
	                    	<h6>건물층수</h6>
	                        <input type="text" name="buildingFloor" class="form-control rounded-0" value=""required placeholder="건물 전체 층" />
	                        <input type="text" name="roomFloor" class="form-control rounded-0" value=""required placeholder="해당 층" />
	                    </div>
	                    
	                    <!-- 방 수 -->
	                    <div class="form-group">
	                    	<h6>방 수</h6>
	                        <input type="text" name="roomCount" class="form-control rounded-0" value=""required placeholder="방 수" />
	                    </div>
	                    
	                    <!-- 욕실 수 -->
	                    <div class="form-group">
	                    	<h6>욕실 수</h6>
	                        <input type="text" name="bathAt" class="form-control rounded-0" value=""required placeholder="욕실 수" />
	                    </div>
	                    
	                    <!-- 엘리베이터 유무 -->
	                    <div class="form-group">
	                    	<h6>엘리베이터</h6>
	                        <label>
						        <input type="radio" name="elevatorAt" value="y" required> 있음
						    </label>
						    <label>
						        <input type="radio" name="elevatorAt" value="n" required> 없음
						    </label>
	                    </div>
                    	
                    	<!-- 입주가능여부 -->
                    	<div class="form-group">
						    <h6>입주가능여부</h6>
						    <label>
						        <input type="radio" name="moveInAt" value="y" required> 즉시입주가능
						    </label>
						    <label>
						        <input type="radio" name="moveInAt" value="n" required> 추후입주가능
						    </label>
						</div>
                    	<!-- 입주가능날짜 -->
	                    <div class="form-group" id="moveInDateField" style="display: none;">
						    <h6>입주가능날짜</h6>
						    <input type="datetime" id="moveInDateInput" name="moveInDate" class="form-control rounded-0" value="" required/>
						</div>
						<script>
						    // 라디오 버튼 이벤트 리스너 추가
						    var radioButtons = document.getElementsByName("moveInAt");
						    for (var i = 0; i < radioButtons.length; i++) {
						        radioButtons[i].addEventListener('change', function () {
						            toggleMoveInDateField(this.value);
						        });
						    }
						    // 달력 초기화 및 보이기/숨기기 설정
						    var moveInDateInput = document.getElementById("moveInDateInput");
						    var moveInDateField = document.getElementById("moveInDateField");
						
						    function toggleMoveInDateField(value) {
						        if (value === "n") {
						            moveInDateField.style.display = "block"; // 보이도록 설정
						
						            // Flatpickr 달력 초기화
						            flatpickr(moveInDateInput, {
						                enableTime: false, // 시간 선택 비활성화
						                dateFormat: "Y-m-d", // 날짜 형식 지정
						            });
						        } else {
						            moveInDateField.style.display = "none"; // 숨김
						        }
						    }
						</script>
						
	                    <!-- 관리비 여부 -->
						<div class="form-group">
						    <h6>관리비 여부</h6>
						    <label>
						        <input type="radio" name="manageFeeAt" value="y" required> 있음
						    </label>
						    <label>
						        <input type="radio" name="manageFeeAt" value="n" required> 없음
						    </label>
						</div>
						<!-- 관리비 -->
						<div class="form-group" id="manageFeeField" style="display: none;">
						    <h6>관리비</h6>
						    <input type="text" name="manageFee" class="form-control rounded-0" value="" required placeholder="매월(만원단위) 관리비 입력"/>
						</div>  
		               	<script> 
						    // 라디오 버튼 이벤트 리스너 추가
						    var radioButtons = document.getElementsByName("manageFeeAt");
						    for (var i = 0; i < radioButtons.length; i++) {
						        radioButtons[i].addEventListener('change', function () {
						            toggleManageFeeField(this.value);
						        });
						    }
						    // 관리비 입력 필드를 토글하는 함수
						    function toggleManageFeeField(value) {
						        var manageFeeField = document.getElementById("manageFeeField");
						
						        if (value === "y") {
						            manageFeeField.style.display = "block"; // 보이도록 설정
						        } else {
						            manageFeeField.style.display = "none"; // 숨김
						        }
						    }
						</script>
	               	
	               		<!-- 주차가능여부 -->
	                    <div class="form-group">
		                    <h6>주차 가능 여부</h6>
						    <label>
						        <input type="radio" name="parkingAt" value="y" required> 가능
						    </label>
						    <label>
						        <input type="radio" name="parkingAt" value="n" required> 불가능
						    </label>
		               	</div>
		               	<!-- 매물소개 -->
		               	<div class="form-group">
			                <h6>매물 소개</h6>
			                <input type="text" name="name" class="form-control rounded-0" value="" required placeholder="소개란"/>
			            </div>
	                    <div class="form-group">
	                    	<h6>매물 설명</h6>
	                        <textarea rows="8" name="message" class="form-control rounded-0" placeholder="설명란" required ></textarea>
	                    </div>
                  	</div>
                </form> 
                               
            </div>
            
            <div class="col-lg-4 col-12">
                <h2 class="tm-text-primary mb-5">매물 위치</h2>
                <!-- Map -->
                <div class="mapouter mb-4">
                    <div id="map" style="width:100%;height:740px;"></div> 
                </div> 
                                             
            </div>
        </div>
        <div class="row tm-mb-74 tm-people-row">
            <div class="col-lg-3 col-md-6 col-sm-6 col-12 mb-5">
                <img src="../resources/room/img/people-1.jpg" alt="Image" class="mb-4 img-fluid">
                <h2 class="tm-text-primary mb-4" style="text-align: center;">추천 매물1</h2>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-6 col-12 mb-5">
                <img src="../resources/room/img/people-2.jpg" alt="Image" class="mb-4 img-fluid">
                <h2 class="tm-text-primary mb-4" style="text-align: center;">추천 매물2</h2>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-6 col-12 mb-5">
                <img src="../resources/room/img/people-3.jpg" alt="Image" class="mb-4 img-fluid">
                <h2 class="tm-text-primary mb-4" style="text-align: center;">추천 매물3</h2>
            </div>
            <div class="col-lg-3 col-md-6 col-sm-6 col-12 mb-5">
                <img src="../resources/room/img/people-4.jpg" alt="Image" class="mb-4 img-fluid">
                <h2 class="tm-text-primary mb-4" style="text-align: center;">추천 매물4</h2>
            </div>
        </div>
    </div> <!-- container-fluid, tm-container-content -->

    <footer class="tm-bg-gray pt-5 pb-3 tm-text-gray tm-footer">
        <div class="container-fluid tm-container-small">
            <div class="row">
                <div class="col-lg-6 col-md-12 col-12 px-5 mb-5">
                    <h3 class="tm-text-primary mb-4 tm-footer-title">About Catalog-Z</h3>
                    <p>Catalog-Z is free Bootstrap 5 Alpha 2 HTML Template for video and photo websites. You can freely use this TemplateMo layout for a front-end integration with any kind of CMS website.</p>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6 col-12 px-5 mb-5">
                    <h3 class="tm-text-primary mb-4 tm-footer-title">Our Links</h3>
                    <ul class="tm-footer-links pl-0">
                        <li><a href="#">Advertise</a></li>
                        <li><a href="#">Support</a></li>
                        <li><a href="#">Our Company</a></li>
                        <li><a href="#">Contact</a></li>
                    </ul>
                </div>
                <div class="col-lg-3 col-md-6 col-sm-6 col-12 px-5 mb-5">
                    <ul class="tm-social-links d-flex justify-content-end pl-0 mb-5">
                        <li class="mb-2"><a href="https://facebook.com"><i class="fab fa-facebook"></i></a></li>
                        <li class="mb-2"><a href="https://twitter.com"><i class="fab fa-twitter"></i></a></li>
                        <li class="mb-2"><a href="https://instagram.com"><i class="fab fa-instagram"></i></a></li>
                        <li class="mb-2"><a href="https://pinterest.com"><i class="fab fa-pinterest"></i></a></li>
                    </ul>
                    <a href="#" class="tm-text-gray text-right d-block mb-2">Terms of Use</a>
                    <a href="#" class="tm-text-gray text-right d-block">Privacy Policy</a>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-8 col-md-7 col-12 px-5 mb-3">
                    Copyright 2020 Catalog-Z Company. All rights reserved.
                </div>
                <div class="col-lg-4 col-md-5 col-12 px-5 text-right">
                    Designed by <a href="https://templatemo.com" class="tm-text-gray" rel="sponsored" target="_parent">TemplateMo</a>
                </div>
            </div>
        </div>
    </footer>
    
    <script src="../resources/room/js/plugins.js"></script>
    <script>
        $(window).on("load", function() {
            $('body').addClass('loaded');
        });
    </script>
    
</body>
</html>