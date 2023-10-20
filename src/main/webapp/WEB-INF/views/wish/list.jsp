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
      	<!-- Product Filter Start -->
            <div class="product-filter">
              <!-- Sort by -->
              <div class="sort-by">
                <div class="sort-by-select">
                  <select class="classic">
                    <option>거래종류</option>  
                    <option>월세</option>
                    <option>전세</option>
                  </select>
                </div>
                <div class="sort-by-select">
                  <select class="classic">
                    <option>매물종류</option>  
                    <option>원룸</option>
                    <option>투룸</option>
                    <option>쓰리룸</option>
                    <option>오피스텔</option>
                  </select>
                </div>
                <div class="sort-by-button">
                	<button class="all-btn btn">전체보기</button> | 
                	<button class="rent-btn btn">임대가능목록</button>  
                </div>
              </div>
            </div>
            <!-- Product Filter End -->	
      		
            <!-- Listings Star -->
            <div class="listing-container grid-layout">
             
              <c:forEach var="item" items="${wishList}">              
	              <div class="property-main">
	                <div class="property-wrap">
	                  <div class="property-item">
	                    <div class="item-thumb">
	                      <a class="hover-effect" href="/itemDetail/${item.itemNo}">
	                      	<c:if test="${item.fileVO == null}">
		                        <img class="img-fluid" src="/resources/assets/img/productinfo/default-profile.png" alt="">
	                      	</c:if>
	                        <img class="img-fluid" src="/upload/${item.fileVO.savedName}" alt="">
	                      </a>
	                      <c:if test="${item.useAt eq 'Y'}">
	                      	<div class="label-inner">
		                        <img class="heart_img" alt="" src="/resources/comm/wish/wishimgpull.png" style="width:40px;height:40px;">
		                      </div>
	                      </c:if>
	                      <c:if test="${item.useAt eq 'C'}">
		                      <div class="label-inner">
	                       		 <span class="label-status label" style="background-color:#6c757d;">거래완료</span>
	                		   </div>
	                      </c:if>
	                    </div>
	                    <div class="item-body">
	                      <h3 class="property-title"><a href="property.html">${item.address2}</a></h3>
	                      <div class="adderess"><i class="lni-map-marker"></i>${item.address}</div>
	                     	<div class="item-no" style="display:none;">${item.itemNo}</div>
	                     	<div class="use-at" style="display:none;">${item.useAt}</div>
	                      <div class="pricin-list">
	                        <div class="property-price">
	                          	<c:choose>
	                          		<c:when test="${item.depositFee == null && item.leaseOrMonth == 'lease'}">
	                          			<span>전세</span>
		                          			<c:if test="${item.leasePrice >= 10000}">
		                          				<fmt:formatNumber value="${item.leasePrice / 10000}" pattern="#,##0"/>억
		                          				<c:if test="${item.leasePrice % 10000 > 0}">
										          <fmt:formatNumber value="${item.leasePrice % 10000}" pattern="#,##0"/>
										        </c:if>
		                          			</c:if>
		                          			<c:if test="${item.leasePrice < 10000}">
		                          				<span>${item.leasePrice}</span>
		                          			</c:if>
                        			</c:when>
                     				<c:otherwise>
		                     		   <span>월세 ${item.depositFee} / ${item.monthPrice}</span>
                        			</c:otherwise>
	                          	</c:choose>
	                          </div>
	                         <p><span>방 ${item.itemCount}</span> . <span>욕실 ${item.bathAt}</span> . <span>${item.itemSize}㎡</span></p>
	                      </div>
	                    </div>               
	                  </div>              
	                </div>
	              </div>
				</c:forEach>
              
              
            </div>
            <!-- Listings End -->
          </div>
        </div>
    <!-- Main container End -->
<!-- 이전 코드 ... -->

<!-- Main container End -->
<script>
$('.label-inner').on('click', function() {
	  var itemNo = $(this).closest('.property-item').find('.item-no').text();
	  var currentLabelInner = $(this);

	  // AJAX 요청 보내기
	  $.ajax({
	    url: '/wish/delete/' + itemNo, // 서버 엔드포인트 URL을 여기에 입력하세요.
	    type: 'GET', // 또는 'GET', HTTP 요청 방식을 선택합니다.
	    success: function(response) {
    	 if (response === "ok") {
    		 currentLabelInner.closest('.property-main').hide();
    	      }
	    },
	    error: function(xhr, status, error) {
	      // AJAX 요청이 실패한 경우 처리하는 로직을 여기에 추가하세요.
	      console.error(error);
	    }
	  });
	});
//임대 완료 버튼 -> use_at이 'C'
$('.rent-btn').on('click', function() {
  // 모든 .use-at 요소에 대해 반복
  $('.use-at').each(function() {
    var $useAt = $(this).text();
    
    // useAt 값이 'C'인 경우 해당 아이템이 속한 .property-main을 숨깁니다.
    if ($useAt === 'C') {
      $(this).closest('.property-main').hide();
    }
  });
});

//전체보기 버튼 -> 
$('.all-btn').on('click', function() {
	location.reload(true);
});
</script>
<jsp:include page="../js.jsp"></jsp:include>
 </body>
</html>