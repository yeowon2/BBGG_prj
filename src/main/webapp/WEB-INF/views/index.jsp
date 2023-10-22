<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8" session="false" %>

<!DOCTYPE html>
<html lang="ko">
  <head>
  	<link rel="stylesheet" href="/resources/assets/css/blog.css">
  	<link rel="stylesheet" href="/resources/assets/css/notice.css">
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
  			min-width:348px;
  		}
  		.icons {
  			text-align:right;
  		}
  		
  		.icons i {
  			padding:0 10px;	
  		}
  		section#blog {
  			background-color:#fcfcfc;
  		}
  		section#blog #content {
  			margin-top:30px;
  			padding:20px 40px 40px;
			background-color:#fff;
    		box-shadow: 0px 0px 7x 0px rgba(0, 0, 0, 0.1);
			transition: all 0.3s ease-out 0s;
			color:#333333;
  			
  			
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
            <div class="col-md-12" style="align-items: center; display: flex; flex-direction: column; text-align: center;" >
              <h4 class="intro-sub-heading">전국 방방곡곡 안전한 부동산 임대 파트너</h4>
              <!-- <h4 class="intro-sub-heading">전국 방방곡곡에서 찾아왔어요!</h4> -->
              <h2 class="intro-title">어떤 방을 찾고 있나요?</h2>
              <div style="align-items: center; justify-content: center; width: 80%; display: flex; text-align: center;">
	              <form id="index-search" method="get" action="/itemList" style="align-items: center; justify-content: center; vertical-align: ; width: 100%;" >
	                <div class="form-group" style="border: none; align-items: center; justify-content: center; display: flex;" >
		                <img src="../resources/comm/search2.png" style="width: 49px; height: 49px; border: none; align-items: center; justify-content: center;">
                    	<input class="col-lg-10" type="text" name="search" id="search" value="" placeholder="원하시는 지역명, 도로명 또는 단지명(아파트명)을 입력해주세요." required style="border: none; align-items: center; justify-content: center;">
	                </div>
	              </form>
         	  </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- Intro Section End -->
    
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
			                    <a class="hover-effect" href="/itemDetail/${item.itemNo}">
			                       <c:if test="${item.fileVO.savedName != null}">
				                       <img class="img-fluid" src="/upload/${item.fileVO.savedName}" alt="">
			                       </c:if>
			                       <c:if test="${item.fileVO.savedName == null}">
			                     	  <img class="img-fluid" src="/resources/comm/itemimg/nonimg2.png" alt="">
			                       </c:if>
			                    </a>
			                  </div>
			                  <div class="item-body">
		                  	<div class="row">
		                  		<div class="col-lg-6">
				                    <h5 class="property-title">${item.address2}</h5>
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
	                          		<c:when test="${item.leaseOrMonth == 'lease'}">
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
	                         <p><span>방 ${item.itemCount}</span> . <span>욕실 ${item.bathAt}</span> . <span><fmt:formatNumber value="${item.itemSize * 3.3}" pattern="#,##0" />㎡ / ${item.itemSize}평</span></p>
		                    </div>
		                  </div>                             
		                </div>    	
		              </div>
		            </div>
		          </div>
        	</c:forEach>
          <div class="col-12">
            <div class="text-center">
              <a href="/itemList" class="btn btn-common">모든 매물 보기</a>
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
				              	<c:if test="${partnerVO.fileVO.savedName == null}">
		        	      			<img class="img-fluid" src="/resources/assets/img/productinfo/default-profile.png" alt="">
				              	</c:if>
				              	<c:if test="${partnerVO.fileVO.savedName != null}">
				                	<img class="img-fluid" src="/upload/${partnerVO.fileVO.savedName}" alt="" >
				              	</c:if>
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
	                          		<c:when test="${item.leaseOrMonth == 'lease'}">
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
	                         <p><span>방 ${item.itemCount}</span> . <span>욕실 ${item.bathAt}</span> . <span><fmt:formatNumber value="${item.itemSize * 3.3}" pattern="#,##0" />㎡ / ${item.itemSize}평</span></p>
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
        	  <div class="blog-item" style="max-width:730px">
	        	 <div id="content">
		            <div class="list_post_article">
		                <div class="item multi_pic">
		                    <div class="info_post">
		                        <div class="partner_author">
		                            <div class="partner_pic">
		                                <img src="/resources/assets/img/property/g1-logos.jpeg" alt="프로필 사진">
		                            </div>
		                            <div class="info_author">
		                                <em class="name_author">지원공인중개사무소</em>
		                                <span class="time">1시간전</span>
		                            </div>
		                            <div class="comments" style="display: inline-block; float: right; margin-right: 30px;">
		                                <span class="like">
		                                    <i class="lni-thumbs-up"></i>
		                                    <em>13</em>
		                                </span>
		                                <span class="bookmark">
		                                    <i class="lni-bookmark"></i>
		                                    <em>0</em>
		                                </span>
		                            </div>
		                        </div>
		                    </div>
		                    <div class="desc">
		                        <div class="desc_inner">
		                            <strong class="title_post">전세 사기 방지를 위한 10가지 유용한 팁</strong>
		                        </div>
		                        <p class="text">요즘 전세 사기가 늘고 있는 추세입니다. 이에 대비하여 전세 사기 방지를 위한 유용한 팁을 소개합니다</p>
		                    </div>
		                </div>
		                <div class="item multi_pic">
		                    <div class="info_post">
		                        <div class="partner_author">
		                            <div class="partner_pic">
		                                <img src="/resources/assets/img/property/han_logo.png" alt="프로필 사진">
		                            </div>
		                            <div class="info_author">
		                                <em class="name_author">한마음공인중개사무소</em>
		                                <span class="time">8시간전</span>
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
		                            <strong class="title_post">매물 검색의 달인이 되는 방법: 효과적인 검색 기술</strong>
		                        </div>
		                        <p class="text">부동산 매물 검색을 더 효과적으로 하려면 어떤 방법을 사용해야 할까요? </p>
		                    </div>
		                </div>
		                <div class="item multi_pic">
		                    <div class="info_post">
		                        <div class="partner_author">
		                            <div class="partner_pic">
		                                <img src="/resources/assets/img/productinfo/default-profile.png" alt="프로필 사진">
		                            </div>
		                            <div class="info_author">
		                                <em class="name_author">푸른공인중개사무소</em>
		                                <span class="time">23/10/15</span>
		                            </div>
		                            <div class="comments" style="display: inline-block; float: right; margin-right: 30px;">
		                                <span class="like">
		                                     <i class="lni-thumbs-up"></i>
		                                    <em>25</em>
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
		                            <strong class="title_post">계약서 작성 시 알아두어야 할 사항</strong>
		                        </div>
		                        <p class="text">계약서 작성 시 놓치기 쉬운 중요한 사항들을 알려드립니다. </p>
		                    </div>
		                </div>
		            </div>
		        </div>
        	</div>
          </div>
          
          <div class="col-lg-4 col-md-6 col-xs-12">
            <div class="blog-item">
     			<div class="area_notice">
			        <div class="notice_heading">
			            <a href="#" class="notice_title">
			                공지사항
			                <i class="lni-arrow"></i>
			            </a>
			        </div>
			        <div class="notice_list">
			            <div class="notice_item">
			                <a href="#" class="notice_link">
			                    [안내] 매물 사진 일부 미노출 현상 오류 해결
			                </a>
			            </div>
			            <div class="notice_item">
			                <a href="#" class="notice_link">
			                    [안내] 단기 임대 메뉴 확대
			                </a>
			            </div>
			            <div class="notice_item">
			                <a href="#" class="notice_link">
			                    [고객 지원] 고객 문의 관리 페이지 기능 변경 안내 
			                </a>
			            </div>
			            <div class="notice_item">
			                <a href="#" class="notice_link">
			                    [안내] 허위매물 검증 관련 안내
			                </a>
			            </div>
			            <div class="notice_item">
			                <a href="#" class="notice_link">
			                    [안내] 찜 목록 오류 수정
			                </a>
			            </div>
			            <div class="notice_item">
			                <a href="#" class="notice_link">
			                    [가이드] 매물 업로드 가이드
			                </a>
			            </div>
			            <div class="notice_item">
			                <a href="#" class="notice_link">
			                    [안내] 개인정보 처리 방침 개정 안내
			                </a>
			            </div>
			            <div class="notice_item">
			                <a href="#" class="notice_link">
			                    [안내] 위치기반서비스 이용약관 개정 안내

			                </a>
			            </div>
			        </div>
		        	<div class="partner_button">
				        <div class="button_guide" id="notice_button">
				            <a href="" class="button_title">
				                <span class="button_point">공지사항 바로가기</span>
				                <i class="lni-market"></i>
				            </a>
				        </div>
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

