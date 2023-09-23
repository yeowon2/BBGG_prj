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
                <i class="fas fa-film mr-2"></i>
                Catalog-Z
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
                	<!-- 주소(도로명) 입력 -->
	                    <div class="form-group">
	                    	<h6>주소(도로명)</h6>
	                        <input type="text" id="addressInput" name="name" class="form-control rounded-0" value=""required placeholder="주소(도로명)을 입력 해주세요." />
	                        <button id="showLocationButton">위치 확인하기</button>
	                    </div>
                   
                    <!-- 전세, 월세 표시 -->
	                    <div class="form-group">
	                    	<h6>전세 / 월세</h6>
	                        <input type="text" name="name" class="form-control rounded-0" value="" required placeholder="전세 / 월세 입력"/>
	                    </div>
                    
                    <!-- 입주가능날짜 -->
	                    <div class="form-group">
	                    	<h6>일주가능날짜</h6>
	                        <input type="text" name="name" class="form-control rounded-0" value="" required placeholder="입주가능 날짜 입력"/>
	                    </div>
                    
                    <!-- 관리비 -->
	                    <div class="form-group">
		                    <h6>관리비</h6>
		                    <input type="text" name="name" class="form-control rounded-0" value="" required placeholder="매월(만원단위) 관리비 입력"/>
		               	</div>
	               	
	               	<!-- 주차가능여부 -->
	                    <div class="form-group">
		                    <h6>주차가능여부</h6>
		                    <input type="text" name="name" class="form-control rounded-0" value="" required placeholder="주차가능여부 입력"/>
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
                  	
                  	<div>
                	<!-- 주소(도로명) 입력 -->
	                    <div class="form-group">
	                    	<h6>주소(도로명)</h6>
	                        <input type="text" name="name" class="form-control rounded-0" value=""required placeholder="주소(도로명)을 입력 해주세요." />
	                    </div>
                   
                    <!-- 전세, 월세 표시 -->
	                    <div class="form-group">
	                    	<h6>전세 / 월세</h6>
	                        <input type="text" name="name" class="form-control rounded-0" value="" required placeholder="전세 / 월세 입력"/>
	                    </div>
                    
                    <!-- 입주가능날짜 -->
	                    <div class="form-group">
	                    	<h6>일주가능날짜</h6>
	                        <input type="text" name="name" class="form-control rounded-0" value="" required placeholder="입주가능 날짜 입력"/>
	                    </div>
                    
                    <!-- 관리비 -->
	                    <div class="form-group">
		                    <h6>관리비</h6>
		                    <input type="text" name="name" class="form-control rounded-0" value="" required placeholder="매월(만원단위) 관리비 입력"/>
		               	</div>
	               	
	               	<!-- 주차가능여부 -->
	                    <div class="form-group">
		                    <h6>주차가능여부</h6>
		                    <input type="text" name="name" class="form-control rounded-0" value="" required placeholder="주차가능여부 입력"/>
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
                  	
                  	<div>
                	<!-- 주소(도로명) 입력 -->
	                    <div class="form-group">
	                    	<h6>주소(도로명)</h6>
	                        <input type="text" name="name" class="form-control rounded-0" value=""required placeholder="주소(도로명)을 입력 해주세요." />
	                    </div>
                   
                    <!-- 전세, 월세 표시 -->
	                    <div class="form-group">
	                    	<h6>전세 / 월세</h6>
	                        <input type="text" name="name" class="form-control rounded-0" value="" required placeholder="전세 / 월세 입력"/>
	                    </div>
                    
                    <!-- 입주가능날짜 -->
	                    <div class="form-group">
	                    	<h6>일주가능날짜</h6>
	                        <input type="text" name="name" class="form-control rounded-0" value="" required placeholder="입주가능 날짜 입력"/>
	                    </div>
                    
                    <!-- 관리비 -->
	                    <div class="form-group">
		                    <h6>관리비</h6>
		                    <input type="text" name="name" class="form-control rounded-0" value="" required placeholder="매월(만원단위) 관리비 입력"/>
		               	</div>
	               	
	               	<!-- 주차가능여부 -->
	                    <div class="form-group">
		                    <h6>주차가능여부</h6>
		                    <input type="text" name="name" class="form-control rounded-0" value="" required placeholder="주차가능여부 입력"/>
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
    // 카카오 지도 API를 초기화합니다.
    kakao.maps.load(function () {
        var mapContainer = document.getElementById('map'); // 지도를 표시할 div 요소
        var mapOptions = {
            center: new kakao.maps.LatLng(37.5665, 126.9780), // 초기 지도 중심 좌표 (서울)
            level: 13 // 지도 확대 레벨
        };

        // 지도를 생성합니다.
        var map = new kakao.maps.Map(mapContainer, mapOptions);

        // "위치 확인하기" 버튼 클릭 시
        document.getElementById('showLocationButton').addEventListener('click', function () {
            var address = document.getElementById('addressInput').value; // 입력된 주소 가져오기

            // 주소로 좌표를 검색합니다.
            var geocoder = new kakao.maps.services.Geocoder();
            geocoder.addressSearch(address, function (result, status) {
                if (status === kakao.maps.services.Status.OK) {
                    var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

                    // 마커를 생성하고 지도에 표시합니다.
                    var marker = new kakao.maps.Marker({
                        map: map,
                        position: coords
                    });

                    // 지도 중심을 검색한 위치로 이동합니다.
                    map.setCenter(coords);
                } else {
                    alert('주소를 찾을 수 없습니다.');
                }
            });
        });
    });
</script>
</body>
</html>