<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="../header.jsp"></jsp:include>
</head>
<body>
	<div class="container">
		<div>
			<h3>회원 목록</h3>
		</div>
		<div >
			<table border="1" class="table table-scriped table-hover">
				<thead class="table-dark">
					<tr>
						<th>회원번호</th>
						<th>아이디</th>
						<th>이름</th>
						<th>폰번호</th>
						<th>관리</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="item" items="${list}">
					<tr>
						<td>${item.userNo}</td>
						<td>${item.userId}</td>
						<td>${item.userName}</td>
						<td>${item.phone}</td>
						<td><a href="delete/${item.userNo}" class="btn btn-danger btn-sm"><i class="bi bi-trash"></i></a> <a href="update/${item.userNo}" class="btn btn-warning btn-sm"><i class="bi bi-wrench"></i></a></td>
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
								<li class="page-item"><a class="page-link" href="?page=1${pager.query}">처음</a></li>
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
		<div class="mb-5">
			<a href="add" class="btn btn-primary btn-sm">등록</a>		
		</div>
	</div>
</body>
</html>
