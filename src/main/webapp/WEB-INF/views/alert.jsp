<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script type="text/javascript">
	var loginMsg = "${loginMsg}";
	var loginUrl = "${loginUrl}";
	
	var fakeFinishMsg = "${fakeFinishMsg}";
	var fakeFinishUrl = "${fakeFinishUrl}";
	
	//var msg = "재시도 부탁드립니다";
	var url = "/"

	if(loginMsg != null && fakeFinishMsg == null) {	
		alert(loginMsg);
		document.location.href = loginUrl;
	} else if(fakeFinishMsg != null && loginMsg == null) {
		alert(fakeFinishMsg);
		window.history.go(-1);
	} else if(loginMsg == null && fakeFinishMsg == null) {
		alert("재시도 부탁드립니다.");
		window.history.go(-1);
	}
</script>

</body>
</html>