<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
  <head>
<script src="/resources/js/password_check_jquery.js"></script>
	<jsp:include page="../head.jsp"></jsp:include>
  </head>
  <body>
	<jsp:include page="../nav.jsp"></jsp:include>
	<div class="container">
		<div>
			<h3>Pro회원 목록</h3>
		</div>
		<div >
			<table border="1" class="table table-scriped table-hover">
				<thead class="table-dark">
					<tr>
						<th>고유번호</th>
						<th>이메일</th>
						<th>비밀번호</th>
						<th>상호명(중개사명)</th>
						<th>대표자</th>
						<th>관리</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="item" items="${list}">
					<tr>
						<td>${item.proUnumber}</td>
						<td>${item.proEmail}</td>
						<td>${item.proPasswd}</td>
						<td>${item.proM}</td>
						<td>${item.proName}</td>
						<td><a href="prodelete/${item.proUnumber}" class="btn btn-danger btn-sm"><i class="bi bi-trash"></i></a> <a href="proupdate/${item.proUnumber}" class="btn btn-warning btn-sm"><i class="bi bi-wrench"></i></a></td>
					</tr>
					</c:forEach>
					
					<c:if test="${list.size() < 1 }">
					<tr>
						<td colspan="6">검색 된 회원이 없습니다</td>
					</tr>
					</c:if>
				</tbody>
				<tfoot>
				    <tr>
				        <td colspan="5">
				            <ul class="pagination justify-content-center mt-3">
				                <li class="page-item"><a href="?page=1" class="page-link">처음</a></li>
				                <li class="page-item"><a href="?page=${pager.last}" class="page-link">마지막</a></li>
				                <li class="page-item"><a href="?page=3" class="page-link">처음</a></li>
				                <li class="page-item"><a href="?page=4" class="page-link">처음</a></li>
				                <li class="page-item"><a href="?page=5" class="page-link">처음</a></li>
				                <li class="page-item"><a href="?page=${pager.prev}" class="page-link">이전</a></li>
				                <c:forEach var="page" items="${pager.list}">
				                	<li class="page-item"><a href="?page=${page}" class="page-link">${page}</a></li>
				                </c:forEach>
				                <li class="page-item"><a href="?page=${pager.next}" class="page-link">다음</a></li>
				                <li class="page-item"><a href="?page=${pager.last}" class="page-link">마지막</a></li> 
				            </ul>
				        </td>
				    </tr>
				</tfoot>
			</table>
		</div>
		<div class="mb-5">
			<a href="Proadd" class="btn btn-primary btn-sm">등록</a>		
		</div>
	</div>
</body>
</html>
