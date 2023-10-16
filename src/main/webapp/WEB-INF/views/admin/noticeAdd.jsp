<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="../head.jsp"></jsp:include>
<title>공지사항 글 작성</title>
</head>
<body>
	<jsp:include page="../navAdmin.jsp"></jsp:include>
	
	    <!-- Container -->
	    <div class="container">
	        <!-- Title -->
	        <div class="hk-pg-header">
	            <h4 class="hk-pg-title"><span class="pg-title-icon"><span class="feather-icon"><i data-feather="edit-3"></i></span></span>커뮤니티</h4>
	        </div>
	        <!-- /Title -->
	
	        <!-- Row -->
	        <div class="row">
	            <div class="col-xl-12">
	                <section class="hk-sec-wrapper">
	                    <h5 class="hk-sec-title">공지사항</h5>
	                    <p class="mb-40">방방곡곡 내의 모든 소식을 확인하세요</p>
	                    <div class="row">
	                        <div class="col-sm">
	                            <div class="tinymce-wrap">
	                            	<form method="post" style="display: flex; flex-direction: column;">
	                            		<input type="hidden" name="adminId" <%=session.getAttribute("loginVO")%>">
	                            		<input type="text" name="noticeTitle" style="flex: 1; border-color: #F3F3F3;">
	                                	<textarea class="tinymce" name="noticeContent" style="width: 100%"></textarea>
	                                	<button type="submit" style="align-self: flex-end;">등록하기</button>
	                                </form>
	                            </div>
	                        </div>
	                    </div>
	                </section>
	            </div>
	        </div>
	        <!-- /Row -->
	    </div>
	    <!-- /Container -->		
	
	<jsp:include page="../footer.jsp"></jsp:include>
	<jsp:include page="../js.jsp"></jsp:include>
</body>
</html>