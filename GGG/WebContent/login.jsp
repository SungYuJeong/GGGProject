<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"> -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>로그인 페이지</title>
<style>
	body{
	background-image:url('images/bg-top.jpg');
	
	
	}
	
	div{

	background:#ffffff; 
	background : rgba(255, 255, 255, 0.3);
	margin:auto;
	width:800px;
	height:700px;
	padding-top:100px;
	
	
	}
	

	table{
	text-align:center;	
	margin-top:500px;
	margin:auto;
	}
	
	button{
	background-color:black;
	color:white;
	border:0;
	
	}
	
	
</style>
<script type="text/javascript">
	function login(){
		document.form.submit();
	}
	
	function cancel(){
		document.form.reset();
	}	
</script>
</head>
<body>
	<div>


	
	<form action="login.do" method="post" name="form">
		<table class="table table-striped table-bordered table-hover">
			<caption style="text-align:center"><h1>Login</h1></caption>
			<tr>
				<td style="height:10px"></td>
			</tr>
			<tr>
				
				<td><input style="height:30px; width:300px" type="text" name="id" placeholder="아이디를 입력해주세요." /></td>
			</tr>
			
			<tr>
				<td style="height:5px"></td>
			</tr>
			<tr>
				
				<td><input style="height:30px; width:300px" type="password" name="password" placeholder="비밀번호를 입력해주세요." /></td>
			</tr>
			
			<tr>
				<td style="height:30px"></td>
			</tr>
			<tr>
				
				<th>
					<button style="height:37px; width:308px"  class="btn btn-primary"  onClick="login()" >로그인</button><br/>
				</th>
				
			</tr>
			<tr>
				<td style="height:5px"></td>
			</tr>
			<tr align=left>
				<th>
					<input type="button" class="btn btn-secondary" value="취소" onClick="cancel()" />
					<input type="button" class="btn btn-success" value="회원가입" onClick="window.location='loginform.jsp'" />
				</th>
			</tr>
		</table>
	</form>	
	
	</div>




	
</body>
</html>