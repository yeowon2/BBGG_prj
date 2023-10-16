<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="../head.jsp"></jsp:include>
<title>공지사항</title>
</head>
<body>
	<jsp:include page="../navAdmin.jsp"></jsp:include>
	
        <!-- Main Content -->
        <div class="hk-pg-wrapper">
	
            <!-- Container -->
            <div class="container">

                <!-- Title -->
                <div class="hk-pg-header">
                    <h4 class="hk-pg-title"><span class="pg-title-icon"><span class="feather-icon"><i data-feather="edit"></i></span></span>고객센터</h4>
                </div>
                <!-- /Title -->

                <div class="row">
                    <div class="col-xl-12">
                        <section class="hk-sec-wrapper">
                            <h5 class="hk-sec-title">공지사항</h5>
                            <p class="mb-40">방방곡곡 내의 모든 소식을 확인하세요</p>
                            <button type="button" class="btn btn-outline-dark" onclick="location.href='/admin/noticeAdd'">글쓰기</button>
                            <div class="row">
                                <div class="col-sm">
                                    <div class="table-wrap">
                                        <div class="table-responsive">
                                            <table id="edit_datable_1" class="table  table-bordered table-striped mb-0">
                                                <thead>
                                                    <tr>
                                                        <th>번호</th>
                                                        <th>제목</th>
                                                        <th>등록일</th>
                                                        <th>수정일</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                	<c:forEach var="item" items="${noticeList}">
                                                    <tr>
                                                        <td>${item.noticeNo}</td>
                                                        <td>${item.noticeTitle}</td>
                                                        <td>${item.registDate}</td>
                                                        <td>${item.updateDate}</td>
                                                    </tr>
                                                    </c:forEach>
                                                    <tr>
                                                        <th><strong>TOTAL</strong></th>
                                                        <th></th>
                                                        <th></th>
                                                        <th></th>
                                                    </tr>
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
                <!-- /Container -->	
	
			<jsp:include page="../footer.jsp"></jsp:include>
	
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

    <!-- Editable Table JavaScript -->
    <script src="vendors/editable-table/mindmup-editabletable.js"></script>
    <script src="vendors/editable-table/numeric-input-example.js"></script>
    <script src="dist/js/editable-table-data.js"></script>

    <!-- Toggles JavaScript -->
    <script src="vendors/jquery-toggles/toggles.min.js"></script>
    <script src="dist/js/toggle-data.js"></script>

    <!-- Init JavaScript -->
    <script src="dist/js/init.js"></script>	
	
	<jsp:include page="../js.jsp"></jsp:include>
</body>
</html>