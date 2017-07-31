<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" charset="utf-8" src="resources/smarteditor2-master/workspace/js/service/HuskyEZCreator.js"></script>
<title>편지 쓰기</title>
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
			<h3>| 편지쓰기 |</h3>
		</div>
		<div class="mailRightMid">
			<ul class="nav nav-tabs" role="tablist" id="myTab">
			  <li role="presentation" class="active"><a href="#editor" aria-controls="editor" role="tab" data-toggle="tab">편집기</a></li>
			  <li role="presentation"><a href="#text" aria-controls="text" role="tab" data-toggle="tab" >텍스트</a></li>
			</ul>
			
			<div class="tab-content">
			  <div role="tabpanel" class="tab-pane fade in active" id="editor">
				<table id="mail">
					<thead>
						<tr>
							<td colspan="5" width="100%">
								<div class="floatRight" style="margin: 7px;">
									<img src="${pageContext.request.contextPath}/resources/image/button_send.gif">
									<img src="${pageContext.request.contextPath}/resources/image/button_preview.gif">
									<img src="${pageContext.request.contextPath}/resources/image/button_temp_save.gif">
									<img src="${pageContext.request.contextPath}/resources/image/button_chk_address.gif">
								</div>
							</td>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td width="1%" class="boldText">
								받는사람
							</td>
							<td width="30%" align="left">
								<input type="text" class="mailInputBox"/>
							</td>
							<td width="2%">
								<input type="checkbox"/></td>
							<td width="8%">
								나에게
							</td>
							<td>
								<img src="${pageContext.request.contextPath}/resources/image/button_address.gif">
							</td>
						</tr>
						<tr>
							<td width="10%" class="boldText">
								참    조
							</td>
							<td colspan="3" width="40%" align="left">
								<input type="text" class="mailInputBox"/>
							</td>
							<td>
								<img src="${pageContext.request.contextPath}/resources/image/button_paddress.gif">
							</td>
						</tr>
						<tr>
							<td class="boldText">
								숨은 참조
							</td>
							<td colspan="3" align="left">
								<input type="text" class="mailInputBox"/>
							</td>
							<td>
								<div class="greenText"><input type="checkbox" checked="checked"/>자동완성 사용</div>
							</td>
						</tr>
						<tr>
							<td class="boldText">
								제    목
							</td>
							<td colspan="3" align="left">
								<input type="text" class="mailInputBox"/>
							<td>
						</tr>
						<tr>
							<td class="boldText">
								보내는 이
							</td>
							<td align="left">
								<input type="text"/>
							</td>
						</tr>
						<tr>
							<td></td>
							<td colspan="4">
								<textarea rows="15" cols="100" id="contents" name="contents"></textarea>
							</td>
						</tr>
						<tr>
							<td>
								<div class="boldText"><img src="${pageContext.request.contextPath}/resources/image/quare_gray_plus.gif">&nbsp;메일 옵션</div>
							</td>
							<td align="left">
								<select>
									<option>중요도 높음</option>
									<option selected="selected">중요도 보통</option>
									<option>중요도 낮음</option>
								</select>
								&nbsp;&nbsp;<input type="checkbox"/>&nbsp;보낸편지함에 저장&nbsp;&nbsp;<input type="checkbox"/>&nbsp;수신확인
							</td>
						</tr>
					</tbody>
				</table>
				<br>
				<table <%--id="mail"--%>>
					<thead>
						<tr>
							<td width="10%">
								<div class="floatLeft" style="margin-left: 45px;">
									<div class="boldText floatLeft"><img src="${pageContext.request.contextPath}/resources/image/quare_gray_plus.gif">&nbsp;파일 첨부</div>
								</div>
							</td>
							<td width="7%"><input type="radio" name="attach"/>일반 첨부</td>
							<td width="7%"><input type="radio" name="attach"/>대용량 첨부</td>
							<td width="40%">
								<div class="floatLeft">[ </div>
								<div class="floatLeft blueText">첨부파일이</div> 
								<div class="floatLeft boldText blueText">1M 이상</div>
								<div class="floatLeft blueText">일 경우 대용량 첨부를 선택하세요</div>
								<div class="floatLeft"> ]</div>
							</td>
							<td></td>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td colspan="3">
								<img src="${pageContext.request.contextPath}/resources/image/btn_fcadd.gif">
								<img src="${pageContext.request.contextPath}/resources/image/btn_fcremoveS.gif">
								<img src="${pageContext.request.contextPath}/resources/image/btn_fcremoveA.gif">
							</td>
						</tr>
						<tr>
							<td colspan="3">
								<img src="${pageContext.request.contextPath}/resources/image/attach_webfolder.gif">
							</td>
						</tr>				
					</tbody>
				</table>
				<div class="floatRight" style="margin: 7px;">
					<img src="${pageContext.request.contextPath}/resources/image/button_send.gif">
					<img src="${pageContext.request.contextPath}/resources/image/button_preview.gif">
					<img src="${pageContext.request.contextPath}/resources/image/button_temp_save.gif">
					<img src="${pageContext.request.contextPath}/resources/image/button_chk_address.gif">
				</div>
			  </div>
			  <div role="tabpanel" class="tab-pane fade" id="text">
			  	
				<table <%--id="mail"--%>>
					<thead>
						<tr>
							<td colspan="5" width="100%">
								<div class="floatRight" style="margin: 7px;">
									<img src="${pageContext.request.contextPath}/resources/image/button_send.gif">
									<img src="${pageContext.request.contextPath}/resources/image/button_preview.gif">
									<img src="${pageContext.request.contextPath}/resources/image/button_temp_save.gif">
									<img src="${pageContext.request.contextPath}/resources/image/button_chk_address.gif">
								</div>
							</td>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td width="1%" class="boldText">
								받는사람
							</td>
							<td width="30%" align="left">
								<input type="text" class="mailInputBox"/>
							</td>
							<td width="2%">
								<input type="checkbox"/></td>
							<td width="8%">
								나에게
							</td>
							<td>
								<img src="${pageContext.request.contextPath}/resources/image/button_address.gif">
							</td>
						</tr>
						<tr>
							<td width="10%" class="boldText">
								참    조
							</td>
							<td colspan="3" width="40%" align="left">
								<input type="text" class="mailInputBox"/>
							</td>
							<td>
								<img src="${pageContext.request.contextPath}/resources/image/button_paddress.gif">
							</td>
						</tr>
						<tr>
							<td class="boldText">
								숨은 참조
							</td>
							<td colspan="3" align="left">
								<input type="text" class="mailInputBox"/>
							</td>
							<td>
								<div class="greenText"><input type="checkbox" checked="checked"/>자동완성 사용</div>
							</td>
						</tr>
						<tr>
							<td class="boldText">
								제    목
							</td>
							<td colspan="3" align="left">
								<input type="text" class="mailInputBox"/>
							<td>
						</tr>
						<tr>
							<td class="boldText">
								보내는 이
							</td>
							<td align="left">
								<input type="text"/>
							</td>
						</tr>
						<tr>
							<td></td>
							<td colspan="5" align="left">
								<textarea rows="15" cols="100" name="text"></textarea>
							</td>
						</tr>
						<tr>
							<td>
								<div class="boldText"><img src="${pageContext.request.contextPath}/resources/image/quare_gray_plus.gif">&nbsp;메일 옵션</div>
							</td>
							<td align="left">
								<select>
									<option>중요도 높음</option>
									<option selected="selected">중요도 보통</option>
									<option>중요도 낮음</option>
								</select>
								&nbsp;&nbsp;<input type="checkbox"/>&nbsp;보낸편지함에 저장&nbsp;&nbsp;<input type="checkbox"/>&nbsp;수신확인
							</td>
						</tr>
					</tbody>
				</table>
				<br>
				<table <%--id="mail"--%>>
					<thead>
						<tr>
							<td width="10%">
								<div class="floatLeft" style="margin-left: 45px;">
									<div class="boldText floatLeft"><img src="${pageContext.request.contextPath}/resources/image/quare_gray_plus.gif">&nbsp;파일 첨부</div>
								</div>
							</td>
							<td width="7%"><input type="radio" name="attach"/>일반 첨부</td>
							<td width="7%"><input type="radio" name="attach"/>대용량 첨부</td>
							<td width="40%">
								<div class="floatLeft">[ </div>
								<div class="floatLeft blueText">첨부파일이</div> 
								<div class="floatLeft boldText blueText">1M 이상</div>
								<div class="floatLeft blueText">일 경우 대용량 첨부를 선택하세요</div>
								<div class="floatLeft"> ]</div>
							</td>
							<td></td>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td colspan="3">
								<img src="${pageContext.request.contextPath}/resources/image/btn_fcadd.gif">
								<img src="${pageContext.request.contextPath}/resources/image/btn_fcremoveS.gif">
								<img src="${pageContext.request.contextPath}/resources/image/btn_fcremoveA.gif">
							</td>
						</tr>
						<tr>
							<td colspan="3">
								<img src="${pageContext.request.contextPath}/resources/image/attach_webfolder.gif">
							</td>
						</tr>				
					</tbody>
				</table>
				<div class="floatRight" style="margin: 7px;">
					<img src="${pageContext.request.contextPath}/resources/image/button_send.gif">
					<img src="${pageContext.request.contextPath}/resources/image/button_preview.gif">
					<img src="${pageContext.request.contextPath}/resources/image/button_temp_save.gif">
					<img src="${pageContext.request.contextPath}/resources/image/button_chk_address.gif">
				</div>
			  </div>
			</div>
		</div>
	</div>

	<script type="text/javascript">
		$(function() {
			$('#myTab a:last').tab('show');
		});
		$(document).ready(function() {
			$("#list").on("click", function(e) { //목록으로 버튼
				e.preventDefault();
				fn_openBoardList();
			});

			$("#write").on("click", function(e) { //작성하기 버튼
				e.preventDefault();
				oEditors.getById["contents"].exec("UPDATE_CONTENTS_FIELD", []);
				$("#insert").submit();
			});
		});

		function fn_openBoardList() {
			location.href = "openBoardList.do";
		}

		var oEditors = [];
		nhn.husky.EZCreator
				.createInIFrame({
					oAppRef : oEditors,
					elPlaceHolder : "contents", //textarea에서 지정한 id와 일치해야 합니다. 
					//SmartEditor2Skin.html 파일이 존재하는 경로
					sSkinURI : "resources/smarteditor2-master/workspace/SmartEditor2Skin.html",
					htParams : {
						// 툴바 사용 여부 (true:사용/ false:사용하지 않음)
						bUseToolbar : true,
						// 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음)
						bUseVerticalResizer : true,
						// 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음)
						bUseModeChanger : true,
						fOnBeforeUnload : function() {

						}
					},
					/* fOnAppLoad : function(){
					    //기존 저장된 내용의 text 내용을 에디터상에 뿌려주고자 할때 사용
					    oEditors.getById["CONTENTS"].exec("PASTE_HTML", ["기존 DB에 저장된 내용을 에디터에 적용할 문구"]);
					}, */
					fCreator : "createSEditor2"
				});
	</script>
</body>
</html>