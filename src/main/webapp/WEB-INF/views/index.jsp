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
              <h4 class="intro-sub-heading">Find Your Dream Apartment!</h4>
              <h2 class="intro-title">Find Best Properties in One Place</h2>
              <div class="content">
                <div class="row justify-content-center align-items-center" style="height: 100%; width: 100%;">
                  	<div class="search-add col-lg-6 col-md-6 col-xs-12">
		              <form method="post" action="/itemList">
		                <div class="form-group">
		                	<div class="row">
		                		<!-- 방종류 -->
							    <select id="itemType" name="itemType">
									<option value="">원룸,투룸,쓰리룸,오피스텔</option>
									<option value="O" >원룸</option>
									<option value="T" >투룸</option>
									<option value="H" >쓰리룸</option>
									<option value="F" >오피스텔</option>
								</select>
						    	<!-- 월-전세 -->
							    <select id="leaseOrMonth" name="leaseOrMonth">
									<option value="">월세,전세</option>
									<option value="month" >월세</option>
									<option value="lease" >전세</option>
								</select>
		                    	<input class="col-lg-6" type="text" name="search" id="search" value="" placeholder="도로명 또는 건물명을 입력하세요." required="" >
		                    	<button type="submit" class="btn btn-common"><i class="lni-search"></i>검색</button>
		                	</div>
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
              <h2 class="section-title">Our Agents</h2>
              <p>Duis aute irure dolor in reprehed in volupted velit esse dolore</p>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-sm-6 col-md-6 col-lg-3">
            <!-- Team Item Starts -->
            <div class="team-item text-center">
              <div class="team-img">
                <img class="img-fluid" src="/resources/assets/img/team/team-01.jpg" alt="">
                <div class="team-overlay">
                  <div class="overlay-social-icon text-center">
                    <ul class="social-icon-team">
                      <li><a href="#"><i class="lni-facebook-filled" aria-hidden="true"></i></a></li>
                      <li><a href="#"><i class="lni-twitter-filled" aria-hidden="true"></i></a></li>
                      <li><a href="#"><i class="lni-instagram-filled" aria-hidden="true"></i></a></li>
                      <li><a href="#"><i class="lni-linkedin-filled" aria-hidden="true"></i></a></li>
                    </ul>
                  </div>
                </div>
              </div>
              <div class="info-text">
                <h3><a href="#">David Givens</a></h3>
                <p>Real Estate Agent</p>
              </div>
            </div>
            <!-- Team Item Ends -->
          </div>
          <div class="col-sm-6 col-md-6 col-lg-3">
            <!-- Team Item Starts -->
            <div class="team-item text-center">
              <div class="team-img">
                <img class="img-fluid" src="/resources/assets/img/team/team-02.jpg" alt="">
                <div class="team-overlay">
                  <div class="overlay-social-icon text-center">
                    <ul class="social-icon-team">
                      <li><a href="#"><i class="lni-facebook-filled" aria-hidden="true"></i></a></li>
                      <li><a href="#"><i class="lni-twitter-filled" aria-hidden="true"></i></a></li>
                      <li><a href="#"><i class="lni-instagram-filled" aria-hidden="true"></i></a></li>
                      <li><a href="#"><i class="lni-linkedin-filled" aria-hidden="true"></i></a></li>
                    </ul>
                  </div>
                </div>
              </div>
              <div class="info-text">
                <h3><a href="#">John Doe</a></h3>
                <p>Real Estate Agent</p>
              </div>
            </div>
            <!-- Team Item Ends -->
          </div>

          <div class="col-sm-6 col-md-6 col-lg-3">
            <!-- Team Item Starts -->
            <div class="team-item text-center">
              <div class="team-img">
                <img class="img-fluid" src="/resources/assets/img/team/team-03.jpg" alt="">
                <div class="team-overlay">
                  <div class="overlay-social-icon text-center">
                    <ul class="social-icon-team">
                      <li><a href="#"><i class="lni-facebook-filled" aria-hidden="true"></i></a></li>
                      <li><a href="#"><i class="lni-twitter-filled" aria-hidden="true"></i></a></li>
                      <li><a href="#"><i class="lni-instagram-filled" aria-hidden="true"></i></a></li>
                      <li><a href="#"><i class="lni-linkedin-filled" aria-hidden="true"></i></a></li>
                    </ul>
                  </div>
                </div>
              </div>
              <div class="info-text">
                <h3><a href="#">Darrell S.Allen</a></h3>
                <p>Real Estate Agent</p>
              </div>
            </div>
            <!-- Team Item Ends -->
          </div>

          <div class="col-sm-6 col-md-6 col-lg-3">
            <!-- Team Item Starts -->
            <div class="team-item text-center">
              <div class="team-img">
                <img class="img-fluid" src="/resources/assets/img/team/team-04.jpg" alt="">
                <div class="team-overlay">
                  <div class="overlay-social-icon text-center">
                    <ul class="social-icon-team">
                      <li><a href="#"><i class="lni-facebook-filled" aria-hidden="true"></i></a></li>
                      <li><a href="#"><i class="lni-twitter-filled" aria-hidden="true"></i></a></li>
                      <li><a href="#"><i class="lni-instagram-filled" aria-hidden="true"></i></a></li>
                      <li><a href="#"><i class="lni-linkedin-filled" aria-hidden="true"></i></a></li>
                    </ul>
                  </div>
                </div>
              </div>
              <div class="info-text">
                <h3><a href="#">Justyna Michallek</a></h3>
                <p>Real Estate Agent</p>
              </div>
            </div>
            <!-- Team Item Ends -->
          </div>
        </div>
      </div>
    </section>
    <!-- Team Section End -->

    <!-- Services Section Start -->
    <section class="services section-padding">
      <div class="container">
        <div class="row">
          <div class="col-12">
            <div class="section-title-header text-center">
              <h2 class="section-title">Common Features</h2>
              <p>Duis aute irure dolor in reprehed in volupted velit esse dolore</p>
            </div>
          </div>
        </div>
        <div class="row">
          <!-- Services item -->
          <div class="col-md-6 col-lg-4 col-xs-12">
            <div class="services-item wow fadeInRight" data-wow-delay="0.2s">
              <div class="icon">
                <i class="lni-apartment"></i>
              </div>
              <div class="services-content">
                <h3><a href="#">Full Furnished</a></h3>
                <p>Lorem must explain to you how all this mistaolt dete denouncing pleasure and pralsing plan wasnad</p>
              </div>
            </div>
          </div>
          <!-- Services item -->
          <div class="col-md-6 col-lg-4 col-xs-12">
            <div class="services-item wow fadeInRight" data-wow-delay="0.4s">
              <div class="icon">
                <i class="lni-crown"></i>
              </div>
              <div class="services-content">
                <h3><a href="#">Royal Touch Paint</a></h3>
                <p>Lorem must explain to you how all this mistaolt dete denouncing pleasure and pralsing plan wasnad</p>
              </div>
            </div>
          </div>
          <!-- Services item -->
          <div class="col-md-6 col-lg-4 col-xs-12">
            <div class="services-item wow fadeInRight" data-wow-delay="0.6s">
              <div class="icon">
                <i class="lni-layers"></i>
              </div>
              <div class="services-content">
                <h3><a href="#">Letest Interior Design</a></h3>
                <p>Lorem must explain to you how all this mistaolt dete denouncing pleasure and pralsing plan wasnad</p>
              </div>
            </div>
          </div>
          <!-- Services item -->
          <div class="col-md-6 col-lg-4 col-xs-12">
            <div class="services-item wow fadeInRight" data-wow-delay="0.8s">
              <div class="icon">
                <i class="lni-bolt-alt"></i>
              </div>
              <div class="services-content">
                <h3><a href="#">Non Stop Security</a></h3>
                <p>Lorem must explain to you how all this mistaolt dete denouncing pleasure and pralsing plan wasnad</p>
              </div>
            </div>
          </div>
           <!-- Services item -->
          <div class="col-md-6 col-lg-4 col-xs-12">
            <div class="services-item wow fadeInRight" data-wow-delay="1s">
              <div class="icon">
                <i class="lni-leaf"></i>
              </div>
              <div class="services-content">
                <h3><a href="#">Living Inside a Nature</a></h3>
                <p>Lorem must explain to you how all this mistaolt dete denouncing pleasure and pralsing plan wasnad</p>
              </div>
            </div>
          </div>
           <!-- Services item -->
          <div class="col-md-6 col-lg-4 col-xs-12">
            <div class="services-item wow fadeInRight" data-wow-delay="1.2s">
              <div class="icon">
                <i class="lni-medall"></i>
              </div>
              <div class="services-content">
                <h3><a href="#">Luxurious Fittings</a></h3>
                <p>Lorem must explain to you how all this mistaolt dete denouncing pleasure and pralsing plan wasnad</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- Services Section End -->

    <!-- Latest Property Start -->
    <section class="latest-property section-padding">
      <div class="container">
        <div class="row">
          <div class="col-12">
            <div class="section-title-header text-center">
              <h2 class="section-title">Latest Listings</h2>
              <p>Duis aute irure dolor in reprehed in volupted velit esse dolore</p>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-md-12 wow fadeIn" data-wow-delay="0.8s">
            <div id="latest-property" class="owl-carousel">
              <div class="item">
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
                        <div class="adderess"><i class="lni-map-marker"></i> 96 Bay 10th St, Brooklyn, NY 11228</div>
                        <div class="pricin-list">
                          <div class="property-price">
                            <span>$1,600</span>
                          </div>
                         <p><span>4 bds</span> . <span>4 ba</span> . <span>2500 Sqft</span></p>
                        </div>
                      </div>               
                    </div>              
                  </div>
                </div>
              </div>
              <div class="item">
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
                            <span>$1,700</span>
                          </div>
                          <p><span>8 bds</span> . <span>8 ba</span> . <span>2900 Sqft</span></p>
                        </div>
                      </div>               
                    </div>              
                  </div>
                </div>
              </div>
              <div class="item">
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
                          <p><span>5 bds</span> . <span>6 ba</span> . <span>2700 Sqft</span></p>
                        </div>
                      </div>               
                    </div>              
                  </div>
                </div>
              </div>
              <div class="item">
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
              <div class="item">
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
              <div class="item">
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
            </div>
          </div> 
        </div>
      </div>
    </section>
    <!-- Latest Property End -->  

    <!-- Counter Area Start-->
    <section class="counter-section section-padding" data-stellar-background-ratio="0.5">
      <div class="container">
        <div class="row">
          <!-- Counter Item -->
          <div class="col-lg-3 col-md-6 col-xs-12 work-counter-widget text-center">
            <div class="counter">
              <div class="icon"><i class="lni-users"></i></div>
              <div class="counterUp">6252</div>
              <p>Happy Customers</p>
            </div>
          </div>
          <!-- Counter Item -->
          <div class="col-lg-3 col-md-6 col-xs-12 work-counter-widget text-center">
            <div class="counter">
              <div class="icon"><i class="lni-apartment"></i></div>
              <div class="counterUp">3091</div>
              <p>Completed Projects</p>
            </div>
          </div>
          <!-- Counter Item -->
          <div class="col-lg-3 col-md-6 col-xs-12 work-counter-widget text-center">
            <div class="counter">
              <div class="icon"><i class="lni-key"></i></div>
               <div class="counterUp">1200</div>
              <p>Property Sold</p>
            </div>
          </div>
          <!-- Counter Item -->
          <div class="col-lg-3 col-md-6 col-xs-12 work-counter-widget text-center">
            <div class="counter">
              <div class="icon"><i class="lni-cup"></i></div>
              <div class="counterUp">79</div>
              <p>Awards Win</p>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- Counter Area End-->

    <!-- Portfolio Section Start -->
    <section id="portfolio-section" class="section-padding">
      <div class="container">
        <div class="row">
          <div class="col-12">
            <div class="section-title-header text-center">
              <h2 class="section-title">Our Gallery</h2>
              <p>Duis aute irure dolor in reprehed in volupted velit esse dolore</p>
            </div>
          </div>
          <div class="col-12">
            <!-- Portfolio Controller/Buttons -->
            <div class="controls text-center">
              <a class="filter active btn btn-common" data-filter="all">
                All 
              </a>
              <a class="filter btn btn-common" data-filter=".design">
                Living Room 
              </a>
              <a class="filter btn btn-common" data-filter=".development">
                Bedroom
              </a>
              <a class="filter btn btn-common" data-filter=".print">
                Kitchen 
              </a>
            </div>
            <!-- Portfolio Controller/Buttons Ends-->
          </div>
        </div>
        <div id="portfolio" class="row wow fadeInDown">
          <div class="col-md-6 col-sm-6 col-lg-4 mix development print">
            <div class="portfolio-box">
              <div class="img-thumb">
                <img class="img-fluid" src="/resources/assets/img/gallery/img-1.jpg" alt="">
              </div>
              <div class="overlay-box text-center">
                <a class="lightbox" href="/resources/assets/img/gallery/img-1.jpg">
                  <i class="lni-zoom-in"></i>
                </a>
                <h3>Project Title</h3>
              </div>
            </div>
          </div>
          <div class="ccol-md-6 col-sm-6 col-lg-4 mix design print">
            <div class="portfolio-box">
              <div class="img-thumb">
                <img class="img-fluid" src="/resources/assets/img/gallery/img-2.jpg" alt="">
              </div>
              <div class="overlay-box text-center">
                <a class="lightbox" href="/resources/assets/img/gallery/img-2.jpg">
                  <i class="lni-zoom-in"></i>
                </a>
                <h3>Project Title</h3>
              </div>
            </div>
          </div>
          <div class="ccol-md-6 col-sm-6 col-lg-4 mix development">
            <div class="portfolio-box">
              <div class="img-thumb">
                <img class="img-fluid" src="/resources/assets/img/gallery/img-3.jpg" alt="">
              </div>
              <div class="overlay-box text-center">
                <a class="lightbox" href="/resources/assets/img/gallery/img-3.jpg">
                  <i class="lni-zoom-in"></i>
                </a>
                <h3>Project Title</h3>
              </div>
            </div>
          </div>
          <div class="ccol-md-6 col-sm-6 col-lg-4 mix development design">
            <div class="portfolio-box">
              <div class="img-thumb">
                <img class="img-fluid" src="/resources/assets/img/gallery/img-4.jpg" alt="">
              </div>
              <div class="overlay-box text-center">
                <a class="lightbox" href="/resources/assets/img/gallery/img-4.jpg">
                  <i class="lni-zoom-in"></i>
                </a>
                <h3>Project Title</h3>
              </div>
            </div>
          </div>
          <div class="ccol-md-6 col-sm-6 col-lg-4 mix development">
            <div class="portfolio-box">
              <div class="img-thumb">
                <img class="img-fluid" src="/resources/assets/img/gallery/img-5.jpg" alt="">
              </div>
              <div class="overlay-box text-center">
                <a class="lightbox" href="/resources/assets/img/gallery/img-5.jpg">
                  <i class="lni-zoom-in"></i>
                </a>
                <h3>Project Title</h3>
              </div>
            </div>
          </div>
          <div class="ccol-md-6 col-sm-6 col-lg-4 mix print design">
            <div class="portfolio-box">
              <div class="img-thumb">
                <img class="img-fluid" src="/resources/assets/img/gallery/img-6.jpg" alt="">
              </div>
              <div class="overlay-box text-center">
                <a class="lightbox" href="/resources/assets/img/gallery/img-6.jpg">
                  <i class="lni-zoom-in"></i>
                </a>
                <h3>Project Title</h3>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- Portfolio Section End -->

    <!-- Client Logo Section Start -->
    <section id="clients-logo" class="section-padding">
      <div class="container">
        <div class="row">
          <div class="col-lg-2 col-md-4 col-xs-12">
            <div class="client-logo">
              <a href="#"><img class="img-fluid" src="/resources/assets/img/clients/img1.png" alt=""></a>
            </div>
          </div>
          <div class="col-lg-2 col-md-4 col-xs-12">
            <div class="client-logo">
              <a href="#"><img class="img-fluid" src="/resources/assets/img/clients/img2.png" alt=""></a>
            </div>
          </div>
          <div class="col-lg-2 col-md-4 col-xs-12">
            <div class="client-logo">
              <a href="#"><img class="img-fluid" src="/resources/assets/img/clients/img3.png" alt=""></a>
            </div>
          </div>
          <div class="col-lg-2 col-md-4 col-xs-12">
            <div class="client-logo">
              <a href="#"><img class="img-fluid" src="/resources/assets/img/clients/img4.png" alt=""></a>
            </div>
          </div>
          <div class="col-lg-2 col-md-4 col-xs-12">
            <div class="client-logo">
              <a href="#"><img class="img-fluid" src="/resources/assets/img/clients/img5.png" alt=""></a>
            </div>
          </div>
          <div class="col-lg-2 col-md-4 col-xs-12">
            <div class="client-logo">
              <a href="#"><img class="img-fluid" src="/resources/assets/img/clients/img6.png" alt=""></a>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- Cleint Logo Section End -->

    <!-- Place Section Start -->
    <section class="place section-padding">
      <div class="container">
        <div class="row">
          <div class="col-12">
            <div class="section-title-header text-center">
              <h2 class="section-title">A Perfect Place</h2>
              <p>Duis aute irure dolor in reprehed in volupted velit esse dolore</p>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-lg-4 col-md-4 col-xs-12">
            <a href="listing.html" class="img-box">
              <div class="img-box-content visible">
                <h4>New York</h4>
                <span>16 Properties</span>
              </div>
              <div class="img-box-background">
                <img class="img-fluid" src="/resources/assets/img/place/img1.jpg" alt="">
              </div>
            </a>
          </div>
          <div class="col-lg-8 col-md-8 col-xs-12">
            <a href="listing.html" class="img-box">
              <div class="img-box-content visible">
                <h4>Chicago</h4>
                <span>375 Properties</span>
              </div>
              <div class="img-box-background">
                <img class="img-fluid" src="/resources/assets/img/place/img2.jpg" alt="">
              </div>
            </a>
          </div>
        </div>
        <div class="row">
          <div class="col-lg-7 col-md-6 col-xs-12">
            <a href="listing.html" class="img-box">
              <div class="img-box-content visible">
                <h4>Washington</h4>
                <span>168 Properties</span>
              </div>
              <div class="img-box-background">
                <img class="img-fluid" src="/resources/assets/img/place/img3.jpg" alt="">
              </div>
            </a>
          </div>
          <div class="col-lg-5 col-md-6 col-xs-12">
            <div class="row">
              <div class="col-lg-12 col-md-12 col-xs-12">
                <a href="listing.html" class="img-box card-hight">
                  <div class="img-box-content visible">
                    <h4>California</h4>
                    <span>368 Properties</span>
                  </div>
                  <div class="img-box-background">
                    <img class="img-fluid" src="/resources/assets/img/place/img4.jpg" alt="">
                  </div>
                </a>
              </div>
              <div class="col-lg-12 col-md-12 col-xs-12">
                <a href="listing.html" class="img-box card-hight">
                  <div class="img-box-content visible">
                    <h4>Phoenix</h4>
                    <span>375 Properties</span>
                  </div>
                  <div class="img-box-background">
                    <img class="img-fluid" src="/resources/assets/img/place/img5.jpg" alt="">
                  </div>
                </a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- Place Section End -->

    <!-- Testimonial Section Start -->
    <section class="testimonial section-padding">
      <div class="container">
        <div class="row">
          <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
            <div id="testimonials" class="owl-carousel">
              <div class="item">
                <div class="testimonial-item">
                  <div class="content">
                    <p class="description">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo quidem, excepturi facere magnam illum, at accusantium doloremque odio.</p>
                  </div>
                </div>
                <div class="client-info">
                  <div class="img-thumb">
                    <img src="/resources/assets/img/testimonial/img1.png" alt="">
                  </div>
                  <div class="info-text">
                    <h2><a href="#">Michael Papirov</a></h2>
                    <h4><a href="#">Customer</a></h4>
                  </div>
                </div>
              </div>
             <div class="item">
                <div class="testimonial-item">
                  <div class="content">
                    <p class="description">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo quidem, excepturi facere magnam illum, at accusantium doloremque odio.</p>
                  </div>
                </div>
                <div class="client-info">
                  <div class="img-thumb">
                    <img src="/resources/assets/img/testimonial/img2.png" alt="">
                  </div>
                  <div class="info-text">
                    <h2><a href="#">Josh Rossi</a></h2>
                    <h4><a href="#">Manager</a></h4>
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="testimonial-item">
                  <div class="content">
                    <p class="description">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo quidem, excepturi facere magnam illum, at accusantium doloremque odio.</p>
                  </div>
                </div>
                <div class="client-info">
                  <div class="img-thumb">
                    <img src="/resources/assets/img/testimonial/img3.png" alt="">
                  </div>
                  <div class="info-text">
                    <h2><a href="#">Daniel Greem</a></h2>
                    <h4><a href="#">Customer</a></h4>
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="testimonial-item">
                  <div class="content">
                    <p class="description">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo quidem, excepturi facere magnam illum, at accusantium doloremque odio.</p>
                  </div>
                </div>
                <div class="client-info">
                  <div class="img-thumb">
                    <img src="/resources/assets/img/testimonial/img4.png" alt="">
                  </div>
                  <div class="info-text">
                    <h2><a href="#">John Doe</a></h2>
                    <h4><a href="#">Manager</a></h4>
                  </div>
                </div>
              </div>
              <div class="item">
                <div class="testimonial-item">
                  <div class="content">
                    <p class="description">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo quidem, excepturi facere magnam illum, at accusantium doloremque odio.</p>
                  </div>
                </div>
                <div class="client-info">
                  <div class="img-thumb">
                    <img src="/resources/assets/img/testimonial/img5.png" alt="">
                  </div>
                  <div class="info-text">
                    <h2><a href="#">Michael Papirov</a></h2>
                    <h4><a href="#">Customer</a></h4>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- Testimonial Section End -->

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

