<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
  <head>
<script src="/resources/js/password_check_jquery.js"></script>
	<jsp:include page="../head.jsp"></jsp:include>
  </head>
  <body>
	<jsp:include page="../nav.jsp"></jsp:include>
	<div>
		<div>
			<h3>Pro회원 정보변경</h3>
		</div>
		<form method="post">
			<div>
				<div>
					<label>이메일 :</label> ${proVO.proEmail}
				</div>
				<div>
					<label>비밀번호 : </label> 
					<input type="password" name="proPasswd" value="${proVO.proPasswd}">
					<button type="button">확인</button>
				</div>
				<div>
					<label>상호명(중개사명) : </label> 
					<input type="text" name="proM" value="${proVO.proM}">
				</div>
				<div>
					<label>대표자(성함) : </label> 
					<input type="text" name="proName" value="${proVO.proName}">
				</div>
				<div>
					<label>중개사 주소 : </label> 
					<input type="text" name="proAdres" value="${proVO.proAdres}">
				</div>
				<div>
					<label>전화번호 : </label> 
					<input type="text" name="proTell" value="${proVO.proTell}">
				</div>
				<div>
					<label>중개등록번호 : </label> 
					<input type="text" name="proBnumber" value="${proVO.proBnumber}">
				</div>
				<div>
					<label>중개등록증 : </label> 
					<input type="text" name="proB" value="${proVO.proB}">
				</div>
				<div>
					<label>사업자등록번호 : </label> 
					<input type="text" name="proAnumber" value="${proVO.proAnumber}">
				</div>
				<div>
					<label>사업자등록증 : </label> 
					<input type="text" name="proA" value="${proVO.proA}">
				</div>
				
				<div>
					<button>변경</button>
					<a href="../ProUsers/Prolist"><button type="button">목록</button></a>
				</div>
			</div>
		</form>
	</div>
</body>
</html>
