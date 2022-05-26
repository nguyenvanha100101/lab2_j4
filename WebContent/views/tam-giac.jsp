<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
<form action="/fpoly/tam-giac" method="post">
<input name="a" placeholder="Cạnh a?"><br>
<input name="b" placeholder="Cạnh b?"><br>
<input name="c" placeholder="Cạnh c?"><hr>
<button formaction="/pk02085_lab2_j4/dien-tich">Tính diện tích</button>
<button formaction="/pk02085_lab2_j4/chu-vi">Tính chu vi</button>
</form>
<h3>${message}</h3>
</body>
</html>