<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
</head>
<body>

<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
    <tr>
        <td height="14" background="${pageContext.request.contextPath}/resources/image/imgs/ln01.gif"></td>
    </tr>

    <tr>
        <td height="30" align="center">

            <table width="897" border="0" cellspacing="0" cellpadding="0">
                <tr>
                    <td><img src="${pageContext.request.contextPath}/resources/image/imgs/img_board/ic.gif" width="36"
                             height="27" align="absmiddle">
                        게시판 &gt; <font color="3366CC"><strong>
                            공지사항
                        </strong></font></td>

                    <td align="right"><img src="${pageContext.request.contextPath}/resources/image/imgs/ic_3.gif"
                                           width="12" height="15" align="absmiddle">

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
        <td height="1" align="center"><img src="${pageContext.request.contextPath}/resources/image/imgs/ln02.gif"></td>
    </tr>
    <tr>
        <td height="15"></td>
    </tr>
</table>
<table width="897" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
        <td width="40%" height="25">총게시물수: <font color="3366CC"><strong>${boardListJson.size()}</strong></font> 현재페이지:
            <font color="3366CC"> <strong>1</strong></font>/2
        </td>
        <td height="22" colspan="2" align="right">관리자 :

            <a href="#"><img src="${pageContext.request.contextPath}/resources/image/imgs/img_board/admin.gif"
                             alt="관리자 로그인" width="5" height="8" border=0></a>
            &nbsp;
        </td>
    </tr>
</table>
<%-- <table class="board_list">
    <colgroup>
        <col width="10%"/>
        <col width="*"/>
        <col width="15%"/>
        <col width="20%"/>
    </colgroup>
    <thead>
        <tr>
            <th scope="col">글번호</th>
            <th scope="col">제목</th>
            <th scope="col">조회수</th>
            <th scope="col">작성일</th>
        </tr>
    </thead>
    <tbody>
        <c:choose>
            <c:when test="${fn:length(list) > 0}">
                <c:forEach items="${list }" var="row">
                    <tr>
                        <td>${row.IDX }</td>
                        <td class="title">
                            <a href="#this" id="title">${row.TITLE }</a>
                            <input type="hidden" id="IDX" value="${row.IDX }">
                        </td>
                        <td>${row.HIT_CNT }</td>
                        <td>${row.CREA_DTM }</td>
                    </tr>
                </c:forEach>
            </c:when>
            <c:otherwise>
                <tr>
                    <td colspan="4">조회된 결과가 없습니다.</td>
                </tr>
            </c:otherwise>
        </c:choose>
    </tbody>
</table> --%>
<br><br><br>
<div id="SBGridArea" style="width:893px; height:300px;"></div>
<br/>

<table>
    <tr bgcolor="#E9EFFC">
        <td height="30" colspan="2" align="right" bgcolor="E3EEF8">
            <strong><font color=#3366CC> 1 </font></strong> |
            <a href="qa_list.asp?id=tboard1&index=list&page=2&keyword=&ssubject=0&sname=0&scontent=0"> 2 | </a>
        </td>
        <td width="40%" align="right" bgcolor="E3EEF8">
            <img src="${pageContext.request.contextPath}/resources/image/imgs/bt_check.gif" width="112" height="21"
                border="0" onclick="process()" style="cursor:hand">
        </td>
    </tr>
    <tr>
        <td height="33" colspan="2">&nbsp;</td>
        <td height="33" align="right" valign="bottom">

            <a href="/openBoardWrite.do">
                <img src="${pageContext.request.contextPath}/resources/image/imgs/bt_write.gif" width="59" height="21" border="0">
            </a>
            <a href="#"><img src="${pageContext.request.contextPath}/resources/image/imgs/bt_prev.gif" width="59" height="21" border="0">
            </a>
            <a href="#<%--qa_list.asp?id=tboard1&index=list&page=1&keyword=&ssubject=0&sname=0&scontent=0--%>">
                <img src="${pageContext.request.contextPath}/resources/image/imgs/bt_first.gif" width="59" height="21" border="0">
            </a>
            <a href="#<%--qa_list.asp?id=tboard1&index=list&page=2&keyword=&ssubject=0&sname=0&scontent=0--%>">
                <img src="${pageContext.request.contextPath}/resources/image/imgs/bt_next.gif" width="59" height="21" border="0">
            </a>


        </td>
    </tr>
    <form method="get" action="qa_list.asp" name="s">
        <tr>
            <td height="40" colspan="3" align="center" valign="bottom">
                <input type="hidden" name="id" value="tboard1">
                <input type="hidden" name="index" value="search">
                <input type="hidden" name="page" value="1">
                <input type="checkbox" name="ssubject" value="1">제목
                <input type="checkbox" name="sname" value="1">이름
                <input type="checkbox" name="scontent" value="1">내용
                <input type="text" name="keyword" size="25" value="" class="box" size="30">
                <img src="${pageContext.request.contextPath}/resources/image/imgs/bt_sear.gif" width="59" height="21"
                     border="0" onclick="return s_check();" style="cursor:hand" align="absmiddle">
            </td>
        </tr>
    </form>
</table>
<%--<a href="#this" class="btn btn-info" id="write">글쓰기</a>--%>

</body>

<script type="text/javascript">

    var datagrid;
    var SBGridProperties;
    var grid_data = ${boardListJson};


    $(document).ready(function () {
        $("#write").on("click", function (e) { //글쓰기 버튼
            e.preventDefault();
            fn_openBoardWrite();
        });

        var SBGridProperties = {};
        SBGridProperties.parentid = 'SBGridArea';
        SBGridProperties.id = 'datagrid';
        SBGridProperties.jsonref = 'grid_data';
        SBGridProperties.rowheight = 25;
        SBGridProperties.emptyrecords = '조회된 자료가 존재하지 않습니다.';//레코드가 없을경우 출력되는 메시지
        SBGridProperties.width = '100%';
        SBGridProperties.height = '400px';
        SBGridProperties.allowselection = false;
//             SBGridProperties.paging={'type' : 'all' , 'count' : 10 , 'size' : 5};
//          SBGridProperties.explorerbar = 'sort';
        SBGridProperties.columns = [
            {caption: ['글 번호'], ref: 'idx', width: 50, type: 'output', style: 'text-align:center;'},
            {caption: ['제목'], ref: 'title', width: 590, type: 'output', style: 'text-align:left;'},
            {caption: ['조회수'], ref: 'hit_cnt', width: 50, type: 'output', style: 'text-align:center;'},
            {caption: ['작성일'], ref: 'crea_date', width: 200, type: 'output', style: 'text-align:center;'},
        ];

        datagrid = _SBGrid.create(SBGridProperties);

        datagrid.refresh();

        datagrid.addEventListener("onrowchanged", "eventProcess", "", "");
// 			datagrid.addEventListener("oncolchanged","eventProcess","","");
    });

    function fn_openBoardWrite() {
        location.href = "openBoardWrite.do";
    }

    function eventProcess(event) {
        var nRow = datagrid.getMouseRow();
        if (nRow >= 1) {
            var idx = datagrid.getCellData(nRow, 0);
            location.href = "openBoardDetail.do?idx=" + idx;
        }
    }

</script>
</html>