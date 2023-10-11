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
          <h2>중개사무소 소개</h2>
          <a href="#"><i class="lni-home"></i> 매물보기</a>
          <span class="crumbs-spacer"><i class="lni-chevron-right"></i></span>
          <span class="current">중개사무소 소개</span>
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
                  <div class="col-lg-4 mt-20">
                  	<h4>${partnerVO.compName}</h4>
                    <div class="item mt-20" id="partner-profile">
                     <c:if test="${partnerVO.fileVO == null}">
                       <img class="img-fluid" src="/resources/assets/img/productinfo/default-profile.png" alt="">
                   	</c:if>
                      <img class="img-fluid" src="/upload/${partnerVO.fileVO.savedName}" alt="">
                    </div>
                  </div>
                  <div class="col-lg-8">
                    <div class="item mt-20">
						<div class="row">
							<div class="col-lg-12 info-row">
								<div class="row">
									<div class="col-lg-6">
										<div class="row">
											<div class="col-lg-5">
												<span class="bold">대표자명</span>
											</div>
											<div class="col-lg-7">
												<span>| ${partnerVO.partnerName}</span>
											</div>
										</div>
									</div>
									<div class="col-lg-6">
										<div class="row">
											<div class="col-lg-5">
													<span class="bold">대표번호</span>
											</div>
											<div class="col-lg-7">
												<span> | ${partnerVO.phone}</span>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-lg-12 info-row">
								<div class="row">
									<div class="col-lg-6">
										<div class="row">
											<div class="col-lg-5">
												<span class="bold">사업자등록번호</span>
											</div>
											<div class="col-lg-7">
												<span> | ${partnerVO.compNum}</span>
											</div>
										</div>
									</div>
									<div class="col-lg-6">
										<div class="row">
											<div class="col-lg-5">
												<span class="bold">중개등록번호</span>
											</div>
											<div class="col-lg-7">
												<span> | ${partnerVO.registNum}</span>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-lg-12 info-row">
								<div class="row">
									<div class="col-lg-6 ">
										<div class="row">
											<div class="col-lg-5">
												<span class="bold">거래완료된 방</span>
											</div>
											<div class="col-lg-7">
												<span> | 개</span>
											</div>
										</div>
									</div>
									<div class="col-lg-6">
										<div class="row">
											<div class="col-lg-5">
												<span class="bold">최초가입일</span>
											</div>
											<div class="col-lg-7">
												<span> | 
													<fmt:formatDate value="${partnerVO.registDate}" pattern="yyyy-MM-dd"/>
												</span>
											</div>
										</div>
										
									</div>
								</div>							
							</div>
							<div class="col-lg-12 info-row">
								<div class="row">
									<div class="col-lg-2">
										<span class="bold" style="margin-right:10px;">주소</span>
									</div>
									<div class="col-lg-10">
										<span> | ${partnerVO.compAddress}</span>
										<span id="partner-no" style="display:none">${partnerVO.partnerNo}</span>
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
          <div class="col-lg-12 col-md-12 col-xs-12">
            <!-- Product Filter Start -->
            <div class="product-filter">
              <!-- Sort by -->
              <div class="sort-by">
                <span>정렬 방식:</span>
                <div class="sort-by-select">
                <c:set var="sortBy" value="${param.sortBy}" />
                  <select id="sort-options" class="classic" onchange="selectOption(this)">
                     <option value="default" <c:if test="${sortBy == null || sortBy != 'latest'}">selected</c:if>>정렬 방식</option>
			          <option value="latest" <c:if test="${sortBy == 'latest'}">selected</c:if>>최신 매물</option>  
			          <option value="popular" <c:if test="${sortBy == 'popular'}">selected</c:if>>인기 매물</option>
			          <option value="views" <c:if test="${sortBy == 'views'}">selected</c:if>>조회수</option>
                  </select>
                </div>
              </div>
              <!-- Layout Switcher -->
              <p class="text-left"><span id="item-count"><strong>10</strong></span>개의 방</p>
            </div>
            <!-- Product Filter End -->

            <!-- Listings Star -->
            <div class="listing-container grid-layout">
				<c:forEach var="item" items="${itemList}">              
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
	                    </div>
	                    <div class="item-body">
	                      <h3 class="property-title"><a href="property.html">${item.address2}</a></h3>
	                      <div class="adderess"><i class="lni-map-marker"></i>${item.address}</div>
	                      <div class="pricin-list">
	                        <div class="property-price">
	                          	<c:choose>
	                          		<c:when test="${item.depositFee == null && item.leaseOrMonth == 'lease'}">
	                          			<span>전세</span>
		                          			<c:if test="${item.price >= 10000}">
		                          				<fmt:formatNumber value="${item.price / 10000}" pattern="#,##0"/>억
		                          				<c:if test="${item.price % 10000 > 0}">
										          <fmt:formatNumber value="${item.price % 10000}" pattern="#,##0"/>
										        </c:if>
		                          			</c:if>
		                          			<c:if test="${item.price < 10000}">
		                          				<span>${item.price}</span>
		                          			</c:if>
                        			</c:when>
                     				<c:otherwise>
		                     		   <span>월세 ${item.depositFee} / ${item.price}</span>
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
				<div class="pagination-container col-lg-12">
	              <nav>
	                <ul class="pagination justify-content-center">
	                  <li class="page-item"><a class="btn btn-common" href="?page=1"><i class="lni-chevron-left"></i> Previous </a></li>
	               		<c:forEach var="page" items="${pager.list}">
							<li class="page-item"><a href="?page=${page}" class="page-link ${page == pager.page ? 'active' : ''}">${page}</a></li>
						</c:forEach>
	                  <li class="page-item"><a class="btn btn-common" href="page=${pager.next}">Next <i class="lni-chevron-right"></i></a></li>
	                </ul>
	              </nav>
	            </div>
            </div>
            <!-- Listings End -->
            
          </div>
        </div>
      </div>
    </div>
    <!-- Main container End -->
<!-- 이전 코드 ... -->

<!-- Main container End -->
<script>
// 페이지 로드 시 스크롤 위치 복원
document.addEventListener('DOMContentLoaded', function() {
  setTimeout(function() {
    const scrollPosition = localStorage.getItem('scrollPosition');
    if (scrollPosition !== null) {
      window.scrollTo(0, parseInt(scrollPosition));
    }
  }, 0);
  
  
  //매물 count AJAX
  const partnerNoElement = document.querySelector('#partner-no');
  const partnerNo = parseInt(partnerNoElement.textContent);
  const strong = document.querySelector('#item-count').querySelector('strong');

  // GET 요청 보내기
  fetch(`/partner/itemCount/${partnerNo}`, {
    method: 'GET'
  })
    .then(response => response.text()
    ).then(
    	result => {
    		console.log(result);	
    		strong.textContent = result;
    		
    	})
    .catch(function(error) {
      // 오류 처리
      console.error('오류 발생:', error);
    });
  
});

// 페이지 이동 시 스크롤 위치 저장
window.addEventListener('beforeunload', function() {
  const currentScrollPosition = window.scrollY;
  localStorage.setItem('scrollPosition', currentScrollPosition);
});

function selectOption(selectElement) {
  const selectedValue = selectElement.value;
    
  const partnerNoElement = document.querySelector('#partner-no').textContent;
  const partnerNo = parseInt(partnerNoElement);

  if (selectedValue === 'latest') {
    const newUrl = `/partner/info/${partnerNo}?sortBy=latest`;
    window.location.href = newUrl;
    
  } else if (selectedValue === 'popular') {
    // 인기 매물에 대한 처리
  } else if (selectedValue === 'views') {
	    const newUrl = `/partner/info/${partnerNo}?sortBy=views`;
	    window.location.href = newUrl;
  } else {
	  const newUrl = `/partner/info/${partnerNo}`;
	    window.location.href = newUrl;
  }
}
</script>
<jsp:include page="../js.jsp"></jsp:include>
</body>
</html>

<jsp:include page="../js.jsp"></jsp:include>
  </body>
</html>