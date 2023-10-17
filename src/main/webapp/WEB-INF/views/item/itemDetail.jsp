<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" session="false" %>

<!DOCTYPE html>
<html lang="ko">
  <head>
	<!-- services와 clusterer, drawing 라이브러리 불러오기 -->
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=63c0f4f3e00e8d6c49088160aa0fdd64&libraries=services,clusterer,drawing"></script>
  <style>
  	body, #content  {
  		background-color: #F5F5F5;
  	}
  	.property-details, .listing-content {
  	background-color:#FFFFFF;
  	}
  	.info-row {
  	margin:10px;
  	}
  	.widget-social, .widget-other {
  	background-color:#FFFFFF;
  	 margin-bottom: 40px;
  	padding: 30px;
  	box-shadow: 0px 0px 10px 0px rgba(0, 0, 0, 0.1);
  	}
  	
  	.widget .listing-img-container img {
  		height:195px;
  	}
  	.additional-details li {
  		margin-bottom:20px;
  	}
  	.option_list {
  		box-sizing:border-box;
  		padding:10px 20px 0px;
  		text-align:center;
  		display:table;
  	}
  	.option_list .option_item {
		display:inline-block;
  		box-sizing:border-box;
  		min-width:100px;
  		margin: 0 auto;
  	}
  	.option_list .option_img {
  		height:30px;
  		width:30px;
  	}
	
	.property-slider .owl-carousel img {
		max-height:410px;
	}
	.lni-heart {
		font-size:x-large;
		color:#216928;
	}
	.item_info h4{
		padding:10px 0px;
	}
	.button_guide {
    position: relative;
    box-sizing: border-box;
    display: block;
}
.button_guide .button_title {
    display: block;
    padding: 10px;
    height: 85px;
    font-weight: 100;
    font-size: 14px;
    line-height: 25px;
    letter-spacing: -0.5px;
    color: #222;
    box-sizing:border-box;
}
.button_guide .button_title .button_point {
    font-size: 18px;
    font-weight: 700;
    box-sizing: border-box;
}
	
  </style>
	<jsp:include page="../head.jsp"></jsp:include>
  </head>
  <body>
	<jsp:include page="../nav.jsp"></jsp:include>
 <!-- Page Banner Start -->
    <div id="page-banner-area" class="page-banner">
      <div class="page-banner-title">
        <div class="text-center">
          <h2>상세 페이지</h2>
          <a href="/"><i class="lni-home"></i> 매물 보기</a>
          <span class="crumbs-spacer"><i class="lni-chevron-right"></i></span>
          <span class="current">상세 페이지</span>
        </div>
      </div>
    </div>
    <!-- Page Banner End -->

    <!-- Start Content -->
    <div id="content" class="section-padding">
      <div class="container">
        <div class="property-details">
          <div class="row">
            <div class="col-lg-4 col-md-12 col-xs-12">
              <div class="item_info">
                <span style="display:inline-block">매물 번호: </span><p id="item-no" style="display:inline-block">${itemVO.itemNo}</p>
                <h4>${itemVO.address2}</h4>
                <p class="address"><i class="lni-map-marker"></i> ${itemVO.address}</p>
              </div>
            </div>
            <div class="col-lg-4 col-md-12 col-xs-12">
              <div class="details">
                <div class="details-listing">
                  <p>방 수</p>
                  <h5>${itemVO.itemCount}</h5>
                </div>
                <div class="details-listing">
                  <p>욕실 수</p>
                  <h5>${itemVO.bathAt}</h5>
                </div>
                <div class="details-listing">
                  <p>면적</p>
                  <h5><fmt:formatNumber value="${itemVO.itemSize * 3.3}" pattern="#,##0" />㎡ / ${itemVO.itemSize}평 </h5>
                </div>
              </div>
            </div>
            <div class="col-lg-4 col-md-12 col-xs-12">
              <div class="others">
                <ul class="row">
				  <li class="col-lg-8">
				  	<c:choose>
                       	<c:when test="${itemVO.depositFee == null}">
                       		<c:if test="${itemVO.leasePrice >= 10000 && LTM != 0 && LB != 0}">
                       			<h4>전세 ${LB}억 ${LTM}</h4>
                       		</c:if>
                       		<c:if test="${itemVO.leasePrice >= 10000 && LB != 0 && LTM == 0}">
                       			<h4>전세 ${LB}억</h4>
                       		</c:if>
                       		<c:if test="${itemVO.leasePrice < 10000 }">
                       			<h4>전세 ${itemVO.leasePrice}</h4>
                       		</c:if>
                       	</c:when>
                       	<c:otherwise>
	                        <h4>월세 ${itemVO.depositFee} / ${itemVO.monthPrice}</h4>
                       	</c:otherwise>
                       </c:choose>
		  		 	</li>
				  <li class="col-lg-2"><button type="button" class="btn" id="wishBtn"><i class="lni-heart"></i></button></li>
				</ul>
              </div>
            </div>
          </div>
        </div>
        <div class="row">
          <!-- Product Info Start -->
          <div class="col-lg-8 col-md-12 col-xs-12">
              <div class="property-slider">
                <div id="property-slider" class="owl-carousel owl-theme">
                <c:forEach var="fileVO" items="${itemVO.fileVOList}">
                  <div class="item">
                    <img src="/upload/${fileVO.savedName}" alt="">                      
                  </div>
                </c:forEach>
                </div>
              </div>  
              
              <div class="property-details">
	              <div class="inner-box short-info">
	                <h2 class="desc-title">상세 정보</h2>
	                <ul class="additional-details">        
	                  <li class="row">
	                  	<div class="col-lg-4">
	                    	<strong>건물이름</strong>
	                    </div>
	                    <div class="col-lg-8">
	                    	<span>${itemVO.address2}</span>
	                  	</div>
	                  </li>
	                  <li class="row">
	                  	<div class="col-lg-4">
	                    	<strong>방종류</strong>
	                    </div>
	                    <div class="col-lg-8">
	                    	<c:choose>
							    <c:when test="${item.itemType eq 'O'}">
							        <p>원룸</p>
							    </c:when>
							    <c:when test="${item.itemType eq 'T'}">
							        <p>투룸</p>
							    </c:when>
							    <c:when test="${item.itemType eq 'H'}">
							        <p>쓰리룸</p>
							    </c:when>
							    <c:otherwise>
							        <p>오피스텔</p>
							    </c:otherwise>
							</c:choose>
	                  	</div>
	                  </li>
	                  <li class="row">
	                  	<div class="col-lg-4">
	                    	<strong>해당층/건물층</strong>
	                    </div>
	                    <div class="col-lg-8">
	                    	<span>${itemVO.itemFloor}층/${itemVO.buildingFloor}층</span>
	                  	</div>
	                  </li>
	                  <li class="row">
	                  	<div class="col-lg-4">
	                    	<strong>전용면적</strong>
	                    </div>
	                    <div class="col-lg-8">
	                    	<span>${itemVO.itemSize * 3.3}㎡ / ${itemVO.itemSize}평</span>
	                  	</div>
	                  </li>
	                  <li class="row">
	                  	<div class="col-lg-4">
	                    	<strong>방 수/욕실 수</strong>
	                    </div>
	                    <div class="col-lg-8">
	                    	<span>${itemVO.itemCount}개/${itemVO.bathAt}개</span>
	                  	</div>
	                  </li>
	                  <li class="row">
	                  	<div class="col-lg-4">
	                    	<strong>엘리베이터</strong>
	                    </div>
	                    <div class="col-lg-8">
						    <span>${itemVO.elevatorAt eq 'Y' ? '있음' : '없음'}</span>
						</div>
	                  </li>
	                  <li class="row">
	                  	<div class="col-lg-4">
	                    	<strong>주차여부</strong>
	                    </div>
	                    <div class="col-lg-8">
						    <span>${itemVO.parkingAt eq 'Y' ? '가능' : '불가'}</span>
						</div>
	                  </li>
	                  <li class="row">
	                  	<div class="col-lg-4">
	                    	<strong>입주가능일</strong>
	                    </div>
	                    <div class="col-lg-8">
	                    	<c:if test="${itemVO.moveInDate == null}">
		                    	<span>즉시 입주 가능</span>
	                    	</c:if>
							<c:if test="${itemVO.moveInDate != null}">
		                    	<span><fmt:formatDate value="${itemVO.moveInDate}" pattern="yyyy.MM.dd"/></span>
	                    	</c:if>
	                  	</div>
	                  </li>
	                  <li class="row">
	                  	<div class="col-lg-4">
	                    	<strong>최초등록일</strong>
	                    </div>
	                    <div class="col-lg-8">
	                    	<span><fmt:formatDate value="${itemVO.registDate}" pattern="yyyy.MM.dd"/></span>
	                  		<span id="lat" style="display:none">${itemVO.lat}</span>
	    					<span id="lng" style="display:none">${itemVO.lng}</span>
	                  	</div>
	                  </li>
	                  
	                </ul>
	              </div>
              </div>
              
              <div class="property-details">
	               <div class="inner-box property-dsc">
	                <h2 class="desc-title">상세 설명</h2>
	               	<p>${itemVO.memoDetail}</p>
	              </div>
              </div>
              
            <div class="property-details">
			  <div class="inner-box featured">  
			    <h2 class="desc-title">옵션</h2>
			    	<ul class="option_list">
			    		<li class="option_item">
			    			<img class="option_img" alt="" src="/resources/assets/img/property/air.png">
			    			<p class="option_name">에어컨</p>
			    		</li>
			    		<li class="option_item">
			    			<img class="option_img" alt="" src="/resources/assets/img/property/bed.png">
			    			<p class="option_name">침대</p>
			    		</li>
			    		<li class="option_item">
			    			<img class="option_img" alt="" src="/resources/assets/img/property/closet.png">
			    			<p class="option_name">옷장</p>
			    		</li>
			    		<li class="option_item">
			    			<img class="option_img" alt="" src="/resources/assets/img/property/cooking.png">
			    			<p class="option_name">가스레인지</p>
			    		</li>
			    		<li class="option_item">
			    			<img class="option_img" alt="" src="/resources/assets/img/property/induction-stove.png">
			    			<p class="option_name">인덕션</p>
			    		</li>
			    		<li class="option_item">
			    			<img class="option_img" alt="" src="/resources/assets/img/property/sneakers.png">
			    			<p class="option_name">신발장</p>
			    		</li>
			    	</ul>
			    	<ul class="option_list">
			    		<li class="option_item">
			    			<img class="option_img" alt="" src="/resources/assets/img/property/microwave.png">
			    			<p class="option_name">전자레인지</p>
			    		</li>
			    		<li class="option_item">
			    			<img class="option_img" alt="" src="/resources/assets/img/property/refrigerator.png">
			    			<p class="option_name">냉장고</p>
			    		</li>
			    		<li class="option_item">
			    			<img class="option_img" alt="" src="/resources/assets/img/property/sofa.png">
			    			<p class="option_name">소파</p>
			    		</li>
			    		<li class="option_item">
			    			<img class="option_img" alt="" src="/resources/assets/img/property/tumble-dryer.png">
			    			<p class="option_name">건조기</p>
			    		</li>
			    		<li class="option_item">
			    			<img class="option_img" alt="" src="/resources/assets/img/property/washing-machine.png">
			    			<p class="option_name">세탁기</p>
			    		</li>
			    	</ul>
			  </div>
			</div>

              
              <div class="property-details">
	              <div class="inner-box location-map">
	                <h2 class="desc-title">위치 정보</h2>
	                <div id="container-map">
	                	<!-- Map -->
		                <div class="mapouter mb-4">
		                    <div id="map" style="width:100%;height:380px;"></div> 
		                </div> 
	                </div>
	              </div>
              </div>
           
            </div>
            <!--Sidebar-->
            <aside id="sidebar" class="col-lg-4 col-md-12 col-xs-12 right-sidebar">
              <!-- Widget -->
              <!-- Property Agent Widget -->
              <div class="widget mt3">
                <div class="agent-inner" style="padding: 32px 25px 20px 32px;">
                  <div class="agent-title">
                    <div class="agent-photo">
                    	<c:if test="${partnerVO.fileVO == null}">
		                      <img src="/resources/assets/img/productinfo/agent.jpg" alt="" style="border-radius:100%">
                    	</c:if>
		                      <img src="/upload/${partnerVO.fileVO.savedName}" alt="" style="border-radius:100%">
                    </div>
                    <div class="agent-details">
                      <h3><a href="#">${partnerVO.compName}</a></h3>
                      <span><i class="lni-phone-handset"></i>042-525-7890</span>
                    </div>
                  </div>
                    <div class="row">
					  <div class="col-lg-12 info-row">
					    <span>대표명: ${partnerVO.partnerName}</span>
					  </div>
					   <div class="col-lg-12 info-row">
					    <span><i class="lni-map-marker"></i>주소: ${partnerVO.compAddress}</span>
					  </div>
					  <div class="col-lg-12 info-row">
					    <span>중개등록번호: ${partnerVO.registNum}</span>
					  </div>
					</div>
					<div>
						<hr>
						<div class="partner_button">
							<div class="button_guide">
					            <a href="javascript:void(0)" class="email-compose text-center button_title" data-toggle="modal" data-target="#exampleModalEmail">
					                쉽고 빠른 거래를 위한 
					                <br>
					                <span class="button_point">문의하기</span>
					            </a>
					        </div>
				        </div>
                	</div>
                </div>
              </div>
              <!-- Property Featured Widget -->
              <div class="widget mt3 widget-other">
                <h3 class="sidebar-title">이 중개사무소의 다른 방</h3>
                <div id="listing-carousel" class="owl-carousel">
                	<c:forEach var="item" items="${partItemList}">
	                  <div class="item">
	                    <div class="listing-item">
	                      <a href="/itemDetail/${item.itemNo}" class="listing-img-container">
	                      	<c:if test="${item.fileVO == null}">
		                      <img src="/resources/assets/img/property/house-6.jpg" alt="">
                    		</c:if>
	                      	<c:if test="${item.fileVO != null}">
		              	        <img src="/upload/${item.fileVO.savedName}" alt="">
                    		</c:if>
	                        <div class="listing-content">
	                          <span class="listing-title">${item.address2} 
	                          		<c:choose>
				                       	<c:when test="${item.depositFee == null}">
				                       		<c:if test="${item.leasePrice >= 10000 && LTM != 0 && LB != 0}">
				                       			<i>전세 ${LB}억 ${LTM}</i>
				                       		</c:if>
				                       		<c:if test="${item.leasePrice >= 10000 && LB != 0 && LTM == 0}">
				                       			<i>전세 ${LB}억</i>
				                       		</c:if>
				                       		<c:if test="${item.leasePrice < 10000 }">
				                       			<i>전세 ${item.leasePrice}</i>
				                       		</c:if>
				                       	</c:when>
				                       	<c:otherwise>
					                       <i>월세 ${item.depositFee} / ${item.monthPrice}</i>
				                       	</c:otherwise>
				                       </c:choose>
	                          </span>
	                          <ul class="listing-content row">
	                            <li class="col-lg-4">면적 <span>${item.itemSize}㎡</span></li>
	                            <li class="col-lg-4">방 수 <span>${item.itemCount}</span></li>
	                            <li class="col-lg-4">욕실 수 <span>${item.bathAt}</span></li>
	                          </ul>
	                        </div>
	                      </a>
	                    </div>
	                  </div>
                  </c:forEach>
                </div>
              </div>
              
              <!-- Social Media -->
              <div class="widget widget-social">
                <h3 class="sidebar-title">허위 매물 신고하기</h3>
                <c:set var="itemNo" value="${itemVO.itemNo}"/>
                    <a href='/fake/<c:out value="${itemNo}"/>'>	   
	                 	<button class="btn btn-outline-danger btn-wth-icon icon-wthot-bg btn-sm">
	                 		<span class="icon-label"><i class="fa fa-exclamation-triangle"></i></span>
	                 		<span class="btn-text">caution</span>
	             		</button>
             		</a>
              </div>            
            </aside>
            <!--End sidebar-->       
        </div>
      </div>    
      
      <!-- Compose email -->
        <div class="modal fade" id="exampleModalEmail" tabindex="-1" role="dialog" aria-labelledby="exampleModalEmail" aria-hidden="true">
            <div class="modal-dialog modal-lg" role="document">
                <div class="modal-content">
                    <div class="modal-header bg-green-light-1">
                        <h6 class="modal-title text-white" id="exampleModalPopoversLabel">New Email</h6>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">×</span>
                        </button>
                    </div>
                    <div class="modal-body">
                          <form method="post" action="/note/${itemVO.itemNo}/add">
		                    <div class="input-group">
		                        <div class="input-group-prepend">
		                            <span class="input-group-text">제목</span>
		                        </div>
		                        <input type="text" name="noteSubject" class="form-control" placeholder="제목을 입력하세요">
		                    </div>
		                    <section class="hk-sec-wrapper">
		                        <h5 class="hk-sec-title">문의 내용을 선택하세요</h5>
		                        <div class="row">
		                            <div class="col-sm">
		                                <div class="row">
		                                    <div class="col-md-8 mt-15">
		                                        <div class="custom-control custom-checkbox checkbox-teal ">
		                                            <input type="checkbox" class="custom-control-input" id="customCheck1" >
		                                            <label class="custom-control-label" for="customCheck1">
		                                                	<span>현재 선택된 매물에 대해 상담받고 싶습니다.<span id="roomNo">매물번호: ${itemVO.itemNo}</span></span>
		                                            </label>
		                                        </div>
		                                    </div>
		                                </div>
		                                <div class="row">
		                                    <div class="col-md-8 mt-15">
		                                        <div class="custom-control custom-checkbox checkbox-teal ">
		                                            <input type="checkbox" class="custom-control-input" id="customCheck2" >
		                                            <label class="custom-control-label" for="customCheck2">
		                                            	<span>해당 매물 바로 볼 수 있는지 문의드립니다.</span>
		                                            </label>
		                                        </div>
		                                    </div>
		                                </div>
		                                <div class="row">
		                                    <div class="col-md-8 mt-15">
		                                        <div class="custom-control custom-checkbox checkbox-teal ">
		                                            <input type="checkbox" class="custom-control-input" id="customCheck3" >
		                                            <label class="custom-control-label" for="customCheck3">
		                                            	<span>해당 매물 거래 시, 중개수수료가 어떻게 될까요?</span>
		                                            </label>
		                                        </div>
		                                    </div>
		                                </div>
		                                <div class="row">
		                                    <div class="col-md-8 mt-15">
		                                        <div class="custom-control custom-checkbox checkbox-teal ">
		                                            <input type="checkbox" class="custom-control-input" id="customCheck4" >
		                                            <label class="custom-control-label" for="customCheck4">
		                                            	<span>보증금 또는 월세 조정이 가능한가요?</span>
		                                            </label>
		                                        </div>
		                                    </div>
		                                </div>
		                                <div class="row">
		                                    <div class="col-md-8 mt-15">
		                                        <div class="custom-control custom-checkbox checkbox-teal ">
		                                            <input type="checkbox" class="custom-control-input" id="customCheck5" >
		                                            <label class="custom-control-label" for="customCheck5">
		                                            	<span>방 내부 컨디션이 궁금합니다.</span>
		                                            </label>
		                                        </div>
		                                    </div>
		                                </div>
		                                <div class="row">
		                                    <div class="col-md-8 mt-15">
		                                        <div class="custom-control custom-checkbox checkbox-teal ">
		                                            <input type="checkbox" class="custom-control-input" id="customCheck6" >
		                                            <label class="custom-control-label" for="customCheck6">
		                                            	<span>계약하고 싶은데 입주일 조정이 가능한가요?</span>
		                                            </label>
		                                        </div>
		                                    </div>
		                                </div>
		                            </div>
		                        </div>
		                    </section>
		                    <div class="form-group">
		                        <h5 class="mb-10" >내용</h5>
		                        <textarea class="form-control" rows="15" name="noteContent" ></textarea>
		                    </div>
		                    
		                    <hr>
		                    <button id="noteBtn" class="btn btn-success" type="submit">전송</button>
             		   </form>
                    </div>
                </div>
            </div>
        </div>
        <!-- /Compose email -->
    </div>
    <!-- End Content -->   
    
<jsp:include page="../footer.jsp"></jsp:include>
<script src="/resources/list/list.js"></script>
<script>
    document.addEventListener("DOMContentLoaded", function() {
        // 체크박스 요소들과 textarea 요소를 가져옵니다.
        const checkboxes = document.querySelectorAll('input[type="checkbox"]');
        const textarea = document.querySelector('textarea[name="noteContent"]');
        // 체크박스가 변경될 때마다 실행되는 함수를 정의합니다.
        function updateTextarea() {
            // textarea의 내용을 초기화합니다.
            textarea.value = "";
            // 체크된 체크박스의 내용을 textarea에 추가합니다.
            checkboxes.forEach(checkbox => {
                if (checkbox.checked) {
                    const labelText = checkbox.nextElementSibling.querySelector('span').textContent;
                    textarea.value += labelText + "\n\n";
                }
            });
        }
        // 체크박스 상태가 변경될 때 updateTextarea 함수를 실행합니다.
        checkboxes.forEach(checkbox => {
            checkbox.addEventListener('change', updateTextarea);
        });
    });
    
 	// 위도와 경도 가져오기
    var lat = parseFloat(document.querySelector('#lat').textContent);
    var lng = parseFloat(document.querySelector('#lng').textContent);
    
	// 이미지 지도에서 마커가 표시될 위치입니다 
	var markerPosition  = new kakao.maps.LatLng(lat, lng); 
	
	// 마커 이미지의 이미지 주소입니다
    var imageSrc = "../resources/comm/homemarker.png";
    
    // 마커 이미지의 이미지 크기 입니다
    var imageSize = new kakao.maps.Size(35, 35);

    // 마커 이미지를 생성합니다    
    var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize);
    
    // 지도를 표시할 div 요소를 선택합니다
    var mapContainer = document.getElementById('map');

    // 지도 옵션을 설정합니다
    var mapOption = {
        center: markerPosition, // 지도의 중심좌표
        level: 2, // 지도의 확대 레벨
        maxLevel: 8 // 지도 최대 확대 레벨
    };

    // 지도를 생성합니다
    var map = new kakao.maps.Map(mapContainer, mapOption);

    // 마커를 생성하고 지도에 표시합니다
    var marker = new kakao.maps.Marker({
        position: markerPosition,
        image: markerImage, // 마커 이미지 설정
    });
    marker.setMap(map);

    // 이미지 지도를 생성합니다
    var staticMapContainer = document.getElementById('staticMap');

    // 이미지 지도 옵션을 설정합니다
    var staticMapOption = {
        center: markerPosition, // 이미지 지도의 중심좌표
        level: 3, // 이미지 지도의 확대 레벨
        marker: marker, // 이미지 지도에 표시할 마커
        maxLevel: 8 // 지도 최대 확대 레벨
    };

    var staticMap = new kakao.maps.StaticMap(staticMapContainer, staticMapOption);

    // 지도에 교통정보를 표시하도록 지도타입을 추가합니다
    map.addOverlayMapTypeId(kakao.maps.MapTypeId.TRAFFIC);
	
</script>

<script>
var wishBtn = $('#wishBtn');
var itemNo = $('#item-no').text();

wishBtn.on('click', function() {
    var serverUrl = `/wish/add/${itemNo}`;
    console.log(serverUrl);
    
    $.ajax({
        url: serverUrl,
        method: 'GET',
        dataType: 'json', // JSON 형식으로 요청
        success: function(result) {
            console.log(result);
            // JSON 응답을 사용하여 처리
        },
        error: function(jqXHR, textStatus, errorThrown) {
            console.error('오류 발생:', errorThrown);
        }
    });
});
</script>
<jsp:include page="../js.jsp"></jsp:include>
  </body>
</html>