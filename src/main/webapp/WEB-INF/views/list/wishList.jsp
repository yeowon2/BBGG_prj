<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
 <head>
<jsp:include page="../head.jsp"></jsp:include>
 </head>
 <body>
<jsp:include page="../nav.jsp"></jsp:include>
<section class="hk-sec-wrapper">
	<h1>관심목록</h1>
	<h5>나의 찜 목록</h5>
	
	<br>
	<form method="get">
		<input type="checkbox" name="item" value="신발">원룸
		<input type="checkbox" name="item" value="가방">투룸
		<input type="checkbox" name="item" value="벨트">오피스텔
		<input type="checkbox" name="item" value="모자">거래 가능 매물
		<input type="submit" class="btn btn-dark" value="검색">
	</form>
	<hr><br>
		                      <%-- <c:forEach var="item" items="${partItemList}">
	                  <div class="item">
	                    <div class="listing-item">
	                      <a href="/itemDetail/${item.itemNo}" class="listing-img-container">
	                      	<c:if test="${item.fileVO == null}">
		                      <img src="/resources/assets/img/property/house-6.jpg" alt="">
                    		</c:if>
	                      	<c:if test="${item.fileVO != null}">
		              	        <img src="/upload/${item.fileVO.savedName}" alt="">
                    		</c:if>
	                        <div class="listing-content">
	                          <span class="listing-title">${item.address2} 
	                          		<c:choose>
				                       	<c:when test="${item.depositFee == null}">
				                       		<c:if test="${item.leasePrice >= 10000 && LTM != 0 && LB != 0}">
				                       			<i>전세 ${LB}억 ${LTM}</i>
				                       		</c:if>
				                       		<c:if test="${item.leasePrice >= 10000 && LB != 0 && LTM == 0}">
				                       			<i>전세 ${LB}억</i>
				                       		</c:if>
				                       		<c:if test="${item.leasePrice < 10000 }">
				                       			<i>전세 ${item.leasePrice}</i>
				                       		</c:if>
				                       	</c:when>
				                       	<c:otherwise>
					                       <i>월세 ${item.depositFee} / ${item.monthPrice}</i>
				                       	</c:otherwise>
				                       </c:choose>
	                          </span>
	                          <ul class="listing-content row">
	                            <li class="col-lg-4">면적 <span>${item.itemSize}㎡</span></li>
	                            <li class="col-lg-4">방 수 <span>${item.itemCount}</span></li>
	                            <li class="col-lg-4">욕실 수 <span>${item.bathAt}</span></li>
	                          </ul>
	                        </div>
	                      </a>
	                    </div>
	                  </div>
                  </c:forEach>--%>
	<div>
        <div class="col-sm">
            <div class="row">
                <div class="col">
                    <div class="card mb-20">
                        <img class="card-img-top" src="dist/img/cropper.jpg" alt="Card image cap">
                        <div class="card-body">
                            <h5 class="card-title">${UserWishListVO.item_type}</h5>
                            <p class="card-text">${UserWishListVO.memo_short}</p>
                        	<a href="/delete/{wishNo}" class="btn btn-danger btn-xs"><i class="icon-trash"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card mb-20">
                        <img class="card-img-top" src="dist/img/cropper.jpg" alt="Card image cap">
                        <div class="card-body">
                            <h5 class="card-title">Image top</h5>
                            <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                        	<a href="delete" class="btn btn-danger btn-xs"><i class="icon-trash"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card mb-20">
                        <img class="card-img-top" src="dist/img/cropper.jpg" alt="Card image cap">
                        <div class="card-body">
                            <h5 class="card-title">Image top</h5>
                            <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                        	<a href="delete" class="btn btn-danger btn-xs"><i class="icon-trash"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card mb-20">
                        <img class="card-img-top" src="dist/img/cropper.jpg" alt="Card image cap">
                        <div class="card-body">
                            <h5 class="card-title">Image top</h5>
                            <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                        	<a href="delete" class="btn btn-danger btn-xs"><i class="icon-trash"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card mb-20">
                        <img class="card-img-top" src="dist/img/cropper.jpg" alt="Card image cap">
                        <div class="card-body">
                            <h5 class="card-title">Image top</h5>
                            <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                        	<a href="delete" class="btn btn-danger btn-xs"><i class="icon-trash"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
	<div>
        <div class="col-sm">
            <div class="row">
                <div class="col">
                    <div class="card mb-20">
                        <img class="card-img-top" src="dist/img/cropper.jpg" alt="Card image cap">
                        <div class="card-body">
                            <h5 class="card-title">Image top</h5>
                            <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                        	<a href="delete" class="btn btn-danger btn-xs"><i class="icon-trash"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card mb-20">
                        <img class="card-img-top" src="dist/img/cropper.jpg" alt="Card image cap">
                        <div class="card-body">
                            <h5 class="card-title">Image top</h5>
                            <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                        	<a href="delete" class="btn btn-danger btn-xs"><i class="icon-trash"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card mb-20">
                        <img class="card-img-top" src="dist/img/cropper.jpg" alt="Card image cap">
                        <div class="card-body">
                            <h5 class="card-title">Image top</h5>
                            <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                        	<a href="delete" class="btn btn-danger btn-xs"><i class="icon-trash"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card mb-20">
                        <img class="card-img-top" src="dist/img/cropper.jpg" alt="Card image cap">
                        <div class="card-body">
                            <h5 class="card-title">Image top</h5>
                            <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                        	<a href="delete" class="btn btn-danger btn-xs"><i class="icon-trash"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card mb-20">
                        <img class="card-img-top" src="dist/img/cropper.jpg" alt="Card image cap">
                        <div class="card-body">
                            <h5 class="card-title">Image top</h5>
                            <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                        	<a href="delete" class="btn btn-danger btn-xs"><i class="icon-trash"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div>
		<ul class="pagination justify-content-center mt-3">
			<li class="page-item"><a class="page-link" href="?page=1&${pager.query}">처음</a></li>
			<li class="page-item"><a class="page-link" href="?page=${pager.prev}&${pager.query}">이전</a></li>
			<c:forEach var="page" items="${pager.list}">
				<li class="page-item"><a class="page-link ${page == pager.page ? 'active' : ''}" href="?page=${page}&${pager.query}">${page}</a></li>
			</c:forEach>
			<li class="page-item"><a class="page-link" href="?page=${pager.next}&${pager.query}">다음</a></li>
			<li class="page-item"><a class="page-link" href="?page=${pager.last}&${pager.query}">마지막</a></li>
		</ul>
	</div>

</section>
</body>
</html>