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
        <!-- 이미지 파일 선택 input (multiple 속성 사용) -->
        <div>
            <input type="file" name="imageFiles" multiple>
        </div>
        <!-- 제출 버튼 -->
        <div>
            <input type="submit" value="업로드">
        </div>
    </form>
</body>
</html>
