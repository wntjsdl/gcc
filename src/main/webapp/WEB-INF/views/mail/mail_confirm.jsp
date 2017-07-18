<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>편지 읽기</title>
</head>
<body>

<div class="mailLeft">
	<div class="mailLeftTop">
		<ul>
			<li>
				<a href="openMailRead.do" class="mailLeftButton">편지읽기</a>
			</li>
			<li>
				<a href="openMailWrite.do" class="mailLeftButton">편지쓰기</a>
			</li>
			<li>
				<a href="openMailConfirm.do" class="mailLeftButton">수신확인</a>
			</li>
			<li>
				<a href="openSkinSetting.do" class="skinButton">스킨변경</a>
			</li>
		</ul>
	</div>
	<div class="mailLeftBottom">
		<ul>
			<li>
				<img src="${pageContext.request.contextPath}/resources/image/left_menu2_icon_01.gif">
				<a href="#">받은편지함</a>
			</li>
			<li>
				<img src="${pageContext.request.contextPath}/resources/image/left_menu2_icon_02.gif">
				<a href="#">보낸편지함</a>
			</li>
			<li>
				<img src="${pageContext.request.contextPath}/resources/image/left_menu2_icon_02.gif">
				<a href="#">임시편지함</a>
			</li>
			<li>
				<img src="${pageContext.request.contextPath}/resources/image/left_menu2_icon_02.gif">
				<a href="#">
				지운편지함&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<img src="${pageContext.request.contextPath}/resources/image/left_menu2_icon_09.gif">
				</a>
			</li>
			<li>
				<img src="${pageContext.request.contextPath}/resources/image/left_menu2_icon_02.gif">
				<a href="#">
				스팸편지함&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<img src="${pageContext.request.contextPath}/resources/image/left_menu2_icon_09.gif">
				</a>
			</li>
			<li>
				<img src="${pageContext.request.contextPath}/resources/image/left_menu2_icon_06.gif">
				<a href="#">개인편지함</a>
			</li>
		</ul>
		<br>
		<ul>
			<li>
				<a href="#">외부메일 가져오기</a>
			</li>
			<li>
				<a href="#">편지함 관리</a>
			</li>
			<li>
				<a href="#">메일 환경설정</a>
			</li>
		</ul>
	</div>
</div>
<div class="mailRight">
	<div class="mailRightTop">
		<h3>| 수신확인함 |</h3> 3개의메일이 보관되어 있습니다.(2.30 MB)
	</div>
	<div class="mailRightTop2">
		<select>
			<option>제목</option>
			<option>보낸사람</option>
			<option>첨부파일</option>
			<option>본문</option>
		</select>
		<input type="text" width="50px"/>
		<img src="${pageContext.request.contextPath}/resources/image/imgs/bt_find.gif">
	</div>
	<div class="mailRightMid">
		<div class="mailRightMid2">
			<div class="floatLeft">
				<img src="${pageContext.request.contextPath}/resources/image/select_all.gif"/>
				<img src="${pageContext.request.contextPath}/resources/image/del.gif"/>
			</div>
		</div>
		<table id="mail">
			<thead>
				<tr>
					<td width="3%"></td>
					<td width="15%">받는이</td>
					<td width="47%">제목</td>
					<td width="15%">받은 날짜</td>
					<td width="15%">수신확인</td>
					<td width="8%">전송취소</td>
				<tr>
			</thead>
			<tr>
				<td width="3%"><input type="checkbox"/></td>
				<td width="15%">wntjs0305@gtu-solution.co.kr</td>
				<td id="titleCss" width="47%">주간업무보고</td>
				<td width="15%">17-05-08 (월) 10:42</td>
				<td width="15%">17-05-08 [12:01]</td>
				<td width="8%">-</td>
			</tr>
			<tr>
				<td width="3%"><input type="checkbox"/></td>
				<td width="15%">wntjs0305@gtu-solution.co.kr</td>
				<td id="titleCss" width="47%">
					<img src="${pageContext.request.contextPath}/resources/image/mail_new.gif">test</td>
				<td width="15%">17-04-28 (금) 10:22</td>
				<td width="15%">.</td>
				<td width="8%">
				<img src="${pageContext.request.contextPath}/resources/image/send_cancel.gif">
				</td>
			</tr>
		</table>
		<div class="mailRightMid2">
			<div class="floatLeft">
				<img src="${pageContext.request.contextPath}/resources/image/select_all.gif"/>
				<img src="${pageContext.request.contextPath}/resources/image/del.gif"/>
			</div>
		</div>
	</div>
	<div class="mailRightBot">
	1 | (1/1 page)
	</div>
</div>

</body>

</html>