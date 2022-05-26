<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
</head>
<body>
	<ul>
		<li>Tên đăng nhập: <b>${param.username}</b></li>
		<li>Mật khẩu: <b>${param.password}</b></li>
		<li>Giới tính: <b>${param.gender}</b></li>
		<li>Tình trạng hôn nhân: <b>${param.married}</b></li>
		<li>Quốc tịch: <b>${param.country}</b></li>
		<li>Ghi chú: <b>${param.notes}</b></li>
		<li>Sở thích: <b>${paramValues.hobbies}</b></li>
	</ul>
</body>
</html>