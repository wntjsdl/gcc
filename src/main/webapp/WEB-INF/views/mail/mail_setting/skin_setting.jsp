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
					  				메일과 관련한 환경을 설정합니다.</td>
				  				</tr>			  			
				  			</thead>
				  			<tbody>
					  			<tr>
					  				<td width="15%" class="boldText">· 기본 메일 편집기</td>
					  				<td width="85%">
					  					<select>
									  		<option>HTML 편집기</option>
									  		<option>텍스트 편집기</option>
									  	</select>
									</td>
					  			</tr>
					  			<tr>
					  				<td class="boldText">· 기본 메일본문 형식</td>
					  				<td>
					  					<select>
									  		<option>TEXT</option>
									  		<option>HTML</option>
									  	</select>
					  				</td>
					  			</tr>
					  			<tr>
					  				<td class="boldText">· 페이지당 목록 갯수</td>
					  				<td><input type="checkbox" /> 로그인 중 새 메일이 왔을 때 팝업 창으로 알려드립니다.</td>
					  			</tr>
					  			<tr>
					  				<td class="boldText">· 새 메일 알림</td>
					  				<td><input type="checkbox" /> 메일을 주간별, 월간별, 오래된 메일로 분류하여 목록을 보여줍니다.</td>
					  			</tr>
					  			<tr>
					  				<td class="boldText">· 기간별 목록 분류</td>
					  				<td>메일에 첨부된 이미지가 있을 때 메일과 같이 볼 수 있습니다.</td>
					  			</tr>
					  			<tr>
					  				<td class="boldText">· 이미지 미리보기</td>
					  				<td>
					  					<select id="style">
					  						<option value="normal" selected="selected">기본 스타일</option>
					  						<option value="preview">미리보기 스타일</option>
					  					</select>
					  					<div id="styleImage"></div>
					  				</td>
					  			</tr>
					  			<tr>
					  				<td class="boldText">· 편지함 보기</td>
					  				<td></td>
					  			</tr>
					  			<tr>
					  				<td class="boldText">· 스킨</td>
					  				<td>마음에 드는 스킨을 선택하세요<br>
					  					<table>
					  						<tr>
					  							<td><img src="${pageContext.request.contextPath}/resources/image/skin_1.png"></td>
					  							<td><img src="${pageContext.request.contextPath}/resources/image/skin_2.png"></td>
					  							<td><img src="${pageContext.request.contextPath}/resources/image/skin_3.png"></td>
					  							<td><img src="${pageContext.request.contextPath}/resources/image/skin_4.png"></td>
					  						</tr>
					  						<tr>
					  							<td><input type="radio"/>기본</td>
					  							<td><input type="radio"/>기다림</td>
					  							<td><input type="radio"/>한국의 멋</td>
					  							<td><input type="radio"/>편지지</td>
					  						</tr>
					  						<tr>
					  							<td><img src="${pageContext.request.contextPath}/resources/image/skin_5.png"></td>
					  							<td><img src="${pageContext.request.contextPath}/resources/image/skin_6.png"></td>
					  							<td><img src="${pageContext.request.contextPath}/resources/image/skin_7.png"></td>
					  							<td><img src="${pageContext.request.contextPath}/resources/image/skin_8.png"></td>
					  						</tr>
					  						<tr>
					  							<td><input type="radio"/>민들레</td>
					  							<td><input type="radio"/>하늘</td>
					  							<td><input type="radio"/>사랑</td>
					  							<td><input type="radio"/>바다</td>
					  						</tr>
					  					</table>
					  				</td>
					  			</tr>
				  			</tbody>
				  		</table>
				  		<br>
				  		<input type="button" value="설정저장"/>
				  	</div>
			  </div>
			</div>
		</div>
	</div>
	
	<script type="text/javascript">
// 		$(function() {
// 			$('#myTab a:last').tab('show');
// 		});
		$(document).ready(function(){
			$("#styleImage").html('<img src="${pageContext.request.contextPath}/resources/image/mboxstyle_1.gif">');
			$("#style").change(function(){
				var value = $('#style option:selected').val();
				if(value == "normal")
					$("#styleImage").html('<img src="${pageContext.request.contextPath}/resources/image/mboxstyle_1.gif">');
				else
					$("#styleImage").html('<img src="${pageContext.request.contextPath}/resources/image/mboxstyle_2.gif">');
			});
		});
	</script>
</body>
</html>