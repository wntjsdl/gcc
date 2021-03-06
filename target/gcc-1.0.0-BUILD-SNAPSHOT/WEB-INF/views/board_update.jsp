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
    <form name="writeform" id="writeform" action="insertBoard.do">
        <input type="hidden" name="id" value="tboard1">
        <input type="hidden" name="index" value="write"> </td>
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
                            <input type="text" name="title" id="title" class="box" size=60 maxlength="30" style="ime-mode:active" value="${bvo.title}">
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
                                <textarea rows="15" cols="100" id="contents" name="contents">${bvo.contents}</textarea>
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

<%--
<body>
    <form id="frm">
        <table style="width: 100%;">
            <colgroup>
                <col width="15%"/>
                <col width="35%"/>
                <col width="15%"/>
                <col width="35%"/>
            </colgroup>
            <caption>게시글 상세</caption>
            <tbody>
                <tr>
                    <th scope="row">글 번호</th>
                    <td>
                        ${bvo.idx}
                        <input type="hidden" id="idx" name="idx" value="${bvo.idx}">
                    </td>
                    <th scope="row">조회수</th>
                    <td>${bvo.hit_cnt}</td>
                </tr>
                <tr>
                    <th scope="row">작성자</th>
                    <td>${bvo.ip}</td>
                    <th scope="row">작성시간</th>
                    <td>${bvo.crea_date}</td>
                </tr>
                <tr>
                    <th scope="row">제목</th>
                    <td colspan="3">
                        <input type="text" id="title" name="title" class="wdp_90" value="${bvo.title}"/>
                    </td>
                </tr>
                <tr>
                    <td colspan="4" class="view_text">
                        <textarea rows="15" cols="100" title="내용" id="contents" name="contents"></textarea>
                    </td>
                </tr>
            </tbody>
        </table>
    </form>
--%>


    <a href="#this" class="btn btn-info" id="list">목록으로</a>
    <a href="#this" class="btn btn-info" id="update">저장하기</a>
    <a href="#this" class="btn btn-info" id="delete">삭제하기</a>
     
    <script type="text/javascript">
        $(document).ready(function(){
            $("#list").on("click", function(e){ //목록으로 버튼
                e.preventDefault();
                fn_openBoardList();
            });
             
            $("#update").on("click", function(e){ //저장하기 버튼
                e.preventDefault();
                fn_updateBoard();
            });
             
            $("#delete").on("click", function(e){ //삭제하기 버튼
                e.preventDefault();
                fn_deleteBoard();
            });
        });
         
        function fn_openBoardList(){
			location.href="openBoardList.do";
        }
         
        function fn_updateBoard(){
	    	oEditors.getById["contents"].exec("UPDATE_CONTENTS_FIELD", []);
			location.href="updateBoard.do?idx=${bvo.idx}" + "&title=" + $("#title").val() + "&contents=" + $("#contents").val();
        }
         
        function fn_deleteBoard(){
			location.href="deleteBoard.do?idx=${bvo.idx}";
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

            <%--fOnAppLoad : function(){--%>
                <%--//기존 저장된 내용의 text 내용을 에디터상에 뿌려주고자 할때 사용--%>
                <%--oEditors.getById["contents"].exec("PASTE_HTML", ["<![CDATA${bvo.contents}"]);--%>
            <%--},--%>

            fCreator: "createSEditor2"
        });
    </script>
</body>
</html>