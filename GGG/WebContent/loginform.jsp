<%@ page language="java" contentType="text/html; charset=euc-kr" pageEncoding="euc-kr"%>
    <script> 

function writeCheck()
  {
   var form = document.writeform;
 
  if( !form.id.value )
   {
    alert( "ID�� �����ּ���" );
    form.id.focus();
    return;
   }
  if( !form.password.value )
  {
   alert( "��й�ȣ�� �����ּ���" );
   form.password.focus();
   return;
  }
  if( !form.name.value )
  {
   alert( "�̸��� �����ּ���" );
   form.name.focus();
   return;
  }
  if( !form.email.value )
  {
   alert( "�̸����� �����ּ���" );
   form.email.focus();
   return;
  }
 
  form.submit();
  }
 </script>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
 <!--  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"> -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>ȸ������</title>

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


</head>
<body>

<div>
<form action ="/board/join.do" method="post">
	<table class="table table-striped table-bordered table-hover" width="400">
	<caption style="text-align:center"><h1>Join</h1></caption>
	<tr>
		<td height="10px"></td>
	</tr>
	<tr>
		<th width="100px">ID</th>
		<td><input style="height:35px; width:300px" type="text" name="id"></td>
	</tr>
	<tr>
		<td style="height:5px"></td>
	</tr>
	<tr>	
		<th>PASSWORD</th>
		<th><input style="height:35px; width:300px" type="text" name="password"></th>
	</tr>
	<tr>
		<td style="height:5px"></td>
	</tr>
	<tr>	
		<th>NAME</th>
		<th><input style="height:35px; width:300px" type="text" name="name"></th>
	</tr>
	<tr>
		<td style="height:5px"></td>
	</tr>
	<tr>	
		<th>EMAIL</th>
		<th><input style="height:35px; width:300px" type="text" name="email" placeholder="�̸��� ���·� �Է����ּ���."></th>
	</tr>
	<tr>
		<td style="height:40px"></td>
	</tr>	
	<tr >

		<th colspan="2">
			<button style="align:center; height:37px; width:404px" class="btn btn-success"  Onclick="javascript:writeCheck();">���</button><br/>
			
		</th>
	</tr>
	<tr>
			<td style="height:5px"></td>
	</tr>
	<tr align=left>
				<th>
					<input type=button class="btn btn-secondary" value="���" OnClick="window.location='login.jsp'">
					<input type="button" class="btn btn-secondary" value="Ȩ����" onClick="window.location='catalogue.jsp'" />
				</th>
			</tr>
	</table>

</form>
</div>
</body>
</html>