<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
                <h4>현대 아파트 </h4>
                <p class="room-type">매물 번호: 2</p>
                <p class="address"><i class="lni-map-marker"></i> 대전 대덕구 우암로 394, 101동</p>
              </div>
            </div>
            <div class="col-lg-4 col-md-12 col-xs-12">
              <div class="details">
                <div class="details-listing">
                  <p>방 수</p>
                  <h5>05</h5>
                </div>
                <div class="details-listing">
                  <p>욕실 수</p>
                  <h5>06</h5>
                </div>
                <div class="details-listing">
                  <p>면적</p>
                  <h5>82㎡(㎡)</h5>
                </div>
              </div>
            </div>
            <div class="col-lg-4 col-md-12 col-xs-12">
              <div class="others">
                <ul class="row">
				  <li class="col-lg-8"><h3>월세 500/50</h3></li>
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
                  	<div class="col-lg-2">
                    	<strong>AC:</strong>
                    </div>
                    <div class="col-lg-8">
                    	<span>Central</span>
                  	</div>
                  </li>
                  
                </ul>
              </div>

              <div class="inner-box featured">
                <h2 class="desc-title">Details</h2>
                <ul class="property-features">
                  <li>Building Age: <span>2 Years</span></li>
                  <li>Parking: <span>Attached Garage</span></li>
                  <li>Cooling: <span>Central Cooling</span></li>
                  <li>Heating: <span>Forced Air, Gas</span></li>
                  <li>Sewer: <span>Public/City</span></li>
                  <li>Water: <span>City</span></li>
                  <li>Exercise Room: <span>Yes</span></li>
                  <li>Storage Room: <span>Yes</span></li>
                </ul>
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
                <h2 class="desc-title">Location On Map</h2>
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
                      <h3><a href="#">공인중개사무소 1</a></h3>
                      <span><i class="lni-phone-handset"></i>(123) 123-456</span>
                    </div>
                  </div>
                    <div class="row">
					  <div class="col-lg-12">
					    <span>대표명: 김대표</span>
					  </div>
					</div>
					
					<div class="row">
					  <div class="col-lg-12">
					    <span><i class="lni-map-marker"></i>주소: 서울특별시 강남구 역삼동</span>
					  </div>
					</div>
					
					<div class="row">
					  <div class="col-lg-12">
					    <span>중개등록번호: REG1234567</span>
					  </div>
					</div>
                  <button class="btn btn-common fullwidth mt-4">쪽지 보내기</button>
                </div>
              </div>

              <!-- Property Featured Widget -->
              <div class="widget mt3">
                <h3 class="sidebar-title">이 중개사무소의 다른 방</h3>
                <div id="listing-carousel" class="owl-carousel">
                  <div class="item">
                    <div class="listing-item">
                      <a href="#" class="listing-img-container">
                        <img src="/resources/assets/img/productinfo/listing1.jpg" alt="">
                        <div class="listing-badges">
                          <span class="featured">Featured</span>
                          <span>For Sale</span>
                        </div>
                        <div class="listing-content">
                          <span class="listing-title">Eagle Apartments <i>$275,000</i></span>
                          <ul class="listing-content">
                            <li>Area <span>530 sq ft</span></li>
                            <li>Rooms <span>3</span></li>
                            <li>Beds <span>1</span></li>
                            <li>Baths <span>1</span></li>
                          </ul>
                        </div>
                      </a>
                    </div>
                  </div>
                  <div class="item">
                    <div class="listing-item">
                      <a href="#" class="listing-img-container">
                        <img src="/resources/assets/img/productinfo/listing2.jpg" alt="">
                        <div class="listing-badges">
                          <span class="featured">Featured</span>
                          <span>For Sale</span>
                        </div>
                        <div class="listing-content">
                          <span class="listing-title">Eagle Apartments <i>$275,000</i></span>
                          <ul class="listing-content">
                            <li>Area <span>530 sq ft</span></li>
                            <li>Rooms <span>3</span></li>
                            <li>Beds <span>1</span></li>
                            <li>Baths <span>1</span></li>
                          </ul>
                        </div>
                      </a>
                    </div>
                  </div>
                  <div class="item">
                    <div class="listing-item">
                      <a href="#" class="listing-img-container">
                        <img src="/resources/assets/img/productinfo/listing3.jpg" alt="">
                        <div class="listing-badges">
                          <span class="featured">Featured</span>
                          <span>For Sale</span>
                        </div>
                        <div class="listing-content">
                          <span class="listing-title">Eagle Apartments <i>$275,000</i></span>
                          <ul class="listing-content">
                            <li>Area <span>530 sq ft</span></li>
                            <li>Rooms <span>3</span></li>
                            <li>Beds <span>1</span></li>
                            <li>Baths <span>1</span></li>
                          </ul>
                        </div>
                      </a>
                    </div>
                  </div>
                </div>
              </div>
              
              <!-- Mortgage widget -->
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

              <!-- Social Media -->
              <div class="widget widget-social">
                <h3 class="sidebar-title">Social Media</h3>
                <ul class="social-icons">    
                  <li><a class="twitter" href="#"><i class="lni-twitter-filled"></i></a></li>
                  <li><a class="facebook" href="#"><i class="lni-facebook-filled"></i></a></li>
                  <li><a class="google" href="#"><i class="lni-google-plus"></i></a></li>
                  <li><a class="linkedin" href="#"><i class="lni-linkedin-filled"></i></a></li>
                </ul>
              </div>            

            </aside>
            <!--End sidebar-->       
        </div>
      </div>    

      <div class="container">
        <div class="row"> 
          <div class="col-12">
            <h2 class="desc-title">Similar Properties</h2>
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

    </div>
    <!-- End Content -->    






<jsp:include page="../footer.jsp"></jsp:include>
<jsp:include page="../js.jsp"></jsp:include>
  </body>
</html>
