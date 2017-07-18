<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>GTU솔루션 - 웹 인트라넷서비스</title>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr">
<style>
BODY, DIV, TD, LAYER {
	font-size: 9pt;
	font-family: 돋움;
}

A:link, A:visited {
	color: #000000;
	text-decoration: none;
}

A:hover, A:active {
	color: #0812EF;
	text-decoration: underline;
}

.body {
	margin: 300px auto;
}

.login {
	margin: 0,0,100px,0;
}
</style>
</head>

<body class="body" border="0">
	<!-- body  topmargin="170" leftmargin="0" marginwidth="0" marginheight="0" border="0" background="image/bg.gif" onLoad="initTip();MM_openBrWindow('./popup/system.htm','','width=595,height=489');" -->
	<script language="JavaScript" type="text/JavaScript">
	<!--
		window.onload = initTip;
		-->
	</script>
	<FORM METHOD="post" NAME="frmLogin"
		ACTION="http://hyperasp.net/login_ok.asp" TARGET="_top"
		OnSubmit="up();">
		<table width="592" height="350" border="0" cellpadding="0"
			cellspacing="0" align="center">
			<tr>
				<td height="272"
					background="${pageContext.request.contextPath}/resources/image/bg2.jpg"><br>
					<br> <br> <br> <br> <br> <br> <br>
					<br> <br>
					<table width="350" border="0" cellpadding="0" cellspacing="0"
						align="center">
					</table>
					<div class="login">
						<table>
							<tr>
								<td width="800">
									<div align="right">ID&nbsp</div> <input type=hidden name="CID"
									maxlength="8" value='dosang'>
								</td>
								<td width="130"><input type=text name="UID" maxlength="20"
									size="15"
									style="border: solid #C3CACD 1px; ime-mode: disabled;"
									onkeyDown="keyDown()"
									onmouseover="this.style.backgroundColor='F7F7F7'"
									onmouseout="this.style.backgroundColor=''" tabindex=1 value="">
								</td>
								<td width="150" rowspan="2">
									<div align="left">
										<a href="javascript:submit1()"> <img
											src="${pageContext.request.contextPath}/resources/image/imgs/img_index/info_btn.gif"
											BORDER="0">
										</a>
									</div>
								</td>
							</tr>
							<tr>
								<td>
									<div align="right">Password&nbsp</div>
								</td>
								<td><input type=password name="PASS" size="16"
									style="border: solid #C3CACD 1px;height=19px;"
									onkeyDown="keyDown()"
									onmouseover="this.style.backgroundColor='F7F7F7'"
									onmouseout="this.style.backgroundColor=''" TABINDEX="2">
								</td>
							</tr>
							<tr>
								<td align="right" style="padding: 0 67 0px; font-size: 11px; color: 666666">
									<input type="Checkbox" name="idcooki" onkeyDown="keyDown()"
									tabindex=3 id="sidObj" HEIGHT='20px;'> ID저장
								</td>
							</tr>
						</table></td>
				</div>
			</tr>
		</table>
	</form>
</body>
</html>
