<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login</title>

<script type="text/javascript">
	$(document).ready(function(){
		$("#join").click(function(){
			location.href="join_form.do";
		});
	});
</script>
</head>
<body>
<div align="right">
	<input type="button" class="btn btn-default" value="회원가입" id="join" />
</div>
<br>
<form name="login" action="login.do" method="post">
  	<div class="container" align="center">
		아이디: <input type="text" id="id" name="id"/> <br>
		비밀번호: <input type="text" id="password" name="password"/> <br>
		<input type="button" class="btn btn-default" value="로그인"/>
	</div>
</form>
</body>
</html>