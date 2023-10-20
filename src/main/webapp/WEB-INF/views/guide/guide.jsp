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
<title>BBGG GUIDE ONE</title>
</head>
<body>
	<!-- Main Content -->
	<div class="hk-pg-wrapper">
	
        <!-- Container -->
        <div class="container">

            <div class="row">
                <div class="col-xl-12">
                    <section class="hk-sec-wrapper">
                        <div style="display: flex; justify-content: space-between; align-items: center;">
	                        <div>
	                            <h5 class="hk-sec-title">허위 매물 신고 내역</h5>
	                            <p class="mb-40">이용자들의 편의를 위해 빠른 처리 부탁드립니다.</p>
	                        </div>
							<div>	                        
                            	<button type="button" class="btn btn-outline-dark" onclick="location.href='/admin/noticeEdit'">보류</button>                     
                            	<button type="button" class="btn btn-outline-dark" onclick="location.href='/admin/noticeDelete'">삭제</button>                     
							</div>          
						</div>   

                                <div class="table-wrap">
                                    <div class="table-responsive">
                                        <table id="edit_datable_1" class="table table-bordered table-striped mb-0">
	                                        <tr>
	                                        	<th>번호</th>
	                                        	<th>${noticeVO.noticeNo}</th>
	                                            <th>등록일</th>
	                                            <th><fmt:formatDate value="${noticeVO.registDate}" pattern="yyyy-MM-dd"/></th>
	                                        </tr>
	                                    	<tr>
	                                        	<th>신고회원</th>
	                                        	<th>${fakeVO.userNo}</th>
	                                            <th>부동산이름</th>
	                                            <th>${fakeVO.compName}</th>
	                                        </tr>
	                                        <tr>
	                                            <th>내용</th>
	                                            <th>${noticeVO.noticeContent}</th>
	                                        </tr>
                                        </table>
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
    <script src="/resources/vendors/jquery/dist/jquery.min.js"></script>
    
    <!-- Bootstrap Core JavaScript -->
    <script src="/resources/vendors/popper.js/dist/umd/popper.min.js"></script>
    <script src="/resources/vendors/bootstrap/dist/js/bootstrap.min.js"></script>

    <!-- Slimscroll JavaScript -->
    <script src="/resources/dist/js/jquery.slimscroll.js"></script>

    <!-- FeatherIcons JavaScript -->
    <script src="/resources/dist/js/feather.min.js"></script>

    <!-- Fancy Dropdown JS -->
    <script src="/resources/dist/js/dropdown-bootstrap-extended.js"></script>

    <!-- Editable Table JavaScript -->
    <script src="/resources/vendors/editable-table/mindmup-editabletable.js"></script>
    <script src="/resources/vendors/editable-table/numeric-input-example.js"></script>
    <script src="/resources/dist/js/editable-table-data.js"></script>

    <!-- Toggles JavaScript -->
    <script src="/resources/vendors/jquery-toggles/toggles.min.js"></script>
    <script src="/resources/dist/js/toggle-data.js"></script>

    <!-- Init JavaScript -->
    <script src="/resources/dist/js/init.js"></script>	


<jsp:include page="../js.jsp"></jsp:include>    	
</body>
</html>