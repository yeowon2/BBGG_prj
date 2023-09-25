<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
 
<!DOCTYPE html>
<html>
<head>
    <jsp:include page="../head.jsp"></jsp:include>
</head>
<body>
		<jsp:include page="../nav.jsp"></jsp:include>
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
                <h2 class="tm-text-primary mb-5">매물 정보</h2>
                <form id="contact-form" action="" method="POST" class="tm-contact-form mx-auto">
                	
                	<!-- 주소(주택일경우) 동, 호 까지 출력 -->
                	<c:if test="${result.ho  == null && result.dong == null}">
	                    <div class="form-group">
	                    	<h6>주소</h6>
	                        <input type="text" name="name" class="form-control rounded-0" value="${result.address}"required readonly />
	                    </div>
                    </c:if>
                    <!-- 주소(빌라일경우) 동, 호 까지 출력 -->
                	<c:if test="${result.dong  == null && result.ho != null}">
	                    <div class="form-group">
	                    	<h6>주소</h6>
	                        <input type="text" name="name" class="form-control rounded-0" value="${result.address}, ${result.ho}호"required readonly />
	                    </div>
                    </c:if>
                    <!-- 주소(아파트일경우) 동, 호 생략 -->
                    <c:if test="${result.dong != null && result.ho != null}">
	                    <div class="form-group">
	                    	<h6>주소</h6>
		                    <input type="text" name="name" class="form-control rounded-0" value="${result.address}, ${result.dong}동 ${result.ho}호"required readonly />
		                </div>
                    </c:if>
                    <!-- 전세, 월세 표시 -->
                    <c:if test="${result.leaseNo != null && result.monthNo == null}">
	                    <div class="form-group">
	                    	<h6>전세</h6>
	                        <input type="text" name="name" class="form-control rounded-0" value="전세  " required readonly />
	                    </div>
                    </c:if>
                    <c:if test="${result.leaseNo == null && result.monthNo != null}">
	                    <div class="form-group">
	                    	<h6>월세</h6>
	                        <input type="text" name="name" class="form-control rounded-0" value="월세  " required readonly />
	                    </div>
                    </c:if>
                    <!-- 입주가능날짜 -->
                    <c:if test="${result.moveInAt == 'y'}">
	                    <div class="form-group">
	                    	<h6>일주가능날짜</h6>
	                        <input type="text" name="name" class="form-control rounded-0" value="즉시 입주 가능" required readonly />
	                    </div>
                    </c:if>
                    <c:if test="${result.moveInAt == 'n'}">
	                    <div class="form-group">
	                    	<h6>일주가능날짜</h6>
	                        <input type="text" name="name" class="form-control rounded-0" value="${result.moveInDate }" required readonly />
	                    </div>
                    </c:if>
                    <!-- 관리비 -->
                    <c:if test="${result.manageFeeAt == 'y'}">
	                    <div class="form-group">
		                    <h6>관리비</h6>
		                    <input type="text" name="name" class="form-control rounded-0" value="매월 ${result.manageFee}만원" required readonly />
		               	</div>
	               	</c:if>
                    <c:if test="${result.manageFeeAt == 'n'}">
	                    <div class="form-group">
		                    <h6>관리비</h6>
		                    <input type="text" name="name" class="form-control rounded-0" value="관리비 없음" required readonly />
		               	</div>
	               	</c:if>
	               	<!-- 주차가능여부 -->
	               	<c:if test="${result.parkingAt == 'y'}">
	                    <div class="form-group">
		                    <h6>주차가능여부</h6>
		                    <input type="text" name="name" class="form-control rounded-0" value="주차 가능" required readonly />
		               	</div>
	               	</c:if>
	               	<c:if test="${result.parkingAt == 'n'}">
	                    <div class="form-group">
		                    <h6>주차가능여부</h6>
		                    <input type="text" name="name" class="form-control rounded-0" value="주차 불가능" required readonly />
		               	</div>
	               	</c:if>
	               	
	               	<div class="form-group">
		                <h6>매물 소개</h6>
		                <input type="text" name="name" class="form-control rounded-0" value="${result.memoShort }" required readonly />
		            </div>
                  
                    <div class="form-group">
                    	<h6>매물 설명</h6>
                        <textarea rows="8" name="message" class="form-control rounded-0" placeholder="${result.memoDetail }" required readonly></textarea>
                    </div>

                   
                </form>                
            </div>
            <div class="col-lg-4 col-12 mb-5">
                <div class="tm-address-col">
                    <h2 class="tm-text-primary mb-5">매물 상세 정보</h2>
                    <c:if test="${result.roomType == 'o' }">
                    	<p class="tm-mb-50" >방종류: 원룸</p>
                    </c:if>
                    <c:if test="${result.roomType == 't' }">
                    	<p class="tm-mb-50">방종류: 투룸</p>
                    </c:if>
                    <c:if test="${result.roomType == 'h' }">
                    	<p class="tm-mb-50">방종류: 쓰리룸</p>
                    </c:if>
                    <c:if test="${result.roomType == 'f' }">
                    	<p class="tm-mb-50">방종류: 오피스텔</p>
                    </c:if>
                    
                    <p class="tm-mb-50">해당층/건물층: ${result.roomFloor } / ${result.buildingFloor } </p>
                    
                    <p class="tm-mb-50">전용면적: ${result.roomSize }평 </p>
                    
                    <p class="tm-mb-50">방 수/욕실 수: ${result.roomCount } / ${result.bathAt } </p>
                    
                    <c:if test="${result.elevatorAt == 'y' }">
                    	<p class="tm-mb-50">엘리베이터: 있음</p>
                    </c:if>
                    <c:if test="${result.elevatorAt != 'y' }">
                    	<p class="tm-mb-50">엘리베이터: 없음</p>
                    </c:if>
                    
                    <ul class="tm-contacts">
                        <li>
                            <a href="#" class="tm-text-gray">
                                <i class="fas fa-envelope"></i>
                                Agency: 
                            </a>
                        </li>
                        <li>
                            <a href="#" class="tm-text-gray">
                                <i class="fas fa-phone"></i>
                                Tel: 010-020-0340
                            </a>
                        </li>
                        <li>
                            <a href="#" class="tm-text-gray">
                                <i class="fas fa-globe"></i>
                                URL: www.company.com
                            </a>
                        </li>
                    </ul>
                     <address class="tm-text-gray tm-mb-50">
                        120-240 Fusce eleifend varius tempus<br>
                        Duis consectetur at ligula 10660
                    </address>
                    <c:set var="roomNo" value="${result.roomNo}"/>
                    <a href='/roomSelect/<c:out value="${roomNo}"/>/add'>
	                    <button class="btn btn-secondary btn-wth-icon icon-wthot-bg btn-rounded icon-right btn-sm">
		                    <span class="btn-text">쪽지보내기</span> 
	                       	<span class="icon-label">
	                       		<span class="feather-icon">
	                           		<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-arrow-right">
	                              	 	<line x1="5" y1="12" x2="19" y2="12"></line>
	                               	    <polyline points="12 5 19 12 12 19"></polyline>
	                           		</svg>
	                           	</span> 
	                        </span>
	                    </button>
                    </a>
                    <a href='/report/<c:out value="${roomNo}"/>'>
	                    <button class="btn btn-secondary btn-wth-icon icon-wthot-bg btn-rounded icon-right btn-sm">
		                    <span class="btn-text">신고하기</span> 
	                       	<span class="icon-label">
	                       		<span class="feather-icon">
	                           		<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-arrow-right">
	                              	 	<line x1="5" y1="12" x2="19" y2="12"></line>
	                               	    <polyline points="12 5 19 12 12 19"></polyline>
	                           		</svg>
	                           	</span> 
	                        </span>
	                    </button>
                    </a>
                </div>                
            </div>
            <div class="col-lg-4 col-12">
                <h2 class="tm-text-primary mb-5">매물 위치</h2>
                
                <!-- Map -->
                <div class="mapouter mb-4">
                    <div id="staticMap" style="width:100%;height:740px;"></div> 
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
    
    <script>
    
    	var lats = ${result.lat};
    	var lngs = ${result.lng};
		
		// 이미지 지도에서 마커가 표시될 위치입니다 
		var markerPosition  = new kakao.maps.LatLng(lats, lngs); 
		
		// 이미지 지도에 표시할 마커입니다
		// 이미지 지도에 표시할 마커는 Object 형태입니다
		var marker = {
		    position: markerPosition
		};
		
		var staticMapContainer  = document.getElementById('staticMap'), // 이미지 지도를 표시할 div  
		    staticMapOption = { 
		        center: new kakao.maps.LatLng(lats, lngs), // 이미지 지도의 중심좌표
		        level: 3, // 이미지 지도의 확대 레벨
		        marker: marker // 이미지 지도에 표시할 마커 
		    };    
		
		// 이미지 지도를 생성합니다
		var staticMap = new kakao.maps.StaticMap(staticMapContainer, staticMapOption);
		
		//지도에 교통정보를 표시하도록 지도타입을 추가합니다
		map.addOverlayMapTypeId(kakao.maps.MapTypeId.TRAFFIC); 
	</script>
</body>
</html>