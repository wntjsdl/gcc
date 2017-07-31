<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
</head>


<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr>
        <td height="14" background="${pageContext.request.contextPath}/resources/image/imgs/ln01.gif"></td>
    </tr>

    <tr>
        <td height="30" align="center" >

            <table width="897" border="0" cellspacing="0" cellpadding="0">
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
            </table> </td>
    </tr>
    <tr>
        <td height="1" background="<img src="${pageContext.request.contextPath}/resources/image/imgs/ln02.gif"></td>
    </tr>
    <tr>
        <td height="10" ></td>
    </tr>
</table>
<table width="897" border="0" align="center" cellpadding="0" cellspacing="0">

    <tr>
        <td height="2" colspan="5" bgcolor="81B1E2"></td>
    </tr>
    <tr>
        <td height="28" align="center" bgcolor="EAF2FA" style="font-size:13px" ><strong>${bvo.title}</strong></td>
    </tr>
    <tr>
        <td height="1" align="center" bgcolor="#D9E6F2"></td>
    </tr>
    <tr>
        <td height="25" align="center" bgcolor="F3F3F3">
            <table width="98%" border="0" cellspacing="0">

                <tr>
                    <td width="50%"><strong> 강주선 </strong>께서 <strong>${bvo.crea_date}</strong>
                        올리셨습니다. / [IP] 211.184.116.56
                    </td>
                    <td width="42%">홈페이지 : <font color='#CDCDCD'>관련링크 없음.</font>
                    </td>
                    <td width="8%" align="right">index: ${bvo.idx} / 조회수: ${bvo.hit_cnt}</td>
                </tr>



            </table></td>
    </tr>
    <tr>
        <td height="1" align="center" bgcolor="#DFDFDF"></td>
    </tr>
    <tr>
        <td height="100" valign="top" bgcolor="FCFCFC" style=padding:7pt;>
            <table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
                <tr>
                    <td height="180" valign="top" bgcolor="#FCFCFC" style=padding:5pt;line-height:150%>${bvo.contents}</td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td height="1" align="center" bgcolor="#DFDFDF"></td>
    </tr>
    <script>
        <!--
        function admin_del()
        {
            if (confirm('정말로 삭제하겠습니까?')){
                document.passform.password.value=1234;
                document.passform.seq.value=3387;
                document.passform.submit();
            }
        }

        function user_del()
        {
            document.passform.seq.value=3387;
            layerdel_view();
        }
        -->
    </script>

    <tr>
        <td height="35" align="right">
            <a href="/openBoardList.do"><img src="${pageContext.request.contextPath}/resources/image/imgs/bt_list.gif" width="59" height="21" border="0"></a>

            <a href="/openBoardWrite.do"><img src="${pageContext.request.contextPath}/resources/image/imgs/bt_write.gif" width="59" height="21" border="0"></a>

            <a href="/openBoardReply.do?idx=${bvo.idx}&title=${bvo.title}"><img src="${pageContext.request.contextPath}/resources/image/imgs/bt_re.gif" width="59" height="21" border="0"></a>

            <a href="openBoardUpdate.do?idx=${bvo.idx}"><img src="${pageContext.request.contextPath}/resources/image/imgs/bt_edit_.gif" width="59" height="21" border="0"></a>
            <img src="${pageContext.request.contextPath}/resources/image/imgs/bt_print.gif" width="59" height="21" border="0" onclick="open_print(3387)" style = "cursor:hand">

            <a href="/deleteBoard.do?idx=${bvo.idx}"><img src="${pageContext.request.contextPath}/resources/image/imgs/bt_del.gif" width="59" height="21" border="0"></a>

        </td>
    </tr>

</table>

<table width="897" border="0" align="center" cellpadding="3" cellspacing="1">

    <tr>
        <td width="14%" align="center" bgcolor="EAF2FA">이전글</td>
        <td width="86%" bgcolor="F7F7F7" style="padding-left:8pt">
            <a href="qa_view.asp?gubun=1&index=list&page=1&seq=3386&keyword=&sname=0&ssubject=0&scontent=">[공지] 수원시창업지원센터 5월 공지사항</a>
    </tr>

    <tr>
        <td height="24" align="center" bgcolor="EAF2FA">다음글</td>
        <td bgcolor="F7F7F7" style="padding-left:8pt">
            <a href="qa_view.asp?gubun=1&index=list&page=1&seq=3388&keyword=&sname=0&ssubject=0&scontent=">[공지] 6/2일 기술교류회 - IoT 적용 사례</a>
        </td>
    </tr>

</table>

<!-- ##########   삭제시 비밀번호를 묻는 대화상자   ############-->
<table id="layerdel" border=0 cellpadding=3 cellspacing=0 style="position:absolute; visibility:hidden;">
    <tr bgcolor=#d6d3ce>
        <td style="border-color:#eeeeee #808080 #808080 #eeeeee; border-width:2px 2px 2px 2px; border-style:solid" valign=top width=200>
            <table width=100% border=0 cellpadding=2 cellspacing=0>
                <tr bgcolor=#000080>
                    <td><font color=#ffffff>글 삭제하기</font></td><td align=right width=5%><a href="#" onclick="layerdel_hidden()"><img src="${pageContext.request.contextPath}/resources/image/imgs/img_board/del.gif" border=0 alt="닫기"></a>
                </td>
                </tr>
            </table>
            <table width=100% height=80 border=0 cellpadding=3 cellspacing=1>
                <tr>
                    <form name='passform' method="post" action="qa_del.asp?id=tboard1&index=list&page=1&keyword=&sname=0&ssubject=0&scontent=">
                        <td align=center>
                            비밀번호를 정확히 입력하세요.<p>
                            <input type="hidden" name="seq" value="">
                            <input type="hidden" name="delete" value="yes">
                            <input type="password" name="password" size=10 maxlength=10>&nbsp;&nbsp;
                            <input type="submit" value="확인">
                        </td>
                    </form>
                </tr>
            </table>
        </td>
    </tr>
</table>
</body>




<%--<body>--%>
    <%--<table class="board_view">--%>
        <%--<colgroup>--%>
            <%--<col width="15%"/>--%>
            <%--<col width="35%"/>--%>
            <%--<col width="15%"/>--%>
            <%--<col width="35%"/>--%>
        <%--</colgroup>--%>
        <%--<caption>게시글 상세</caption>--%>
        <%--<tbody>--%>
            <%--<tr>--%>
                <%--<th scope="row">글 번호</th>--%>
                <%--<td>${bvo.idx}</td>--%>
                <%--<th scope="row">조회수</th>--%>
                <%--<td>${bvo.hit_cnt}</td>--%>
            <%--</tr>--%>
            <%--<tr>--%>
                <%--<th scope="row">작성자</th>--%>
                <%--<td>${bvo.ip}</td>--%>
                <%--<th scope="row">작성시간</th>--%>
                <%--<td>${bvo.crea_date}</td>--%>
            <%--</tr>--%>
            <%--<tr>--%>
                <%--<th scope="row">제목</th>--%>
                <%--<td colspan="3">${bvo.title}</td>--%>
            <%--</tr>--%>
            <%--<tr>--%>
                <%--<td colspan="4" height="200px">${bvo.contents}</td>--%>
            <%--</tr>--%>
        <%--</tbody>--%>
    <%--</table>--%>
     <%----%>
    <%--<a href="#this" class="btn btn-info" id="list">목록으로</a>--%>
    <%--<a href="#this" class="btn btn-info" id="update">수정하기</a>--%>
    <%--<a href="#this" class="btn btn-info" id="reply">답글달기</a>--%>
     <%----%>
    <%--<script type="text/javascript">--%>
        <%--$(document).ready(function(){--%>
            <%--$("#list").on("click", function(e){ //목록으로 버튼--%>
                <%--e.preventDefault();--%>
                <%--fn_openBoardList();--%>
            <%--});--%>
             <%----%>
            <%--$("#update").on("click", function(e){--%>
                <%--e.preventDefault();--%>
                <%--fn_openBoardUpdate();--%>
            <%--});--%>
             <%----%>
            <%--$("#reply").on("click", function(e){--%>
                <%--e.preventDefault();--%>
                <%--fn_openBoardReply();--%>
            <%--});--%>
        <%--});--%>
         <%----%>
        <%--function fn_openBoardList(){--%>
            <%--location.href="openBoardList.do";--%>
        <%--}--%>
         <%----%>
        <%--function fn_openBoardUpdate(){--%>
            <%--var idx = "${bvo.idx}";--%>
            <%--location.href="openBoardUpdate.do?idx=" + idx;--%>
        <%--}--%>

        <%--function fn_openBoardReply(){--%>
            <%--var idx = "${bvo.idx}";--%>
            <%--var title = "${bvo.title}";--%>
			<%--location.href="openBoardReply.do?idx=" + idx + "&title=" + title;--%>
        <%--}--%>
    <%--</script>--%>
<%--</body>--%>
</html>