<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="../head.jsp"></jsp:include>
<title>BBGG 공지</title>
</head>
<body>

<c:choose>
	<c:when test="${not empty loginVO and fn:contains(loginVO.userId, 'admin')}">
		<jsp:include page="../navAdmin.jsp"></jsp:include>
	</c:when>
	<c:otherwise>
		<jsp:include page="../nav.jsp"></jsp:include>
	</c:otherwise>
</c:choose>

	<!-- Main Content -->
	<div class="hk-pg-wrapper">
	
        <!-- Container -->
        <div class="container">

            <!-- Title -->
            <div class="hk-pg-header">
                <h4 class="hk-pg-title"><span class="pg-title-icon"><span class="feather-icon"><i data-feather="edit"></i></span></span>커뮤니티</h4>
            </div>
            <!-- /Title -->

            <div class="row">
                <div class="col-xl-12">
                    <section class="hk-sec-wrapper">
                        <div style="display: flex; justify-content: space-between; align-items: center;">
	                        <div>
	                            <h5 class="hk-sec-title">공지사항</h5>
	                            <p class="mb-40">방방곡곡 내의 모든 소식을 확인하세요</p>
	                        </div>
	                        
	                        <c:choose>
								<c:when test="${not empty loginVO and fn:contains(loginVO.userId, 'admin')}">
									<div>	                        
		                            	<button type="button" class="btn btn-outline-dark" onclick="location.href='/admin/noticeEdit'">수정</button>                     
		                            	<button type="button" class="btn btn-outline-dark" onclick="location.href='/admin/noticeDelete'">삭제</button>                     
									</div>
								</c:when>
								<c:otherwise>
								</c:otherwise>
							</c:choose>	                        
	                        
						</div>   
                        <div class="row">
                            <div class="col-sm">
                                <div class="table-wrap">
                                    <div class="table-responsive">
                                        <table id="edit_datable_1" class="table table-bordered table-striped mb-0">
                                            <thead>
                                                <tr>
                                                	<th>번호</th>
                                                	<th>${noticeVO.noticeNo}</th>
                                                    <th>제목</th>
                                                    <th>${noticeVO.noticeTitle}</th>
                                                    <th>등록일</th>
                                                    <th><fmt:formatDate value="${noticeVO.registDate}" pattern="yyyy-MM-dd"/></th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td colspan="1">내용</td>
                                                    <td colspan="6">${noticeVO.noticeContent}</td>
                                                </tr>
                                            </tbody>                                                      
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                </div>
            </div>
        </div>
        <!-- /Container -->	
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


<jsp:include page="../footer.jsp"></jsp:include>
<jsp:include page="../js.jsp"></jsp:include>
</body>
</html>