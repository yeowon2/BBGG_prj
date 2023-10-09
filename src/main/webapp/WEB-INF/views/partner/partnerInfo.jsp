<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" session="false" %>

<!DOCTYPE html>
<html lang="ko">
  <head>
  <style>
  	body, #content  {
  		background-color: #F5F5F5;
  	}
  	.property-details, .listing-content {
  	background-color:#FFFFFF;
  	}
  	.item img {
  	height:200px;
  	 display: block;
  	margin: 0 auto;
  	}
  	.dashborad-box h4 {
  	 float:right;
  	}
  	.item span {
		margin:20px;
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
          <h2>Grid Listing</h2>
          <a href="#"><i class="lni-home"></i> Home</a>
          <span class="crumbs-spacer"><i class="lni-chevron-right"></i></span>
          <span class="current">Grid Listing</span>
        </div>
      </div>
    </div>
    <!-- Page Banner End -->

    <!-- Main container Start -->
    <div class="main-container section-padding">
      <div class="container">
        <div class="row">
          <div class="col-lg-12 col-md-12 col-xs-12">
          	 <div class="dashborad-box">
              <div class="section-body">
                <div class="row">
 				  <div class="col-lg-12">		
 		         	 <h4>공인중개사명</h4>
                  </div>
                  <div class="col-lg-4">
                    <div class="item mt-20">
                      <img alt="소개이미지" src="/resources/assets/img/productinfo/default-profile.png">
                    </div>
                  </div>
                  <div class="col-lg-8">
                    <div class="item mt-20">
						<div class="row">
							<div class="col-lg-12">
								<div class="row">
									<div class="col-lg-6">
										<span>대표자명 | ${partnerVO.partnerName}</span>
									</div>
									<div class="col-lg-6">
										<span>대표번호 | ${partnerVO.phone}</span>
									</div>
								</div>
							</div>
							<div class="col-lg-12">
								<div class="row">
									<div class="col-lg-6">
										<span>사업자등록번호 | ${partnerVO.compNum}</span>
									</div>
									<div class="col-lg-6">
										<span>중개등록번호 | ${partnerVO.registNum}</span>
									</div>
								</div>
							</div>
							<div class="col-lg-12">
								<div class="row">
									<div class="col-lg-6">
										<span>거래완료된 방 | 개</span>
									</div>
									<div class="col-lg-6">
										<span>최초가입일 | 
											<fmt:formatDate value="${partnerVO.registDate}" pattern="yyyy-MM-dd"/>
										</span>
									</div>
								</div>							
							</div>
							<div class="col-lg-12">
								<span>주소 | ${partnerVO.compAddress}</span>
							</div>
						</div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-12 col-md-12 col-xs-12">
            <!-- Product Filter Start -->
            <div class="product-filter">
              <!-- Sort by -->
              <div class="sort-by">
                <span>Sort by:</span>
                <div class="sort-by-select">
                  <select class="classic">
                    <option>Default Order</option>  
                    <option>Price Low to High</option>
                    <option>Price High to Low</option>
                    <option>Newest Properties</option>
                    <option>Oldest Properties</option>
                  </select>
                </div>
              </div>
              <!-- Layout Switcher -->
              <p class="text-left">42 homes found</p>
            </div>
            <!-- Product Filter End -->

            <!-- Listings Star -->
            <div class="listing-container grid-layout">
				<c:forEach var="item" items="${itemList}">              
	              <div class="property-main">
	                <div class="property-wrap">
	                  <div class="property-item">
	                    <div class="item-thumb">
	                      <a class="hover-effect" href="property.html">
	                        <img class="img-fluid" src="/resources/assets/img/property/house-1.jpg" alt="">
	                      </a>
	                    </div>
	                    <div class="item-body">
	                      <h3 class="property-title"><a href="property.html">${item.address2}</a></h3>
	                      <div class="adderess"><i class="lni-map-marker"></i>${item.address}</div>
	                      <div class="pricin-list">
	                        <div class="property-price">
	                          	<c:choose>
	                          		<c:when test="${item.depositFee == null}">
		                     		   <span>전세 ${item.leasePrice}</span>
                        			</c:when>
                     				<c:otherwise>
		                     		   <span>월세 ${item.depositFee} / ${item.monthPrice}</span>
                        			</c:otherwise>
	                          	</c:choose>
	                          </div>
	                         <p><span>방 ${item.itemCount}</span> . <span>욕실 ${item.bathAt}</span> . <span>${itemVO.itemSize}㎡</span></p>
	                      </div>
	                    </div>               
	                  </div>              
	                </div>
	              </div>
				</c:forEach>
            </div>
            <!-- Listings End -->
            <div class="pagination-container">
              <nav>
                <ul class="pagination">
                  <li class="page-item"><a class="btn btn-common" href="#"><i class="lni-chevron-left"></i> Previous </a></li>
                  <li class="page-item"><a class="page-link" href="#">1</a></li>
                  <li class="page-item"><a class="page-link" href="#">2</a></li>
                  <li class="page-item"><a class="page-link" href="#">3</a></li>
                  <li class="page-item"><a class="btn btn-common" href="#">Next <i class="lni-chevron-right"></i></a></li>
                </ul>
              </nav>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- Main container End -->
<jsp:include page="../js.jsp"></jsp:include>
  </body>
</html>