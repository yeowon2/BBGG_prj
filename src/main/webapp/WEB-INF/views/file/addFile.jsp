<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>파일 업로드</title>
</head>
<body>
    <h1>파일 업로드</h1>
    <form method="post" action="/file/add" enctype="multipart/form-data">
        <div>
           <input type="file" name="file_1"/><br/>
		   <input type="file" name="file_2"/><br/>
        </div>
        <!-- 제출 버튼 -->
        <div>
            <input type="submit" value="업로드">
        </div>
    </form>
</body>
</html>
