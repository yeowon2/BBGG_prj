<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<jsp:include page="../header.jsp"></jsp:include>
<title>Insert title here</title>
</head>
<body>
	<div>
		<div>
			<h3>회원정보 변경</h3>
		</div>
		<form method="post">
			<div>
				<div>
					<label>ID :</label> ${item.custid}
				</div>
				<div>
					<label>비밀번호 : </label> 
					<input type="password" name="passwd" value="${item.passwd}">
					<button type="button">확인</button>
				</div>
				<div>
					<label>이름 : </label> 
					<input type="text" name="name" value="${item.name}">
				</div>
				
				<div>
					<label>주소 : </label> 
					<input type="text" name="address" value="${item.address}">
				</div>
				<div>
					<label>폰번호 : </label> 
					<input type="text" name="phone" value="${item.phone}">
				</div>
				<div>
					<button>변경</button>
					<a href="../customer/list"><button type="button">목록</button></a>
				</div>
			</div>
		</form>
	</div>
</body>
</html>
