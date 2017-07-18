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
					  				수신거부 설정: 등록된 주소의 메일수신을 거부합니다(최대 100개까지).</td>
				  				</tr>
				  			</thead>
				  			<tbody>
					  			<tr>
					  				<td width="70%" class="boldText" align="center">
					  					등록된 정보가 없습니다.
					  				</td>
					  				<td width="30%">
					  					<input type="text" width="100px"/><input type="button" value="주소추가"/> <br><br>
					  					완전한 메일주소 (예: id@host.com)<br>
					  					또는 도메인 주소중 @을 포함한<br>
					  					도메인 이름(예: @yyy.com)을 넣은 후<br>
					  					추가 버튼을 누르면 됩니다.
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