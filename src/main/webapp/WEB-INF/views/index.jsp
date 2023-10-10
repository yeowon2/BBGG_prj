<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" session="false" %>

<!DOCTYPE html>
<html lang="ko">
  <head>
	<jsp:include page="head.jsp"></jsp:include>
  </head>
  <body>
	<jsp:include page="nav.jsp"></jsp:include>
    <!-- Intro Section Start -->
    <section id="intro" class="section-intro">
      <div class="search-container">
        <div class="container">
          <div class="row">
            <div class="col-md-12">
              <h4 class="intro-sub-heading">전국 방방곡곡에서 찾아왔어요!</h4>
              <h2 class="intro-title">어떤 방을 찾고 있나요?</h2>
              <div class="content">
                <div class="row justify-content-center align-items-center">
                  	<div class="search-add col-lg-12 col-md-12 col-xs-12">
		              <form method="post" action="/itemList" >
		                <div class="form-group">
		                	<!-- <div class="row"> -->
			                	<div class="input-group-prepend">
				                	<span class="feather-icon"><i class="lni-search"></i></span>
				                </div>
		                    	<input class="col-lg-10" type="text" name="search" id="search" value="" placeholder="도로명 또는 단지명을 입력하세요." required="" >
		                    	<button type="submit" class="btn btn-common"><i class="lni-search"></i></button>
		                	<!-- </div> -->
		                </div>
		              </form>
		         	</div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- Intro Section End -->

    <!-- Property Section Start -->
    <section class="property section-padding">
      <div class="container">
        <div class="row">
          <div class="col-12">
            <div class="section-title-header text-center">
              <h2 class="section-title">Popular Listings</h2>
              <p>Duis aute irure dolor in reprehed in volupted velit esse dolore</p>
            </div>
          </div>
        </div>
        <div class="row">
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
          <div class="col-lg-4 col-md-6 col-xs-12">
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
          <div class="col-lg-4 col-md-6 col-xs-12">
            <div class="property-main">
              <div class="property-wrap">
                <div class="property-item">
                  <div class="item-thumb">
                    <a class="hover-effect" href="property.html">
                      <img class="img-fluid" src="/resources/assets/img/property/house-5.jpg" alt="">
                    </a>
                    <div class="label-inner">
                      <span class="label-status label bg-yellow">New</span>
                    </div>
                  </div>
                  <div class="item-body">
                    <h3 class="property-title"><a href="property.html">Amazing oceanfront apartment</a></h3>
                    <div class="adderess"><i class="lni-map-marker"></i> 53 W 88th St, Dallas, US</div>
                    <div class="pricin-list">
                      <div class="property-price">
                        <span>$1,750</span>
                      </div>
                     <p><span>6 bds</span> . <span>6 ba</span> . <span>2700 Sqft</span></p>
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
                      <img class="img-fluid" src="/resources/assets/img/property/house-6.jpg" alt="">
                    </a>
                    <div class="label-inner">
                      <span class="label-status label bg-red">For Sale</span>
                    </div>
                  </div>
                  <div class="item-body">
                    <h3 class="property-title"><a href="property.html">Luxury home for sale</a></h3>
                    <div class="adderess"><i class="lni-map-marker"></i> 365 Webber Street, Washington</div>
                    <div class="pricin-list">
                      <div class="property-price">
                        <span>$1,800</span>
                      </div>
                     <p><span>5 bds</span> . <span>7 ba</span> . <span>2800 Sqft</span></p>
                    </div>
                  </div>               
                </div>              
              </div>
            </div>
          </div>
          <div class="col-12">
            <div class="text-center">
              <a href="listing.html" class="btn btn-common">Browse All</a>
            </div> 
          </div>  
        </div>
      </div>
    </section>
    <!-- Property Section End -->   

    <!-- Team Section Start -->
    <section id="team" class="section-padding text-center">
      <div class="container">
        <div class="row">
          <div class="col-12">
            <div class="section-title-header text-center">
              <h2 class="section-title">이 달의 파트너</h2>
              <p>파트너 중개사무소의 응답 서비스 부문</p>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-sm-6 col-md-6 col-lg-3">
            <!-- Team Item Starts -->
	            <div class="team-item text-center">
	              <div class="team-img">
	                <a><img class="img-fluid" src="/resources/assets/img/team/team-01.jpg" alt=""></a>	
	              </div>
	              <div class="info-text">
	                <h3><a href="#">David Givens</a></h3>
	                <p>Real Estate Agent</p>
	              </div>
	            </div>
            <!-- Team Item Ends -->
          </div>
        </div>
      </div>
    </section>
    <!-- Team Section End -->


    <!-- Latest Property Start -->
    <section class="latest-property section-padding">
      <div class="container">
        <div class="row">
          <div class="col-12">
            <div class="section-title-header text-center">
              <h2 class="section-title">최근에 업로드된 방</h2>
              <p></p>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-md-12 wow fadeIn" data-wow-delay="0.8s">
            <div id="latest-property" class="owl-carousel">
            	<c:forEach var="item" items="${recentItemList}">
	              <div class="item">
	                <div class="property-main">
	                  <div class="property-wrap">
	                    <div class="property-item">
	                      <div class="item-thumb">
	                        <a class="hover-effect" href="/itemDetail/${item.itemNo}">
	                          <img class="img-fluid" src="/upload/${item.fileVO.savedName}" alt=""  style="height:200px;">
	                        </a>
	                      </div>
	                      <div class="item-body">
	                        <h3 class="property-title"><a href="/itemDetail/${item.itemNo}">${item.address2}</a></h3>
	                        <div class="address"><i class="lni-map-marker"></i>${item.address}</div>
	                        <div class="pricin-list">
	                          <div class="property-price">
	                          	<c:choose>
	                          		<c:when test="${item.depositFee == null && item.leaseOrMonth == 'lease'}">
	                          			<c:if test="${item.leasePrice < 10000}">
		                     		   		<span>전세 ${item.leasePrice}</span>
	                          			</c:if>
	                          			<c:if test="${item.leasePrice >= 10000 && item.leasePrice % 10000 == 0}">
		                     		   		<span>전세 ${item.leaseBillion}억</span>
	                          			</c:if>
	                          			<c:if test="${item.leasePrice >= 10000 && item.leasePrice % 10000 != 0}">
		                     		   		<span>전세 ${item.leaseBillion}억 ${item.leaseTenMillion}</span>
	                          			</c:if>
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
	              </div>
              	</c:forEach>
            </div>
          </div> 
        </div>
      </div>
    </section>
    <!-- Latest Property End -->  

    <!-- Blog Section Start -->
    <section id="blog" class="section-padding">
      <div class="container">
        <div class="row">
          <div class="col-12">
            <div class="section-title-header text-center">
              <h2 class="section-title">The Blog</h2>
              <p>Duis aute irure dolor in reprehed in volupted velit esse dolore</p>
            </div>
          </div>
          <div class="col-lg-4 col-md-6 col-xs-12">
            <div class="blog-item text-center">
              <div class="blog-image">
                <a href="#">
                  <img class="img-fluid" src="/resources/assets/img/blog/img1.jpg" alt="">
                </a>
              </div>
              <div class="date">12 April, 2018</div>
              <div class="descr">
                <h3 class="title">
                  <a href="single-blog.html">
                    Visual Design Concept
                  </a>
                </h3>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias laudantium fugiat, eius sint.</p>
              </div>
              <div class="blog-footer hide-on-list">
                <div class="float-left">
                  <p class="prop-user"><a href="#"><i class="lni-user"></i> Admin</a></p>
                </div>
                <div class="float-right">
                  <span><i class="lni-heart"></i> 350</span>
                  <span><i class="lni-comments"></i> 30</span>
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-4 col-md-6 col-xs-12">
            <div class="blog-item text-center">
              <div class="blog-image">
                <a href="#">
                  <img class="img-fluid" src="/resources/assets/img/blog/img2.jpg" alt="">
                </a>
              </div>
              <div class="date">12 April, 2018</div>
              <div class="descr">
                <h3 class="title">
                  <a href="single-blog.html">
                    Real Estate Feswtival - 2018
                  </a>
                </h3>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias laudantium fugiat, eius sint.</p>
              </div>
              <div class="blog-footer hide-on-list">
                <div class="float-left">
                  <p class="prop-user"><a href="#"><i class="lni-user"></i> Admin</a></p>
                </div>
                <div class="float-right">
                  <span><i class="lni-heart"></i> 350</span>
                  <span><i class="lni-comments"></i> 30</span>
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-4 col-md-6 col-xs-12">
            <div class="blog-item text-center">
              <div class="blog-image">
                <a href="#">
                  <img class="img-fluid" src="/resources/assets/img/blog/img3.jpg" alt="">
                </a>
              </div>
              <div class="date">12 April, 2018</div>
              <div class="descr">
                <h3 class="title">
                  <a href="single-blog.html">
                    Latest Architectural Design
                  </a>
                </h3>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias laudantium fugiat, eius sint.</p>
              </div>
              <div class="blog-footer hide-on-list">
                <div class="float-left">
                  <p class="prop-user"><a href="#"><i class="lni-user"></i> Admin</a></p>
                </div>
                <div class="float-right">
                  <span><i class="lni-heart"></i> 350</span>
                  <span><i class="lni-comments"></i> 30</span>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- Blog Section End -->

<jsp:include page="footer.jsp"></jsp:include>
<jsp:include page="js.jsp"></jsp:include>
  </body>
</html>

