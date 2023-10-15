<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <!-- Header Area wrapper Starts -->
        <script>
	$(document).ready(function() {
	    $('.nav-item').click(function() {
	        $('.nav-item').removeClass('active');
	        $(this).addClass('active');
	    });
	});
	</script>
	<style>
		.top-bar {
			background-color:#79543e;
		}
	</style>
    <header id="header-wrap">
      <!-- Start Top Bar -->
      <div class="top-bar" >
        <div class="container">
          <div class="row">
            <div class="col-lg-7 col-md-8 col-xs-12">
              <!-- Start Contact Info -->
              <ul class="links clearfix">
                <li><i class="lni-phone-handset"></i>000-111-222</li>
                <li><i class="lni-envelope"></i> bbgg@gmail.com</li>
                <!-- <li><a href="#"><i class="lni-map-marker"></i> York Blvd, Los Angeles, US</a></li> -->
              </ul>
              <!-- End Contact Info -->
            </div>
            <div class="col-lg-5 col-md-4 col-xs-12">
              <div class="roof-social float-right">
               	<div>
               		
               	</div>
              </div>
              <c:if test="${loginPartnerVO == null}">
	              <div class="header-top-right float-right">
	                <a href="/login" class="header-top-button"><i class="lni-lock"></i> 로그인</a> |
	                <a href="/user/add" class="header-top-button"><i class="lni-pencil"></i> 회원가입</a> |
	                <a href="/partner/add" class="header-top-button"><i class="lni-pencil"></i> 중개사 가입</a>
	              </div>
              </c:if>
              <c:if test="${loginPartnerVO != null}">
	              <div class="header-top-right float-right">
	                <a href="/actionLogout" class="header-top-button"><i class="lni-lock"></i> 로그아웃</a> |
	              </div>
              </c:if>
            </div>
          </div>
        </div>
      </div>
      <!-- End Top Bar -->

      <!-- Navbar Start -->
      <nav class="navbar navbar-expand-lg navbar-light bg-white"  data-toggle="sticky-onscroll">
        <div class="container">
          <!-- Brand and toggle get grouped for better mobile display -->
          <div class="navbar-header">
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#main-navbar" aria-controls="main-navbar" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
              <span class="lin-menu"></span>
            </button>
            <a class="navbar-brand" href="/"><img src="/resources/comm/logo(81401b)s.png" alt=""></a>
          </div>

          <div class="collapse navbar-collapse" id="main-navbar">
            <ul class="navbar-nav mr-auto w-100 justify-content-center">
              <li class="nav-item mx-3">
                <a class="nav-link" href="/partner/${loginPartnerVO.partnerNo}"  aria-haspopup="true" aria-expanded="false">
                  홈
                </a>
              </li>
              <li class="nav-item mx-3">
                <a class="nav-link" href="/partner/${loginPartnerVO.partnerNo}/itemList"  aria-haspopup="true" aria-expanded="false">
                  매물 목록 
                </a>
              </li>

              <li class="nav-item mx-3">
                <a class="nav-link" href="/partner/${loginPartnerVO.partnerNo}/itemAdd"  aria-haspopup="true" aria-expanded="false">
                  매물 등록
                </a>
              </li>
              
              <li class="nav-item mx-3">
                <a class="nav-link" href="#"  aria-haspopup="true" aria-expanded="false">
                  고객센터
                </a>
              </li>
              <c:if test="${loginPartnerVO != null}">
              <li class="nav-item dropdown mx-3">
                <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                  마이페이지 
                </a>
                <div class="dropdown-menu">
                  <a class="dropdown-item" href="/partner/myPage">내 정보 수정</a>
                  <a class="dropdown-item" href="/note/receiveList/${loginPartnerVO.partnerNo}">받은 쪽지함</a>
                </div>
              </li>
              </c:if>   
            </ul>
            <!-- <div class="search-add float-right">
              <form method="post">
                <div class="form-group">
                    <input type="search" name="field-name" value="" placeholder="검색어를 입력하세요" required="">
                    <button type="submit" class="search-btn"><span class="lni-search"></span></button>
                </div>
              </form>
            </div> -->
            <div>
              
            </div>
          </div>
        </div>

        <!-- Mobile Menu Start -->
        <ul class="mobile-menu">
          <li>
            <a class="active" href="index.html">
            Home
            </a>
            <ul class="dropdown">
              <li>
                <a href="index.html">
                  Home V1
                </a>
              </li>  
              <li>
                <a class="active" href="index-2.html">
                  Home V2
                </a>
              </li>   
              <li>
                <a href="index-3.html">
                  Home V3
                </a>
              </li> 
            </ul>
          </li>
          <li>
            <a href="#">
              Listing
            </a>
            <ul class="dropdown">
              <li><a href="listing.html">Simple Listing</a></li>
              <li><a href="grid-listing.html">Grid Listing</a></li>
              <li><a href="listing-map.html">List with Google Map</a></li>
            </ul>
          </li>
          <li>
            <a href="#">Property</a>
             <ul class="dropdown">
              <li><a href="property.html">Default- Variation</a></li>
              <li><a href="single-property.html">Single Property</a></li>
              <li><a href="full-gallery.html">Full Width Gallery</a></li>
            </ul>
          </li>
          <li>
            <a href="#">
              Gallery
            </a>
            <ul class="dropdown">
              <li><a href="portfolio-2.html">2 Columns Gallery</a></li>
              <li><a href="portfolio-3.html">3 Columns Gallery</a></li>
              <li><a href="portfolio-4.html">4 Columns Gallery</a></li>
            </ul>
          </li>
          <li>
            <a href="#">Pages</a>
            <ul class="dropdown">
              <li><a href="about.html">About Us</a></li>
              <li><a href="agents.html">Agents</a></li>
              <li><a href="rent.html">For Rent</a></li>
              <li><a href="sale.html">For Sale</a></li>
              <li><a href="pricing.html">Pricing Tables</a></li>
              <li><a href="dashboard.html">Dashboard</a></li>
              <li><a href="submit-property.html">Submission Form</a></li>
              <li><a href="faq.html">FAQ</a></li>
              <li><a href="testimonials.html">Testimonials</a></li>
              <li><a href="typography.html">Typography</a></li>
            </ul>
          </li>
          <li>
            <a href="#">Blog</a>
            <ul class="dropdown">
              <li><a href="blog.html">Blog Page</a></li>
              <li><a href="single-blog.html">Blog Single Page</a></li>
            </ul>
          </li>
          <li>
            <a href="contact.html">
            Contact Us
            </a>
          </li>
        </ul>
        <!-- Mobile Menu End -->
      </nav>
      <!-- Navbar End -->
    </header>
    <!-- Header Area wrapper End -->
