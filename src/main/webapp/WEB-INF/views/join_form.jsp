<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="testApp">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	var app = angular.module('testApp', []);
	app.controller('testController', function($scope){
		$scope.testMsg="hi";
	});
	$(document).ready(function(){
		$("#join").click(function(){
			alert($("#id").val() + "님 가입을 축하합니다!");
			$("#joinForm").submit();
		});
	});
</script>
</head>
<body>
<input type="text" ng-model="testMsg" />
<br>
메시지: <span>{{testMsg}}</span>
<br><br>
<form action="${pageContext.request.contextPath}/join.do" id="joinForm" method="post">
	아이디: <input type="text" id="id" name="id"/><br>
	비밀번호: <input type="text" id="password" name="password"/><br>
	<!-- 비밀번호확인: <input type="text" id="passConfirm"/> -->
	<input type="button" id="join" value="가입하기" />
</form>
</body>
</html>