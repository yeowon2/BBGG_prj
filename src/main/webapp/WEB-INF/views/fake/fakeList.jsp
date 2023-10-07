<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="../head.jsp"></jsp:include>
<title>허위 매물 신고 목록</title>

<!-- Favicon -->
<link rel="shortcut icon" href="favicon.ico">
<link rel="icon" href="favicon.ico" type="image/x-icon">
<!-- Bootstrap table CSS -->
<link href="vendors/bootstrap-table/dist/bootstrap-table.min.css" rel="stylesheet" type="text/css" />
<!-- Toggles CSS -->
<link href="vendors/jquery-toggles/css/toggles.css" rel="stylesheet" type="text/css">
<link href="vendors/jquery-toggles/css/themes/toggles-light.css" rel="stylesheet" type="text/css">
<!-- Custom CSS -->
<link href="/resources/dist/css/style.css" rel="stylesheet" type="text/css">
</head>
<body>
	<jsp:include page="../nav.jsp"></jsp:include>
	<!-- HK Wrapper -->
	<div class="hk-wrapper hk-alt-nav">
	
	
	
<!-- Main Content -->
    <div class="hk-pg-wrapper">
        <!-- Breadcrumb -->
        <nav class="hk-breadcrumb" aria-label="breadcrumb">
            <ol class="breadcrumb breadcrumb-light bg-transparent">
                <li class="breadcrumb-item"><a href="#">허위매물</a></li>
                <li class="breadcrumb-item active" aria-current="page">허위매물 목록</li>
            </ol>
        </nav>
        <!-- /Breadcrumb -->
	
	
		<!-- Container -->
	    <div class="container">
	        <!-- Title -->
	          <div class="hk-pg-header">
	              <h4 class="hk-pg-title"><span class="pg-title-icon"><span class="feather-icon"><i data-feather="archive"></i></span></span>최근 신고된 내역</h4>
	          </div>
	          <!-- /Title -->
		
			<!-- Row -->
            <div class="row">
                <div class="col-xl-12">
					<section class="hk-sec-wrapper">
                        <h5 class="hk-sec-title">허위 매물 신고 목록</h5>
                        <p class="mb-40">허위 매물 신고 목록은 <code>최신순</code> 으로 보여집니다.</p>
                        <div class="row">
                            <div class="col-sm">
                            
                            <div>
								<form>
									<div class="row mb-2">
										<div class="col-6"></div>
										<div class="col">
											<select name="search" class="form-select form-select-sm">
												<option value="0">검색 항목 선택</option>
												<option value="1" ${pager.search == 1 ? "selected" : ""}>매물번호</option>
												<option value="2" ${pager.search == 2 ? "selected" : ""}>부동산명</option>
												<option value="3" ${pager.search == 3 ? "selected" : ""}>회원명</option>
												<option value="3" ${pager.search == 4 ? "selected" : ""}>상태</option>
											</select>
										</div>
										<div class="col">
											<input type="text" name="keyword" class="form-control form-control-sm" value="${pager.keyword}">
										</div>
										<div class="col-1 d-grid">
											<button class="badge badge-soft-success">검색</button>
										</div>
									</div>
								</form>
							</div>
                            
                                <div class="table-wrap">
                                    <div class="table-responsive">
                                        <table class="table mb-0">
                                            <thead>
                                                <tr>
                                                    <th>부동산명</th>
                                                    <th>신고번호</th>
                                                    <th>매물번호</th>
                                                    <th>내용</th>
                                                    <th>신고날짜</th>
                                                    <th>상태</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                            	<c:forEach var="item" items="${fakeList}">
	                                                <tr>
	                                                    <th scope="row">${item.compName}</th>
	                                                    <td>${item.fakeNo}</td>
	                                                    <td>${item.itemNo}</td>
	                                                    <td>${item.fakeContent}</td>
	                                                    <td><fmt:formatDate value="${item.registDate}" pattern="yyyy-MM-dd"/></td>
	                                                    <td>
	                                                    	<!-- Button trigger modal -->
						        							<button type="button" class="btn btn-secondary" data-toggle="modal" data-target="#exampleModalCarousel">
	                                                    		<span class="badge badge-green">${item.useAt}</span>
	                                                    	</button>
	                                                    </td>
	                                                </tr>
	                                            </c:forEach>
	                                            <c:if test="${list.size() < 1}">
													<tr>
														<td colspan="5">검색 된 내역이 없습니다.</td>
													</tr>
												</c:if>
												
												<!-- Modal Carousel-->
			                                    <div class="modal fade" id="exampleModalCarousel" tabindex="-1" role="dialog" aria-labelledby="exampleModalCarousel" aria-hidden="true">
			                                        <div class="modal-dialog modal-lg" role="document">
			                                            <div class="modal-content">
			                                                <div class="modal-header">
			                                                    <h5 class="modal-title">첨부파일</h5>
			                                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
			                                                        <span aria-hidden="true">×</span>
			                                                    </button>
			                                                </div>
			                                                <div class="modal-body pa-0">
			                                                    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
			                                                        <ol class="carousel-indicators">
			                                                            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
			                                                            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
			                                                            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
			                                                        </ol>
			                                                        <div class="carousel-inner">
			                                                        	<c:forEach var="item" items="${fakeList}">
				                                                            <div class="carousel-item active">
				                                                                <img class="d-block w-100" src="dist/img/slide1.jpg" alt="첫번째 첨부파일">
				                                                            </div>
				                                                            <div class="carousel-item">
				                                                                <img class="d-block w-100" src="dist/img/slide1.jpg" alt="두번째 첨부파일">
				                                                            </div>
				                                                            <div class="carousel-item">
				                                                                <img class="d-block w-100" src="dist/img/slide1.jpg" alt="세번째 첨부파일">
				                                                            </div>
			                                                            </c:forEach>
			                                                        </div>
			                                                        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
			                                                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
			                                                            <span class="sr-only">Previous</span>
			                                                        </a>
			                                                        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
			                                                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
			                                                            <span class="sr-only">Next</span>
			                                                        </a>
			                                                    </div>
			                                                </div>
			                                            </div>
			                                        </div>
			                                    </div>
                                            </tbody>
                                            
                                            <tfoot>
												<tr>
													<td colspan="5">
														<ul class="pagination justify-content-center mt-3">
															<li class="page-item"><a class="page-link" href="?page=1&${pager.query}">처음</a></li>
															<li class="page-item"><a class="page-link" href="?page=${pager.prev}${pager.query}">이전</a></li>
															<c:forEach var="page" items="${pager.list}">
																<li class="page-item"><a class="page-link ${page == pager.page ? 'active' : ''}" href="?page=${page}${pager.query}">${page}</a></li>
															</c:forEach>
															<li class="page-item"><a class="page-link" href="?page=${pager.next}${pager.query}">다음</a></li>
															<li class="page-item"><a class="page-link" href="?page=${pager.last}${pager.query}">마지막</a></li>
														</ul>
													</td>
												</tr>
											</tfoot>
                                            
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                </div>
            </div>
            <!-- /Row -->
        </div>
        <!-- /Container -->
        
        <!-- Footer -->
        <div class="hk-footer-wrap container">
            <footer class="footer">
                <div class="row">
                    <div class="col-md-6 col-sm-12">
                        <p>Pampered by<a href="https://bangbanggoggog.com/" class="text-dark" target="_blank">BANGBANGGOGGOG</a> © 2023</p>
                    </div>
                    <div class="col-md-6 col-sm-12">
                        <p class="d-inline-block">Follow us</p>
                        <a href="#" class="d-inline-block btn btn-icon btn-icon-only btn-indigo btn-icon-style-4"><span class="btn-icon-wrap"><i class="fa fa-facebook"></i></span></a>
                        <a href="#" class="d-inline-block btn btn-icon btn-icon-only btn-indigo btn-icon-style-4"><span class="btn-icon-wrap"><i class="fa fa-twitter"></i></span></a>
                        <a href="#" class="d-inline-block btn btn-icon btn-icon-only btn-indigo btn-icon-style-4"><span class="btn-icon-wrap"><i class="fa fa-google-plus"></i></span></a>
                    </div>
                </div>
            </footer>
        </div>
        <!-- /Footer --> 
	</div>
	<!-- /Main Content -->
            
    <!-- jQuery -->
    <script src="vendors/jquery/dist/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="vendors/popper.js/dist/umd/popper.min.js"></script>
    <script src="vendors/bootstrap/dist/js/bootstrap.min.js"></script>

    <!-- Slimscroll JavaScript -->
    <script src="dist/js/jquery.slimscroll.js"></script>

    <!-- FeatherIcons JavaScript -->
    <script src="dist/js/feather.min.js"></script>

    <!-- Fancy Dropdown JS -->
    <script src="dist/js/dropdown-bootstrap-extended.js"></script>

    <!-- Bootstrap-table JavaScript -->
    <script src="vendors/bootstrap-table/dist/bootstrap-table.min.js"></script>
    <script src="dist/js/bootstrap-table-data.js"></script>

    <!-- Peity JavaScript -->
    <script src="vendors/peity/jquery.peity.min.js"></script>
    <script src="dist/js/peity-data.js"></script>

    <!-- Toggles JavaScript -->
    <script src="vendors/jquery-toggles/toggles.min.js"></script>
    <script src="dist/js/toggle-data.js"></script>

    <!-- Init JavaScript -->
    <script src="dist/js/init.js"></script>

</body>
</html>