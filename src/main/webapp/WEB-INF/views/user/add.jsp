<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="../header.jsp"></jsp:include>
<title>Insert title here</title>
<script src="/resources/js/password_check_jquery.js"></script>


</head>
<body>
	<div>
		<div>
			<h3>회원 등록</h3>
		</div>
		<form method="post">
			<div>
				<div>
					<label>ID : </label> <input type="text" name="custid">
				</div>
				<div>
					<label>비밀번호 : </label> 
					<input type="password" name="passwd">
					<button type="button" id="password_check">확인</button>
				</div>
				<div>
					<label>이름 : </label> <input type="text" name="name">
				</div>
				<div>
					<label>주소 : </label> <input type="text" name="address">
				</div>
				<div>
					<label>폰번호 : </label> <input type="text" name="phone">
				</div>
				<div>
					<button>등록</button>
					<a href="../customer/list"><button type="button">목록</button></a>
				</div>
			</div>
		</form>
	</div>
</body>
</html>