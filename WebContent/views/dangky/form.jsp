<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
<!-- CSS only -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor"
	crossorigin="anonymous">

</head>
<body>
	<form action="/pk02085_lab2_j4/dang-ky" method="post">
		<div class="form-group row">
			<label for="inputEmail3" class="col-sm-2 col-form-label">Tên
				đăng nhập: </label>
			<div class="col-sm-10">
				<input type="text" class="form-control" name="username"
					id="inputEmail3" placeholder="Tên đăng nhập">
			</div>
		</div>
		<div class="form-group row">
			<label for="inputPassword3" class="col-sm-2 col-form-label">Password</label>
			<div class="col-sm-10">
				<input type="password" name="password" class="form-control"
					id="inputPassword3" placeholder="Password">
			</div>
		</div>
		<fieldset class="form-group">
			<div class="row">
				<legend class="col-form-label col-sm-2 pt-0">Giới tính: </legend>
				<div class="col-sm-10">
					<div class="form-check">
						<input class="form-check-input" type="radio" name="gender"
							id="gridRadios1" value="Nam" checked> <label
							class="form-check-label" for="gridRadios1"> Nam </label>
					</div>
					<div class="form-check">
						<input class="form-check-input" type="radio" name="gender"
							id="gridRadios2" value="Nữ"> <label
							class="form-check-label" for="gridRadios2"> Nữ </label>
					</div>

				</div>
			</div>
		</fieldset>
		<div class="form-group row">
			<div class="col-sm-2">Tình trạng:</div>
			<div class="col-sm-10">
				<div class="form-check">
					<input class="form-check-input" name="married" type="checkbox"
						id="gridCheck1"> <label class="form-check-label"
						for="gridCheck1"> Đã có gia đình?</label>
				</div>
			</div>
		</div>
		<div class="form-group col-md-4">
			<label for="inputState">Quốc tịch: </label> <select id="inputState"
				class="form-control" name="country">
				<option selected value="VN">Việt Nam</option>
				<option value="US">United States</option>
			</select>
		</div>
		<div class="form-group row">
			<div class="form-group">
				<label for="exampleFormControlTextarea1">Ghi chú: </label>
				<textarea class="form-control" name="notes"
					id="exampleFormControlTextarea1" rows="3"></textarea>
			</div>
			
			<div class="form-group row">
			<div class="col-sm-2">Sở thích:</div>
			<div class="col-sm-10">
				<div class="form-check">
					<input class="form-check-input" name="hobbies" type="checkbox"
						id="gridCheck1" value="R"> <label class="form-check-label"
						for="gridCheck1"> Đọc sách</label>
				</div>
				<div class="form-check">
					<input class="form-check-input" name="hobbies" type="checkbox"
						 value="T"> <label class="form-check-label"
						> Du lịch</label>
				</div>
				<div class="form-cheSck">
					<input class="form-check-input" name="hobbies" type="checkbox"
						 value="M"> <label class="form-check-label"
						> Âm nhạc?</label>
				</div>
				<div class="form-check">
					<input class="form-check-input" name="hobbies" type="checkbox"
						 value="O"> <label class="form-check-label"
						> Khác</label>
				</div>
			</div>
		</div>
			
			<div class="col-sm-10">
				<button type="submit" class="btn btn-primary">Đăng kí</button>
			</div>
		</div>
	</form>



	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2"
		crossorigin="anonymous"></script>

</body>
</html>