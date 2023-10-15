<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" session="false" %>

<!DOCTYPE html>
<html lang="ko">
  <head>
  	<link rel="stylesheet" href="/resources/assets/css/blog.css">
  	<style>
  		.team-img img {
  			height:225px;
  			border-radius:100%;
  		} 
  		.team-img {
  			background-color:transparent;
  			border-radius:100%;
  		}
  		.latest-property {
  			background-color:#FAFAFA;
  		}
  		.team-item .medal-icon {
  			height:40px;
  		}
  		.popular-item img {
  			height:230px;
  		}
  		.icons {
  			text-align:right;
  		}
  		
  		.icons i {
  			padding:0 10px;	
  		}
  		section#blog {
  			background-color:#FFFFFF
  		}
  		section#blog #content {
  			padding:40px;
  		}
  	</style>
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
                  	<div class="search-add col-lg-12 col-md-12 col-xs-12" style="align-items: center; justify-content: center;">
		              <form id="index-search" method="post" action="/itemList" style="align-items: center; justify-content: center;" >
		                <div class="form-group" style="margin-top: 2px; margin-bottom: 2px" >
		                	<!-- <div class="row"> -->
				                <img  src="../resources/comm/search.png" style="width: 20px; height: 20px;  margin-left: 12%; margin-bottom: -4px; ">
		                    	<input class="col-lg-10" type="text" name="search" id="search" value="" placeholder="도로명 또는 단지명을 입력하세요." required="" style="border: none; align-items: center; justify-content: center;">
		                	<!-- </div> -->
		                </div>
		              </form>
		              <script>
		           		// 검색 폼 엘리먼트 가져오기
					    var searchForm = document.getElementById('index-search');
			
					    // 검색 폼이 제출되면 세션 스토리지에 검색어 저장
					    searchForm.addEventListener('submit', function() {
					        var searchInput = document.getElementById('search');
					        var searchValue = searchInput.value;
					        sessionStorage.setItem('search', searchValue);
					    });
			
					    // 검색어가 세션 스토리지에 저장된 경우 자동으로 설정
					    var searchInput = document.getElementById('search');
					    var storedSearch = sessionStorage.getItem('search');
					    if (storedSearch) {
					        searchInput.value = storedSearch;
					    }
					 	// 6초(600 밀리초) 후에 세션 스토리지 초기화
					    setTimeout(function() {
					        sessionStorage.clear(); // 세션 스토리지 초기화
					    }, 600);
				    </script>
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
              <h2 class="section-title">인기 매물</h2>
              <p>사용자들이 가장 관심을 가지는 매물 순위</p>
            </div>
          </div>
        </div>
        <div class="row">
        	<c:forEach var="item" items="${popularItemList}">
        		<div class="col-lg-4 col-md-6 col-xs-12">
		            <div class="property-main popular-item">
		              <div class="property-wrap">
		                <div class="property-item">
		                  <div class="item-thumb">
		                    <a class="hover-effect" href="property.html">
		                      <img class="img-fluid" src="/upload/${item.fileVO.savedName}" alt="">
		                    </a>
		                  </div>
		                  <div class="item-body">
		                  	<div class="row">
		                  		<div class="col-lg-6">
				                    <h3 class="property-title"><a href="property.html">${item.address2}</a></h3>
		                  		</div>
		                  		<div class="col-lg-6 icons">
									<span class=""><i class="lni-eye"></i>${item.viewCount}</span>
		                			<span class=""><i class="lni-heart"></i>${item.wishCount}</span>	                  		
		                  		</div>
		                  	</div>
		                    <div class="adderess"><i class="lni-map-marker"></i>${item.address}</div>
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
	                         <p><span>방 ${item.itemCount}</span> . <span>욕실 ${item.bathAt}</span> . <span>${item.itemSize * 3.3}㎡</span></p>
		                    </div>
		                  </div>               
		                </div>              
		              </div>
		            </div>
		          </div>
        	</c:forEach>
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
          <c:forEach var="partnerVO" items="${respList}">
	          <div class="col-sm-6 col-md-6 col-lg-4">
	            <!-- Team Item Starts -->
	              	<div class="team-item text-center">
		              <img class="medal-icon" alt="" src="/resources/assets/img/property/gold.png">
		              <div class="team-img">
		              		<a href="/partner/info/${partnerVO.partnerNo}">
				              	<c:if test="${partnerVO.fileVO == null}">
		        	      			<img class="img-fluid" src="/resources/assets/img/productinfo/default-profile.png" alt="">
				              	</c:if>
			                	<img class="img-fluid" src="/upload/${partnerVO.fileVO.savedName}" alt="" >
	              			</a>
		              </div>
		              <div class="info-text">
		                <h3><a href="/partner/info/${partnerVO.partnerNo}">${partnerVO.compName}</a></h3>
		                <p><i class="lni-map-marker"></i>${partnerVO.compAddress}</p>
		              </div>
		            </div>
	            <!-- Team Item Ends -->
	          </div>
           </c:forEach>
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
	                         <p><span>방 ${item.itemCount}</span> . <span>욕실 ${item.bathAt}</span> . <span>${item.itemSize * 3.3}㎡</span></p>
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
              <h2 class="section-title">커뮤니티</h2>
              <p>방방곡곡 내의 모든 소식을 확인하세요</p>
            </div>
          </div>
          <div class="col-lg-8 col-md-6 col-xs-12">
        	 <div id="content">
	            <div class="list_post_article">
	                <div class="item multi_pic">
	                    <div class="info_post">
	                        <div class="partner_author">
	                            <div class="partner_pic">
	                                <img src="images/main_img1.jpg" alt="프로필 사진">
	                            </div>
	                            <div class="info_author">
	                                <em class="name_author">지원공인중개사무소</em>
	                                <span class="time">7시간전</span>
	                            </div>
	                            <div class="comments" style="display: inline-block; float: right; margin-right: 30px;">
	                                <span class="like">
	                                    <i class="lni-thumbs-up"></i>
	                                    <em>20</em>
	                                </span>
	                                <span class="bookmark">
	                                    <i class="lni-bookmark"></i>
	                                    <em>10</em>
	                                </span>
	                            </div>
	                        </div>
	                    </div>
	                    <div class="desc">
	                        <div class="desc_inner">
	                            <strong class="title_post">글 제목</strong>
	                        </div>
	                        <p class="text">글 내용 글 내용 글 내
	                    </div>
	                </div>
	                <div class="item multi_pic">
	                    <div class="info_post">
	                        <div class="partner_author">
	                            <div class="partner_pic">
	                                <img src="images/main_img1.jpg" alt="프로필 사진">
	                            </div>
	                            <div class="info_author">
	                                <em class="name_author">지원공인중개사무소</em>
	                                <span class="time">7시간전</span>
	                            </div>
	                            <div class="comments" style="display: inline-block; float: right; margin-right: 30px;">
	                                <span class="like">
	                                     <i class="lni-thumbs-up"></i>
	                                    <em>20</em>
	                                </span>
	                                <span class="bookmark">
	                                    <i class="lni-bookmark"></i>
	                                    <em>10</em>
	                                </span>
	                            </div>
	                        </div>
	                    </div>
	                    <div class="desc">
	                        <div class="desc_inner">
	                            <strong class="title_post">글 제목</strong>
	                        </div>
	                        <p class="text">글 내용 글 내용 글 내
	                    </div>
	                </div>
	                <div class="item multi_pic">
	                    <div class="info_post">
	                        <div class="partner_author">
	                            <div class="partner_pic">
	                                <img src="images/main_img1.jpg" alt="프로필 사진">
	                            </div>
	                            <div class="info_author">
	                                <em class="name_author">지원공인중개사무소</em>
	                                <span class="time">7시간전</span>
	                            </div>
	                            <div class="comments" style="display: inline-block; float: right; margin-right: 30px;">
	                                <span class="like">
	                                     <i class="lni-thumbs-up"></i>
	                                    <em>20</em>
	                                </span>
	                                <span class="bookmark">
	                                    <i class="lni-bookmark"></i>
	                                    <em>10</em>
	                                </span>
	                            </div>
	                        </div>
	                    </div>
	                    <div class="desc">
	                        <div class="desc_inner">
	                            <strong class="title_post">글 제목</strong>
	                        </div>
	                        <p class="text">글 내용 글 내용 글 내
	                    </div>
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
<script>
	var teamItems = document.querySelectorAll('.team-item')
	for(i=0 ; i < teamItems.length ; i++) {
		teamItems[0].querySelector('.medal-icon').src = '/resources/assets/img/property/gold.png';
		teamItems[1].querySelector('.medal-icon').src = '/resources/assets/img/property/silver.png';
		teamItems[2].querySelector('.medal-icon').src = '/resources/assets/img/property/bronze.png';
	}
	</script>
<jsp:include page="js.jsp"></jsp:include>
  </body>
</html>

