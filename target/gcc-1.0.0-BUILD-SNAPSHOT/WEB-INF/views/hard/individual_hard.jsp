<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>개인 웹하드</title>
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
		<div class="bgGray col-lg-12">
			<div class="boldText floatLeft col-lg-2">
				<img width="30px" src="${pageContext.request.contextPath}/resources/image/Folders-PNG-File.png">
				  웹폴더 
			</div>
			<div class="floatLeft col-lg-1"></div>
			<div class="floatLeft col-lg-2">
				<select name="" id="">
					<option>모든 폴더</option>
				</select>
				<input type="text" />
				<img src="${pageContext.request.contextPath}/resources/image/imgs/bt_sear.gif">
			</div>
			<div class="progress floatRight col-lg-7">
			  <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 10%;">
			    10%
			  </div>
			  2.48MB / 100MB
			</div>
				
		</div>
		<div class="floatRight col-lg-12">
			<table width="100%">
				<thead class="bgGreen">
					<tr>
						<td width="10%" class="bgWhite"><img src="${pageContext.request.contextPath}/resources/image/folderopen.gif"> 내문서</td>
						<td width="2%"></td>
						<td width="60%">이 름</td>
						<td width="8%">크 기</td>
						<td width="10%">종 류</td>
						<td width="10%">수정한 날짜</td>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>
							<img src="${pageContext.request.contextPath}/resources/image/pfnode.gif">
							<img src="${pageContext.request.contextPath}/resources/image/folderc2.gif">기술교류회자료
						</td>
						<td><input type="checkbox"></td>
						<td><img src="${pageContext.request.contextPath}/resources/image/folderc2.gif">기술교류회자료</td>
						<td></td>
						<td>파일 폴더</td>
						<td>2017-06-13 오후 16:42</td>
					</tr>
				</tbody>
				<tfoot>
					<tr>
						<td></td>
						<td colspan="2">
							<input type="button" class="webHardAllbutton" value="전체"/>
							<input type="button" class="webHardButton" value="올리기"/>
							<input type="button" class="webHardButton" value="내리기"/>
							<input type="button" class="webHardButton" value="새폴더"/>
							<input type="button" class="webHardButton" value="이름변경"/>
							<input type="button" class="webHardButton" value="삭제"/>
						</td>
						<td></td>
						<td></td>
						<td>
							<input type="button" class="webHardButton" value="일반첨부"/>
							<input type="button" class="webHardButton" value="링크첨부"/>
						</td>
					</tr>
					<tr>
						<td colspan="3"></td>
						<td align="right" colspan="3"><br />
							<span class="boldText">· 1개의 폴더</span>와 <span class="boldText">0개의 파일</span>이 있습니다.
							<br />
							<span class="boldText">·</span> 사용 메뉴는 마우스 오른쪽 버튼을 이용할 수도 있습니다.
						</td>
					</tr>
				</tfoot>
			</table>
		</div>
	</div>
</body>
</html>