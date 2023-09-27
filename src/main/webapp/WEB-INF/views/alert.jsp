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
	
	var msg = "재시도 부탁드립니다";
	var url = "/"

	if(loginMsg != null) {	
		alert(loginMsg);
		document.location.href = loginUrl;
	} else if(fakeFinishMsg != null) {
		alert(fakeFinishMsg);
		window.history.go(-1);
	} else {
		alert(msg);
		document.location.href = fakeFinishUrl;
	}
</script>

</body>
</html>