<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<title>신고내용</title>
<meta name="description" content="A responsive bootstrap 4 admin dashboard template by hencework" />

<!-- Toggles CSS -->
<link href="/resources/vendors/jquery-toggles/css/toggles.css" rel="stylesheet" type="text/css">
<link href="/resources/vendors/jquery-toggles/css/themes/toggles-light.css" rel="stylesheet" type="text/css">

<!-- Custom CSS -->
<link href="/resources/dist/css/style.css" rel="stylesheet" type="text/css">
</head>
<body>
<div class="hk-pg-wrapper">
	<div class="container">
		<div class="row">
            <div class="col-xl-12">
                <section class="hk-sec-wrapper">
                	<div style="display: inline-block;">
                    	<h5 class="hk-sec-title">허위 매물 신고 내역</h5>
                    	<p class="mb-40">이용자들의 편의를 위해 빠른 처리 부탁드립니다.</p>
                    </div>
                    <div style="display: inline-block; float: right; padding: 10px;">	                        
                        <button type="button" class="btn btn-outline-dark" onclick="location.href='/update{itemNo}'">보류</button>                     
                        <button type="button" class="btn btn-outline-dark" onclick="location.href='/delete{itemNo}'">삭제</button>                     
					</div>   
                    <div class="row">
                        <div class="col-sm">
                            <div class="table-wrap">
                                <div class="table-responsive">
                                    <table id="edit_datable_1" class="table  table-bordered table-striped mb-0">
                                        <thead>
                                            <tr>
                                                <th>번호</th>
                                                <th>${list.fakeNo}</th>
                                                <th>신고일</th>
                                                <th><fmt:formatDate value="${list.registDate}" pattern="yyyy-MM-dd"/></th>
                                            </tr>
                                            <tr>
	                                        	<th>신고회원</th>
	                                        	<th>${list.userNo}</th>
	                                            <th>부동산이름</th>
	                                            <th>${list.compName}</th>
	                                        </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <th colspan="1">내용</th>
	                                            <th colspan="3">${list.noticeContent}</th>
                                            </tr>
                                        </tbody>
                                        <tfoot>
                                            <tr>
                                                <th><strong>상태</strong></th>
                                                <th>${list.useAt}</th>
                                                <th></th>
                                                <th></th>
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
    </div>
</div>
    <!-- /HK Wrapper -->

    <!-- jQuery -->
    <script src="vendors/jquery/dist/jquery.min.js"></script>

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
</body>
</html>