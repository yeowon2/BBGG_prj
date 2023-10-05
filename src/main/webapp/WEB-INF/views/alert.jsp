<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>BBGG msg</title>
</head>
<body>
<script type="text/javascript">
	var loginMsg = "${loginMsg}";
	var loginUrl = "${loginUrl}";
	
	var fakeFinishMsg = "${fakeFinishMsg}";
	var fakeFinishUrl = "${fakeFinishUrl}";
	
	var msg = "재시도 부탁드립니다";
	var url = "/"
	
	if(loginMsg !== null && !!fakeFinishMsg === false) { // 로그인 안 한 상태
		alert(loginMsg);
		document.location.href = loginUrl;
	} else if(fakeFinishMsg !== null && !!loginMsg === false) { // 허위 매물 신고 완성 상태
		alert(fakeFinishMsg);
		document.location.href = fakeFinishUrl;
	} else {
		alert(msg);
		window.history.go(-1);
	}
</script>

</body>
</html>