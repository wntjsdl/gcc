<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<script type="text/javascript" charset="utf-8" src="resources/smarteditor2-master/workspace/js/service/HuskyEZCreator.js"></script>
</head>







<body leftmargin="0" onload="document.writeform.writer.focus();" topmargin="0" marginwidth="0" marginheight="0">
<table width="47%" border="0" cellspacing="0" cellpadding="0">
	<tr>
		<td height="14" background="${pageContext.request.contextPath}/resources/image/imgs/ln01.gif"></td>
	</tr>

	<tr>
		<td height="27" align="center">
			<table width="93%" border="0" cellspacing="0" cellpadding="0">
				<tr>
					<td><img src="${pageContext.request.contextPath}/resources/image/imgs/img_board/ic.gif" width="36" height="27" align="absmiddle">
						게시판 &gt; <font color="3366CC"><strong>
							공지사항
						</strong></font></td>
					<td align="right"><img src="${pageContext.request.contextPath}/resources/image/imgs/ic_3.gif" width="12" height="15" align="absmiddle">

						<a href='./qa_list.asp?id=tboard1'>공지사항</a>
						|
						<a href='./qa_list.asp?id=tboard2'>기술관련</a>
						|
						<a href='./qa_list.asp?id=tboard3'>영업관련</a>
						|
						<a href='./qa_list.asp?id=tboard4'>회의실예약현황</a>
						|
						<a href='./qa_list.asp?id=tboard5'>기타</a>
					</td>
				</tr>
			</table>
		</td>
	</tr>
	<tr>
		<td height="1" background="${pageContext.request.contextPath}/resources/image/imgs/ln02.gif"></td>
	</tr>
	<tr>
		<td height="10">
		</td>
	</tr>
</table>


<table width="47%" border="0" align="center" cellpadding="0" cellspacing="0">
	<tr>
		<td height="22">
		<td align="right" valign="top"><a href="openBoardList.do"><img src="${pageContext.request.contextPath}/resources/image/imgs/bt_list.gif" width="59"
																	   height="21" border="0"></a>
			<a href="javascript:history.back();"><img src="${pageContext.request.contextPath}/resources/image/imgs/bt_prev.gif" width="59" height="21" border="0"></a>
		</td>
	</tr>
	<form id="insert" action="insertBoardReply.do">
		<input type="hidden" name="id" value="tboard1">
		<input type="hidden" name="idx" value="${idx}"> </td>
		<tr>
			<td colspan="2">

				<table width="100%" border="0" cellspacing="1" cellpadding="3">
					<tr>
						<td height="2" bgcolor="81B1E2" colspan="2"></td>
					</tr>
					<tr>
						<td width="15%" align="center" bgcolor="E3EEF8">성&nbsp;&nbsp;&nbsp;&nbsp; 명</td>
						<td width="85%" bgcolor="F7F7F7" style="padding-left:8pt">
							<input type="text" name="writer" size="40" maxlength="10" value="강주선" class="box" readonly>
						</td>
					</tr>
					<tr onMouseOver=this.style.backgroundColor='#EFEFEF' onMouseOut=this.style.backgroundColor=''>
						<td align="center" bgcolor="E3EEF8">글 제 목</td>
						<td bgcolor="F7F7F7" style="padding-left:8pt"><select name="sub_type"
																			  onchange="document.writeform.subject.focus();">
							<option value="없음" selected>없음
							<option value="[공지]">[공지]
							<option value="[질문]">[질문]
							<option value="[보물]">[보물]
							<option value="[기타]">[기타]
							<option value="[유머]">[유머]
							<option value="[영업]">[영업]
							<option value="[소식]">[소식]
							<option value="[회의]">[회의]
						</select>
							<input type="text" name="title" class="box" size=60 maxlength="30" style="ime-mode:active" value="┖re:${title}" readonly="readonly">
						</td>
					</tr>
					<tr onMouseOver=this.style.backgroundColor='#EFEFEF' onMouseOut=this.style.backgroundColor=''>
						<td align="center" bgcolor="E3EEF8">전자우편</td>
						<td bgcolor="F7F7F7" style="padding-left:8pt"><input type="text" name="email" size=40 id="email"
																			 maxlength=30 value=""
																			 onBlur="check_email()" class="box"
																			 style="ime-mode:inactive">
						</td>
					</tr>
					<tr onMouseOver=this.style.backgroundColor='#EFEFEF' onMouseOut=this.style.backgroundColor=''>
						<td align="center" bgcolor="E3EEF8">홈페이지</td>
						<td bgcolor="F7F7F7" style="padding-left:8pt">http://<input type="text" name="url" value="" id="homepage"
																					size=50 maxlength=100 class="box"
																					style="ime-mode:inactive">
						</td>
					</tr>
					<tr onMouseOver=this.style.backgroundColor='#EFEFEF' onMouseOut=this.style.backgroundColor=''>
						<td align="center" bgcolor="E3EEF8">글 내 용</td>
						<td bgcolor="F7F7F7" style="padding-left:8pt">
							<div>
								<textarea rows="15" cols="100" id="contents" name="contents"></textarea>
							</div>
						</td>
					</tr>

					<tr>
						<td height="22" align="center" bgcolor="E3EEF8">첨부파일</td>
						<td colspan="1" bgcolor="#FAFAFA" style="padding-left:8pt">
							<input name="filename" type="file" size="76" class="box"></td>
					</tr>

					<tr onMouseOver=this.style.backgroundColor='#EFEFEF' onMouseOut=this.style.backgroundColor=''>
						<td align="center" bgcolor="E3EEF8">비밀번호</td>
						<td bgcolor="F7F7F7" style="padding-left:8pt"><input type="password" name="password" size="8"
																			 maxlength=8 class="box">
							&nbsp;&nbsp;&nbsp;&nbsp;<font color="#3366CC">※ 비밀번호를 입력하지 않으면 타인이
								수정/삭제 할 수 있습니다. </font></td>
					</tr>
					<tr onMouseOver=this.style.backgroundColor='#EFEFEF' onMouseOut=this.style.backgroundColor=''>
						<td align="center" bgcolor="E3EEF8">특수문자</td>
						<td bgcolor="F7F7F7" style="padding-left:8pt">
							<script language="Javascript">
                                <!--
                                text = "∼ㆍ『』♬♪♩♀♂★☆◑◐◀◁▶▷■▣◎◆◈◇♡♤♧▼▽▲△⊙▤▥▨▧▦▩☏☎™ⓒ㈜㉿→←☞☜"
                                document.write("&nbsp;&nbsp;&nbsp;")
                                for (i = 0; i < text.length; ++i) {
                                    document.write("<a href='#' onclick='InsChar(" + i + ")'>" + text.charAt(i) + "</a> &nbsp;");
                                    if ((i + 1) % 25 == 0) document.write("<br>&nbsp;&nbsp;&nbsp;")
                                }

                                function InsChar(c) {
                                    //alert(c)
                                    document.writeform.contents.value = document.writeform.contents.value + text.charAt(c)
                                    document.writeform.contents.focus()
                                }

                                -->
							</script>
						</td>
					</tr>
					<tr bgcolor="#DDDDDD">
						<td height="1" colspan="2"></td>
					<tr></tr>
				</table>
			</td>
		</tr>
		<tr>
			<td height="30" colspan="2" align="center" valign="bottom">
				<img id="write" src="${pageContext.request.contextPath}/resources/image/imgs/bt_save.gif"
					 width="59" height="21"
					 border="0">
				<a href="openBoardWrite.do"><img src="${pageContext.request.contextPath}/resources/image/imgs/bt_cancel_1.gif" width="59" height="21"
												 border="0"></a>
			</td>
		</tr>
	</form>
</table>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
	<tr>
		<td height="15"></td>
	</tr>

</table>









	<%--<body>--%>
	    <%--<form id="insert" action="insertBoardReply.do" method="post">--%>
	    	<%--<input type="hidden" name="idx" value="${idx}">--%>
	        <%--<table style="width: 100%;">--%>
	            <%--<caption>답글 작성</caption>--%>
	                <%--<tr>--%>
	                    <%--<th scope="row">제목</th>--%>
	                    <%--<td>--%>
	                    	<%--<select id="gnum" style="width: 75px;">--%>
	                    		<%--<option>-</option>--%>
	                    		<%--<option value="1">(공지)</option>--%>
	                    		<%--<option value="2">(질문)</option>--%>
	                    		<%--<option value="3">(보물)</option>--%>
	                    		<%--<option value="4">(영업)</option>--%>
	                    		<%--<option value="5">(소식)</option>--%>
	                    		<%--<option value="6">(회의)</option>--%>
	                    		<%--<option value="7">(유머)</option>--%>
	                    		<%--<option value="8">(기타)</option>--%>
	                    	<%--</select>--%>
	                    <%--</td>--%>
	                    <%--<td><input type="text" id="title" name="title" class="wdp_90" value="┖re:${title}" readonly="readonly"></input></td>--%>
	                <%--</tr>--%>
	                <%--<tr>--%>
	                	<%--<th>--%>
	                		<%--E-Mail--%>
	                	<%--</th>--%>
	                	<%--<td colspan="2">--%>
	                		<%--<input type="text" name="email" id="email"/>--%>
	                	<%--</td>--%>
	                <%--</tr>--%>
	                <%--<tr>--%>
	                    <%--<td colspan="3">--%>
	                        <%--<textarea rows="15" cols="100" id="contents" name="contents"></textarea>--%>
	                    <%--</td>--%>
	                <%--</tr>--%>
	                <%--<!-- <tr>--%>
	                	<%--<td>--%>
	                		<%--첨부파일: <input type="file" class="file" id="file"/>--%>
	                	<%--</td>--%>
	                <%--</tr> -->--%>
	        <%--</table>--%>
	         <%----%>
	        <%--<a href="#this" class="btn btn-info" id="write" >작성하기</a>--%>
	        <%--<a href="#this" class="btn btn-info" id="list" >목록으로</a>--%>
	    <%--</form>--%>
	     
	    <script type="text/javascript" charset="utf-8">
		    $(document).ready(function(){
		        $("#list").on("click", function(e){ //목록으로 버튼
		            e.preventDefault();
		            fn_openBoardList();
		        });
		         
		        $("#write").on("click", function(e){ //작성하기 버튼
		            e.preventDefault();
			    	oEditors.getById["contents"].exec("UPDATE_CONTENTS_FIELD", []);
		            $("#insert").submit();
		        });
		    });
		     
		    function fn_openBoardList(){
	            location.href="openBoardList.do";
		    }
	
			var oEditors = [];
	        nhn.husky.EZCreator.createInIFrame({
	            oAppRef: oEditors,
	            elPlaceHolder: "contents", //textarea에서 지정한 id와 일치해야 합니다. 
	            //SmartEditor2Skin.html 파일이 존재하는 경로
	            sSkinURI: "resources/smarteditor2-master/workspace/SmartEditor2Skin.html",  
	            htParams : {
	                // 툴바 사용 여부 (true:사용/ false:사용하지 않음)
	                bUseToolbar : true,             
	                // 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음)
	                bUseVerticalResizer : true,     
	                // 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음)
	                bUseModeChanger : true,         
	                fOnBeforeUnload : function(){
	                     
	                }
	            }, 
	            /* fOnAppLoad : function(){
	                //기존 저장된 내용의 text 내용을 에디터상에 뿌려주고자 할때 사용
	                oEditors.getById["CONTENTS"].exec("PASTE_HTML", ["기존 DB에 저장된 내용을 에디터에 적용할 문구"]);
	            }, */
	            fCreator: "createSEditor2"
	        });
		</script>
	</body>
</html>
