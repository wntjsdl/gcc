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
		<h3>| 받은편지함 |</h3> 3개의메일이 보관되어 있습니다.(2.30 MB)
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
				<img src="${pageContext.request.contextPath}/resources/image/clear.gif"/>
				
				<select>
					<option>편지함 바로가기</option>
					<option>보낸편지함</option>
					<option>지운편지함</option>
					<option>임시보관함</option>
				</select>
				<select>
					<optgroup label="목록 보기"></optgroup>
					<option>추가 기능</option>
					<option>읽지않은 메일만 보기</option>
					<option>첨부있는 메일만 보기</option>
					<option>중요메일만 보기</option>
					<optgroup label="전달 저장"></optgroup>
					<option>PC로 저장</option>
					<option>전달하기</option>
					<optgroup label="메일 표시"></optgroup>
					<option>읽은 메일로 표시</option>
					<option>읽지않은 메일로 표시</option>
					<option>중요메일 지정</option>
					<option>중요메일 해제</option>
				</select>
			</div>
			<div class="floatRight">
				<select>
					<optgroup label="최근일주일목록"></optgroup>
					<option>날짜별 보기</option>
					<optgroup label="선택하세요"></optgroup>
					<option>7월 1일</option>
					<option>7월 2일</option>
					<option>7월 3일</option>
					<option>7월 4일</option>
					<option>7월 5일</option>
					<option>7월 6일</option>
					<option>7월 7일</option>
					<option>7월 8일</option>
					<option>7월 9일</option>
				</select>
			</div>
		</div>
		<table id="mail">
			<thead>
				<td width="3%">
				</td>
				<td width="3%">
					<img src="${pageContext.request.contextPath}/resources/image/clip.gif"/>
				</td>
				<td width="5%">
				<img src="${pageContext.request.contextPath}/resources/image/flag_important.gif"/>
				<td width="10%">보낸 사람</td>
				<td width="58%">제목</td>
				<td width="8%">받은 날짜</td>
				<td width="8%">크기</td>
			</thead>
			<tr>
				<td width="3%"><input type="checkbox"/></td>
				<td width="3%">
					<img src="${pageContext.request.contextPath}/resources/image/doc.gif"/>
				</td>
				<td width="5%">
				<img src="${pageContext.request.contextPath}/resources/image/flag_important_blur.gif"/>
				</td>
				<td width="10%"><a href="#">도완준</a></td>
				<td width="61%">
				이력서양식공지
				<img src="${pageContext.request.contextPath}/resources/image/popup_icon.gif"/>
				</td>
				<td width="8%">17-05-17(수) 15:34</td>
				<td width="8%">140KB</td>
			</tr>
			<tr>
				<td width="3%"><input type="checkbox"/></td>
				<td width="3%">
					<img src="${pageContext.request.contextPath}/resources/image/pdf.gif"/>
				</td>
				<td width="5%">
				<img src="${pageContext.request.contextPath}/resources/image/flag_important_blur.gif"/>
				</td>
				<td width="10%"><a href="#">구상복</a></td>
				<td width="61%">
				트렌드 코리아 2015 자료
				<img src="${pageContext.request.contextPath}/resources/image/popup_icon.gif"/>
				</td>
				<td width="8%">17-05-16(화) 10:18</td>
				<td width="8%">1.11MB</td>
			</tr>
			<tr>
				<td width="3%"><input type="checkbox"/></td>
				<td width="3%">
					<img src="${pageContext.request.contextPath}/resources/image/pdf.gif"/>
				</td>
				<td width="5%">
				<img src="${pageContext.request.contextPath}/resources/image/flag_important_blur.gif"/>
				</td>
				<td width="10%"><a href="#">구상복</a></td>
				<td id="titleCss" width="61%">
				트렌드 코리아 2017 자료
				<img src="${pageContext.request.contextPath}/resources/image/popup_icon.gif"/>
				</td>
				<td width="8%">17-05-16(화) 10:18</td>
				<td width="8%">0.94MB</td>
			</tr>
		</table>
		<div class="mailRightMid2">
			<div class="floatLeft">
				<img src="${pageContext.request.contextPath}/resources/image/select_all.gif"/>
				<img src="${pageContext.request.contextPath}/resources/image/del.gif"/>
				<img src="${pageContext.request.contextPath}/resources/image/clear.gif"/>
				<select>
					<option>편지함 바로가기</option>
					<option>보낸편지함</option>
					<option>지운편지함</option>
					<option>임시보관함</option>
				</select>
				<select>
					<optgroup label="목록 보기"></optgroup>
					<option>추가 기능</option>
					<option>읽지않은 메일만 보기</option>
					<option>첨부있는 메일만 보기</option>
					<option>중요메일만 보기</option>
					<optgroup label="전달 저장"></optgroup>
					<option>PC로 저장</option>
					<option>전달하기</option>
					<optgroup label="메일 표시"></optgroup>
					<option>읽은 메일로 표시</option>
					<option>읽지않은 메일로 표시</option>
					<option>중요메일 지정</option>
					<option>중요메일 해제</option>
				</select>
			</div>
			<div class="floatRight">
				<select>
					<optgroup label="최근일주일목록"></optgroup>
					<option>날짜별 보기</option>
					<optgroup label="선택하세요"></optgroup>
					<option>7월 1일</option>
					<option>7월 2일</option>
					<option>7월 3일</option>
					<option>7월 4일</option>
					<option>7월 5일</option>
					<option>7월 6일</option>
					<option>7월 7일</option>
					<option>7월 8일</option>
					<option>7월 9일</option>
				</select>
			</div>
		</div>
	</div>
	<div class="mailRightBot">
	1 | (1/1 page)
	</div>
</div>

</body>

</html>