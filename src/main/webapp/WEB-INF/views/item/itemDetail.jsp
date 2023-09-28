<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" session="false" %>

<!DOCTYPE html>
<html lang="ko">
  <head>
  <style>
  	body, #content {
  		background-color: #F5F5F5;
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
          <h2>매물 보기</h2>
          <a href="/"><i class="lni-home"></i> Home</a>
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
                  <h5>${itemVO.itemSize}㎡</h5>
                </div>
              </div>
            </div>
            <div class="col-lg-4 col-md-12 col-xs-12">
              <div class="others">
                <ul class="row">
				  <li class="col-lg-8">
				  	<c:choose>
                       	<c:when test="${itemVO.depositFee == null}">
	                        <h4>전세 ${itemVO.price}</h4>
                       	</c:when>
                       	<c:otherwise>
	                        <h4>월세 ${itemVO.depositFee} / ${itemVO.price}</h4>
                       	</c:otherwise>
                       </c:choose>
		  		 	</li>
				  <li class="col-lg-2"><a href="#"><i class="lni-heart"></i></a></li>
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
                  <div class="item">
                    <img src="/resources/assets/img/productinfo/img1.jpg" alt="">                      
                  </div>
                  <div class="item">
                    <img src="/resources/assets/img/productinfo/img2.jpg" alt="">
                  </div>
                  <div class="item">
                    <img src="/resources/assets/img/productinfo/img3.jpg" alt="">
                  </div>
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
                <div id="conatiner-map"></div>
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
					  <div class="col-lg-12">
					    <span>대표명: ${partnerVO.partnerName}</span>
					  </div>
					</div>
					
					<div class="row">
					  <div class="col-lg-12">
					    <span><i class="lni-map-marker"></i>주소: ${partnerVO.compAddress}</span>
					  </div>
					</div>
					
					<div class="row">
					  <div class="col-lg-12">
					    <span>중개등록번호: ${partnerVO.registNum}</span>
					  </div>
					</div>
					 <a href='/itemSelect/<c:out value="${itemNo}"/>/add'>
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
              
              <!-- Mortgage widget 
              <div class="widget">
                <h3 class="sidebar-title">Mortgage Calculator</h3>
                <form class="mortgage-calc">
                  <p class="tip-content">Set This Property Price</p>
                  <div class="calc-input">
                    <input type="text" class="form-control" name="amount" placeholder="Sale Price" required="">
                    <label>$</label>
                  </div>
                  <div class="calc-input">
                    <input type="text" class="form-control" placeholder="Down Payment">
                    <label  class="fa fa-usd">$</label>
                  </div>
                  <div class="calc-input">
                    <input type="text" class="form-control" placeholder="Loan Term (Years)" required="">
                    <label class="lni-calendar"></label>
                  </div>
                  <div class="calc-input">
                    <input type="text" class="form-control" placeholder="Interest Rate" required="">
                    <label>%</label>
                  </div>
                  <button class="btn btn-common">Calculate</button>
                </form>
              </div>
				-->
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
<!--  
      <div class="container">
        <div class="row"> 
          <div class="col-12">
            <h2 class="desc-title">포함 여부 고민 중</h2>
          </div>           
          <div class="col-lg-4 col-md-6 col-xs-12">
            <div class="property-main">
              <div class="property-wrap">
                <div class="property-item">
                  <div class="item-thumb">
                    <a class="hover-effect" href="property.html">
                      <img class="img-fluid" src="/resources/assets/img/property/house-1.jpg" alt="">
                    </a>
                    <div class="label-inner">
                      <span class="label-status label bg-red">For Sale</span>
                    </div>
                  </div>
                  <div class="item-body">
                    <h3 class="property-title"><a href="property.html">Amazing oceanfront apartment</a></h3>
                    <div class="adderess"><i class="lni-map-marker"></i> Drive Street, Los Angeles, US</div>
                    <div class="pricin-list">
                      <div class="property-price">
                        <span>$1,500</span>
                      </div>
                     <p><span>4 bds</span> . <span>4 ba</span> . <span>2500 Sqft</span></p>
                    </div>
                  </div>               
                </div>              
              </div>
            </div>
          </div>
          <div class="col-lg-4 col-md-6 col-xs-12">
            <div class="property-main">
              <div class="property-wrap">
                <div class="property-item">
                  <div class="item-thumb">
                    <a class="hover-effect" href="property.html">
                      <img class="img-fluid" src="/resources/assets/img/property/house-2.jpg" alt="">
                    </a>
                    <div class="label-inner">
                      <span class="label-status label">For Rent</span>
                    </div>
                  </div>
                  <div class="item-body">
                    <h3 class="property-title"><a href="property.html">Family Condo</a></h3>
                    <div class="adderess"><i class="lni-map-marker"></i> Louis, Missouri, US</div>
                    <div class="pricin-list">
                      <div class="property-price">
                        <span>$27,00</span>
                      </div>
                     <p><span>6 bds</span> . <span>8 ba</span> . <span>2600 Sqft</span></p>
                    </div>
                  </div>               
                </div>              
              </div>
            </div>
          </div>
          <div class="col-lg-4 col-md-6 col-xs-12">
            <div class="property-main">
              <div class="property-wrap">
                <div class="property-item">
                  <div class="item-thumb">
                    <a class="hover-effect" href="property.html">
                      <img class="img-fluid" src="/resources/assets/img/property/house-3.jpg" alt="">
                    </a>
                    <div class="label-inner">
                      <span class="label-status label bg-yellow">New</span>
                    </div>
                  </div>
                  <div class="item-body">
                    <h3 class="property-title"><a href="property.html">Guaranteed modern home</a></h3>
                    <div class="adderess"><i class="lni-map-marker"></i> Avenue C, New York, US</div>
                    <div class="pricin-list">
                      <div class="property-price">
                        <span>$1,750</span>
                      </div>
                     <p><span>8 bds</span> . <span>8 ba</span> . <span>3000 Sqft</span></p>
                    </div>
                  </div>               
                </div>              
              </div>
            </div>
          </div>
        </div>
      </div>
-->
    </div>
    <!-- End Content -->    






<jsp:include page="../footer.jsp"></jsp:include>
<jsp:include page="../js.jsp"></jsp:include>
  </body>
</html>
