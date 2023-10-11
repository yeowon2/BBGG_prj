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
              <div class="info">
                <h4>${itemVO.address2}</h4>
                <p class="room-type">매물 번호: ${itemVO.itemNo}</p>
                <p class="address"><i class="lni-map-marker"></i> ${itemVO.address} ${itemVO.dong} ${itemVO.ho} </p>
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
                  <h5>${itemVO.itemSize}㎡ / </h5>
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
				  <li class="col-lg-2"><button type="button" class="btn btn-outline-success list"><i class="lni-thumbs-up"></i></button></li>
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
                    	<span>${itemVO.itemSize}㎡(㎡)</span>
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
               <div class="inner-box property-dsc">
                <h2 class="desc-title">상세 설명</h2>
               	<p>${itemVO.memoDetail}</p>
              </div>
              <div class="inner-box featured">  
                <h2 class="desc-title">Features</h2>
                <ul class="property-features checkboxes">
                  <li><i class="lni-check-box"></i> Air Conditioning</li>
                  <li><i class="lni-check-box"></i> Central Heating</li>
                  <li><i class="lni-check-box"></i> Laundry Room</li>
                  <li><i class="lni-check-box"></i> Window Covering</li>
                  <li><i class="lni-check-box"></i> Swimming Pool</li>
                  <li><i class="lni-check-box"></i> Central Heating</li>
                  <li><i class="lni-check-box"></i> Gym</li>
                  <li><i class="lni-check-box"></i> Internet</li>
                  <li><i class="lni-check-box"></i> Alarm</li>
                </ul>
              </div>
              <div class="inner-box location-map">
                <h2 class="desc-title">위치 정보</h2>
                <div id="container-map">
                	<!-- Map -->
	                <div class="mapouter mb-4">
	                    <div id="staticMap" style="width:100%;height:400px;"></div> 
	                </div> 
                </div>
              </div>
           
            </div>
            <!--Sidebar-->
            <aside id="sidebar" class="col-lg-4 col-md-12 col-xs-12 right-sidebar">
              <!-- Widget -->
              <!-- Property Agent Widget -->
              <div class="widget mt3">
                <div class="agent-inner">
                  <div class="agent-title">
                    <div class="agent-photo">
                      <a href="#"><img src="/resources/assets/img/productinfo/agent.jpg" alt=""></a>
                    </div>
                    <div class="agent-details">
                      <h3><a href="#">${partnerVO.compName}</a></h3>
                      <span><i class="lni-phone-handset"></i>(123) 123-456</span>
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
					 <a href="javascript:void(0)" class="email-compose" data-toggle="modal" data-target="#exampleModalEmail">
                  		<button class="btn btn-common fullwidth mt-4">쪽지 보내기</button>
                	</a>
                </div>
              </div>
              <!-- Property Featured Widget -->
              <div class="widget mt3">
                <h3 class="sidebar-title">이 중개사무소의 다른 방</h3>
                <div id="listing-carousel" class="owl-carousel">
                	<c:forEach var="item" items="${partItemList}">
	                  <div class="item">
	                    <div class="listing-item">
	                      <a href="#" class="listing-img-container">
	                        <img src="/resources/assets/img/productinfo/listing1.jpg" alt="">
	                        <div class="listing-content">
	                          <span class="listing-title">${item.address2} <i>$275,000</i></span>
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
                <ul class="social-icons"> 
                <c:set var="itemNo" value="${itemVO.itemNo}"/>
                    <a href='/fake/<c:out value="${itemNo}"/>'>	   
                 	<button class="btn btn-danger btn-wth-icon icon-wthot-bg btn-sm">
                 		<span class="icon-label"><i class="fa fa-exclamation-triangle"></i></span>
                 		<span class="btn-text">caution</span>
             		</button>
             		</a>
                </ul>
              </div>            
            </aside>
            <!--End sidebar-->       
        </div>
      </div>    
      
      <!-- Compose email -->
                            <div class="modal fade" id="exampleModalEmail" tabindex="-1" role="dialog" aria-labelledby="exampleModalEmail" aria-hidden="true">
                                <div class="modal-dialog modal-lg" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header bg-grey-dark-5">
                                            <h6 class="modal-title text-white" id="exampleModalPopoversLabel">New Email</h6>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">×</span>
                                            </button>
                                        </div>
                                        <div class="modal-body">
                                                <form method="post" >
                                        
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
                                                        <div class="col-md-6 mt-15">
                                                            <div class="custom-control custom-checkbox checkbox-teal ">
                                                                <input type="checkbox" class="custom-control-input" id="customCheck1" >
                                                                <label class="custom-control-label" for="customCheck1">
                                                                    	<span>현재 선택된 매물에 대해 상담받고 싶습니다.</span>
                                                                    	<span id="roomNo">매물번호: </span>
                                                                </label>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-md-6 mt-15">
                                                            <div class="custom-control custom-checkbox checkbox-teal ">
                                                                <input type="checkbox" class="custom-control-input" id="customCheck2" >
                                                                <label class="custom-control-label" for="customCheck2">
                                                                	<span>해당 매물 바로 볼 수 있는지 문의드립니다.</span>
                                                                </label>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-md-6 mt-15">
                                                            <div class="custom-control custom-checkbox checkbox-teal ">
                                                                <input type="checkbox" class="custom-control-input" id="customCheck3" >
                                                                <label class="custom-control-label" for="customCheck3">
                                                                	<span>해당 매물 거래 시, 중개수수료가 어떻게 될까요?</span>
                                                                </label>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-md-6 mt-15">
                                                            <div class="custom-control custom-checkbox checkbox-teal ">
                                                                <input type="checkbox" class="custom-control-input" id="customCheck4" >
                                                                <label class="custom-control-label" for="customCheck4">
                                                                	<span>보증금 또는 월세 조정이 가능한가요?</span>
                                                                </label>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-md-6 mt-15">
                                                            <div class="custom-control custom-checkbox checkbox-teal ">
                                                                <input type="checkbox" class="custom-control-input" id="customCheck5" >
                                                                <label class="custom-control-label" for="customCheck5">
                                                                	<span>방 내부 컨디션이 궁금합니다.</span>
                                                                </label>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-md-6 mt-15">
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
                                        <button class="btn btn-success" type="submit">전송</button>
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
	
	// 이미지 지도에 표시할 마커입니다
	// 이미지 지도에 표시할 마커는 Object 형태입니다
	var marker = {
	    position: markerPosition
	};
	
	var staticMapContainer  = document.getElementById('staticMap'), // 이미지 지도를 표시할 div  
	    staticMapOption = { 
	        center: markerPosition, // 이미지 지도의 중심좌표
	        level: 3, // 이미지 지도의 확대 레벨
	        marker: marker // 이미지 지도에 표시할 마커 
	    };    
	
	// 이미지 지도를 생성합니다
	var staticMap = new kakao.maps.StaticMap(staticMapContainer, staticMapOption);
	
</script>

<script>
$(document).ready(function() {
    $("form").submit(function(event) {
        event.preventDefault();
        var formData = new FormData(this);
        $.ajax({
            url: "/your-server-endpoint-url", 
            type: "POST", 
            data: formData,
            contentType: false, 
            processData: false, 
            success: function(response) {
                console.log(response); 
            },
            error: function(xhr, status, error) {
                console.error(error); 
            }
        });
    });
});
</script>
<jsp:include page="../js.jsp"></jsp:include>
  </body>
</html>