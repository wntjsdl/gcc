<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>스킨 설정</title>
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
			<h3>| 환경설정 |</h3>
		</div>
		<div class="mailRightMid">
			<ul class="nav nav-tabs" role="tablist" id="myTab">
			  <li role="presentation">
			  	<a href="#editor" aria-controls="editor" role="tab" data-toggle="tab">
				  	<img src="${pageContext.request.contextPath}/resources/image/config_title1.gif">
				</a>
			  </li>
			  <li role="presentation" class="active">
			  	<a href="#text" aria-controls="text" role="tab" data-toggle="tab" >
				  	<img src="${pageContext.request.contextPath}/resources/image/config_title2.gif">
			  	</a>
			  </li>
			</ul>
			
			<div class="tab-content">
			  <div role="tabpanel" class="tab-pane fade" id="editor">
			  	<div class="row individualSetting">
				  	<div class="col-lg-4" align="left">
				  		<a href="openSignFileSetting.do">
						  	<img src="${pageContext.request.contextPath}/resources/image/config_3.gif">
					  		서명 파일 관리
				  		</a>
				  	</div>
				  	<div class="col-lg-4" align="left">
				  		<a href="openBussCardSetting.do">
						  	<img src="${pageContext.request.contextPath}/resources/image/config_4.gif">
					  		명함 설정
				  		</a>
				  	</div>
				  	<div class="col-lg-4" align="left">
				  		<a href="openCharacterSetting.do">
						  	<img src="${pageContext.request.contextPath}/resources/image/config_12.gif">
					  		캐릭터 설정
				  		</a>
				  	</div>
				 </div>
			  </div>
			  <div role="tabpanel" class="tab-pane fade in active" id="text">
			  	<div class="row mailSetting">
				  	<div class="col-lg-4" align="left">
				  		<a href="openSkinSetting.do">
						  	<img src="${pageContext.request.contextPath}/resources/image/config_7.gif">
					  		세부 항목 설정
				  		</a>
				  	</div>
				  	<div class="col-lg-4" align="left">
				  		<a href="openOutSideMailSetting.do">
						  	<img src="${pageContext.request.contextPath}/resources/image/config_6.gif">
					  		외부 메일 설정
				  		</a>
				  	</div>
				  	<div class="col-lg-4" align="left">
				  		<a href="openUnsubscribeSetting.do">
						  	<img src="${pageContext.request.contextPath}/resources/image/config_8.gif">
					  		수신 거부
				  		</a>
				  	</div>
			  	</div>
			  	<div class="row mailSetting">
				  	<div class="col-lg-4" align="left">
				  		<a href="openClassifySetting.do">
						  	<img src="${pageContext.request.contextPath}/resources/image/config_9.gif">
					  		메일 자동 분류
				  		</a>
				  	</div>
				  	<div class="col-lg-4" align="left">
				  		<a href="openAutoResponseSetting.do">
						  	<img src="${pageContext.request.contextPath}/resources/image/config_10.gif">
					  		자동 응답
				  		</a>
				  	</div>
				  	<div class="col-lg-4" align="left">
				  		<a href="openForwardSetting.do">
						  	<img src="${pageContext.request.contextPath}/resources/image/config_11.gif">
					  		포워딩(전달) 설정
				  		</a>
				  	</div>
			  	</div>
			  	<br>
			  	<div class="row mailSetting">
				  	<div class="col-lg-12" align="left">
				  		<table width="100%">
				  			<thead>
				  				<tr>
				  					<td colspan="2" class="boldText"><img src="${pageContext.request.contextPath}/resources/image/config_notice.gif">
					  				외부메일설정을 이용하시면 강주선님의 다른메일 계정으로 수신되는 메일을 dosang.kr(으)로 가져올 수 있습니다.</td>
				  				</tr>
				  				<tr>
				  					<td colspan="2" class="boldText"><img src="${pageContext.request.contextPath}/resources/image/config_notice.gif">
					  				외부메일 추가하기</td>
				  				</tr>
				  			</thead>
				  			<tbody>
					  			<tr>
					  				<td width="15%" class="boldText">· POP3 서버 이름</td>
					  				<td width="85%">
					  					<input type="text" width="100px"/>
									</td>
					  			</tr>
					  			<tr>
					  				<td class="boldText">· 아이디</td>
					  				<td>
					  					<input type="text" width="100px" />
					  				</td>
					  			</tr>
					  			<tr>
					  				<td class="boldText">· 비밀 번호</td>
					  				<td>
					  					<input type="text" width="100px" />
					  				</td>
					  			</tr>
					  			<tr>
					  				<td class="boldText">· 접속 포트</td>
					  				<td>
					  					<input type="text" width="30px" value="110"/>
					  				</td>
					  			</tr>
					  			<tr>
					  				<td class="boldText">· 저장 편지함</td>
					  				<td>
					  					<select>
					  						<option>받은편지함</option>
					  						<option>보낸편지함</option>
					  						<option>지운편지함</option>
					  					</select>
					  				</td>
					  			</tr>
					  			<tr>
					  				<td class="boldText">· 메일 삭제</td>
					  				<td>
					  					<input type="radio">복사본 보관<br>
					  					<input type="radio">가져온 후 즉시 삭제<br>
					  					<input type="radio">가져온 지 7일이 지난 메일 삭제<br>
					  					<input type="button" value="추가하기"/>
					  				</td>
					  			</tr>
				  			</tbody>
				  		</table>
				  	</div>
			  </div>
			</div>
		</div>
	</div>
	
	<script type="text/javascript">
// 		$(function() {
// 			$('#myTab a:last').tab('show');
// 		});
	</script>
</body>
</html>