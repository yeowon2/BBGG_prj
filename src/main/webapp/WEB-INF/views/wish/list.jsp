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
 	 text-align: center;
	}

  	.dashborad-box img {
  	 border-radius:100px;
  	 height:
  	}
  	.info-row {
  		margin:20px;
  	}
  	.info-row div {
  		padding:0px;
  	}
  	
  	.item span {
		margin:20px;
		font-size:16px;
		padding:0px;
  	}
  	.item-thumb img {
  		height:230px;
  	}
  	.bold {
  		font-weight:bold;
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
          <h2>내 관심 목록</h2>
          <a href="#"><i class="lni-home"></i> 마이페이지</a>
          <span class="crumbs-spacer"><i class="lni-chevron-right"></i></span>
          <span class="current">내 관심 목록</span>
        </div>
      </div>
    </div>
    <!-- Page Banner End -->

    <!-- Main container Start -->
    <div class="main-container section-padding">
      <div class="container">
            <!-- Listings Star -->
            <div class="listing-container grid-layout">
              <div class="property-main">
                <div class="property-wrap">
                  <div class="property-item">
                    <div class="item-thumb">
                      <a class="hover-effect" href="property.html">
                        <img class="img-fluid" src="/resources/assets/img/property/house-1.jpg" alt="">
                      </a>
                      <div class="label-inner">
                        <span class="label-status label">For Rent</span>
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

              <div class="property-main">
                <div class="property-wrap">
                  <div class="property-item">
                    <div class="item-thumb">
                      <a class="hover-effect" href="property.html">
                        <img class="img-fluid" src="/resources/assets/img/property/house-3.jpg" alt="">
                      </a>
                      <div class="label-inner">
                        <span class="label-status label">For Rent</span>
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

              <div class="property-main">
                <div class="property-wrap">
                  <div class="property-item">
                    <div class="item-thumb">
                      <a class="hover-effect" href="property.html">
                        <img class="img-fluid" src="/resources/assets/img/property/house-4.jpg" alt="">
                      </a>
                      <div class="label-inner">
                        <span class="label-status label">For Rent</span>
                      </div>
                    </div>
                    <div class="item-body">
                      <h3 class="property-title"><a href="property.html">Family home for sale</a></h3>
                      <div class="adderess"><i class="lni-map-marker"></i> Sacramento, Chicago, US</div>
                      <div class="pricin-list">
                        <div class="property-price">
                          <span>$1,400</span>
                        </div>
                       <p><span>2 bds</span> . <span>2 ba</span> . <span>2200 Sqft</span></p>
                      </div>
                    </div>               
                  </div>              
                </div>
              </div>
              <div class="property-main">
                <div class="property-wrap">
                  <div class="property-item">
                    <div class="item-thumb">
                      <a class="hover-effect" href="property.html">
                        <img class="img-fluid" src="/resources/assets/img/property/house-4.jpg" alt="">
                      </a>
                      <div class="label-inner">
                        <span class="label-status label">For Rent</span>
                      </div>
                    </div>
                    <div class="item-body">
                      <h3 class="property-title"><a href="property.html">Family home for sale</a></h3>
                      <div class="adderess"><i class="lni-map-marker"></i> Sacramento, Chicago, US</div>
                      <div class="pricin-list">
                        <div class="property-price">
                          <span>$1,400</span>
                        </div>
                       <p><span>2 bds</span> . <span>2 ba</span> . <span>2200 Sqft</span></p>
                      </div>
                    </div>               
                  </div>              
                </div>
              </div>
              <div class="property-main">
                <div class="property-wrap">
                  <div class="property-item">
                    <div class="item-thumb">
                      <a class="hover-effect" href="property.html">
                        <img class="img-fluid" src="/resources/assets/img/property/house-4.jpg" alt="">
                      </a>
                      <div class="label-inner">
                        <span class="label-status label">For Rent</span>
                      </div>
                    </div>
                    <div class="item-body">
                      <h3 class="property-title"><a href="property.html">Family home for sale</a></h3>
                      <div class="adderess"><i class="lni-map-marker"></i> Sacramento, Chicago, US</div>
                      <div class="pricin-list">
                        <div class="property-price">
                          <span>$1,400</span>
                        </div>
                       <p><span>2 bds</span> . <span>2 ba</span> . <span>2200 Sqft</span></p>
                      </div>
                    </div>               
                  </div>              
                </div>
              </div>
            </div>
            <!-- Listings End -->
          </div>
        </div>
    <!-- Main container End -->
<!-- 이전 코드 ... -->

<!-- Main container End -->
<script>

</script>
<jsp:include page="../js.jsp"></jsp:include>
 </body>
</html>