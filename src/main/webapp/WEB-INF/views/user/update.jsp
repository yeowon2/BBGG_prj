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
					<label>ID :</label> ${userVO.userId}
				</div>
				<div>
					<label>비밀번호 : </label> 
					<input type="password" name="password" value="${userVO.password}">
					<button type="button">확인</button>
				</div>
				<div>
					<label>이름 : </label> 
					<input type="text" name="userNm" value="${userVO.userNm}">
				</div>
				
				<div>
					<label>이메일 : </label> 
					<input type="text" name="emailAddress" value="${userVO.emailAddress}">
				</div>
				<div>
					<label>폰번호 : </label> 
					<input type="text" name="phone" value="${userVO.phone}">
				</div>
				<div>
					<button>변경</button>
					<a href="../user/list"><button type="button">목록</button></a>
				</div>
			</div>
		</form>
	</div>
</body>
</html>
