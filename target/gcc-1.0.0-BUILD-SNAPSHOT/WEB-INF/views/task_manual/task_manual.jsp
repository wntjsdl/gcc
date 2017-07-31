<%--
  Created by IntelliJ IDEA.
  User: Kang
  Date: 2017-07-24
  Time: 오후 5:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>업무 메뉴얼</title>
</head>
<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0"  >
<table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr>
        <td height="14" background="${pageContext.request.contextPath}/resources/image/imgs/ln01.gif"></td>
    </tr>
    <tr>
        <table width="897" border="0" cellspacing="0" cellpadding="0">
            <tr>
                <td width="300" height="27" align="left">
                <td><div id="file_nm"></div></td>
                <td align="left"><div id="work_ymd"></div></td>
            </tr>
        </table>
        </td>
    </tr>
    <tr>
        <td height="1" background="${pageContext.request.contextPath}/resources/image/imgs/ln02.gif"></td>
    </tr>
    <tr>
        <td height="10" ></td>
    </tr>
</table>

<div class="floatLeft" style="width: 10%;">
    <table width="220px" height="100%" border="0"  cellpadding="0" cellspacing="0" bgcolor='FAFAFA' >
        <tr>
            <td valign="top">
                <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
                    <tr>
                        <td height="60" align="center" valign="top">

                            <table width="100%"  border="0" cellpadding="0" cellspacing="0">
                                <form name=frm action="WorkTree.asp" method=post>
                                    <input type=hidden name="PV_WRK_C">
                                    <input type=hidden name="PV_WRK_D">
                                    <tr>
                                        <td height="2" bgcolor="81B1E2"></td>
                                    </tr>
                                    <tr>
                                        <td height="60" bgcolor="E3EEF8" STYLE=PADDING-left:15px>
                                            <select name="p_SearchGu">
                                                <option value="1">목차</option>
                                                <option value="2">내용</option>
                                                <option value="3">목차 + 내용</option>
                                            </select><br><input name="p_SearchKey" type="text" class="box" size="25">
                                            <input type="button" value="검색"  style="cursor:hand" onClick="SearchList()">
                                        </td>
                                    </tr>
                                </form>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td align="center">

                            <table width="100%" border=0 cellspacing=0 >
                                <tr height="27px">
                                    <td valign=bottom style="font-size:13px;letter-spacing:-1px; padding-left:15px;">&nbsp;<img src="${pageContext.request.contextPath}/resources/image/imgs/ic_6.gif" width="12" height="11">
                                        <u><strong> 업무 메뉴얼</strong></u> </td>
                                </tr>

                                <tr height=17 >
                                    <td valign=top bgcolor="FAFAFA"  onmouseover="this.style.backgroundColor = 'FAFAFA'" onmouseout="this.style.backgroundColor='FAFAFA'">

                                        <a href="javascript:refreshII('1001','1')">&nbsp;&nbsp;&nbsp;<IMG SRC="${pageContext.request.contextPath}/resources/image/imgs/ICO00007.gif" border=0><IMG SRC="${pageContext.request.contextPath}/resources/image/imgs/ICO00001.gif" border=0> [ GTU솔루션                                                                                                                                                                                                                            </a>
                                        <a href="javascript:wrc_c('1001','GTU솔루션                                                                                                                                                                                               ')"><IMG SRC="${pageContext.request.contextPath}/resources/image/imgs/ICO00010.gif"   border=0> </a>
                                        ]
                                    </td>
                                </tr>


                                <!--
                                                                        <tr height=17 >
                                                                            <td valign=top bgcolor="FAFAFA"  onmouseover="this.style.backgroundColor = 'FAFAFA'" onmouseout="this.style.backgroundColor='FAFAFA'">
                                                                                <a href="javascript:refresh_CPLB_DI_16_13('<=RS1("WRK_C")%>','<=RS1("WRK_D")%>')">
                                                                                &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                                                                                <img src="../../../imgs/ic_1.gif" width="10" height="10" border="0"> <=RS1("WRK_N")%>
                                                                                </a></td>
                                                                        </tr>
                                -->

                                <tr height=17 >
                                    <td valign=top bgcolor="FAFAFA"  onmouseover="this.style.backgroundColor = 'FAFAFA'" onmouseout="this.style.backgroundColor='FAFAFA'">

                                        <a href="javascript:refreshII('10011001','2')">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<IMG SRC="${pageContext.request.contextPath}/resources/image/imgs/ICO00007.gif" border=0><IMG SRC="${pageContext.request.contextPath}/resources/image/imgs/ICO00001.gif" border=0> [ 인사총무                                                                                                                                                                                                                             </a>
                                        <a href="javascript:wrc_c('10011001','인사총무                                                                                                                                                                                                ')"><IMG SRC="${pageContext.request.contextPath}/resources/image/imgs/ICO00010.gif"   border=0> </a>
                                        ]
                                    </td>
                                </tr>


                                <!--
                                                                        <tr height=17 >
                                                                            <td valign=top bgcolor="FAFAFA"  onmouseover="this.style.backgroundColor = 'FAFAFA'" onmouseout="this.style.backgroundColor='FAFAFA'">
                                                                                <a href="javascript:refresh_CPLB_DI_16_13('<=RS1("WRK_C")%>','<=RS1("WRK_D")%>')">
                                                                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                                                                                <img src="../../../imgs/ic_1.gif" width="10" height="10" border="0"> <=RS1("WRK_N")%>
                                                                                </a></td>
                                                                        </tr>
                                -->

                            </table>

                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</div>


<div class="floatLeft" style="width: 90%; align-content: center;">
    <table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="ffffff">
        <tr>
            <td height="50" align="center">&nbsp;</td>
        </tr>
        <tr>
            <td height="258" align="center" valign="top"><a href="CPLB_DI_16_13.asp"><img src="${pageContext.request.contextPath}/resources/image/IMG00002.GIF"  border=0></a></td>
        </tr>
        <tr>
            <td align="center" valign="top"><table align="center">
                <tr>
                    <td> <p><FONT COLOR=#333333> <br>
                        &nbsp;&nbsp;&nbsp;* 좌측 탐색 창에서 업무를 선택하시면 상세내용을 보실 수 있습니다. <br>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;조회 화면에서 신규 등록 및 수정, 삭제가 가능합니다. <br>
                        <br>
                        &nbsp;&nbsp;&nbsp;* <U>이미지를 클릭하시면</U> <b>신규등록</b>을 하실 수 있습니다. </font></p>
                    </td>
                </tr>
            </table>
            </td>
        </tr>
    </table>
</div>
<form name=frm action="CompanyLibrary.asp" method=post >
    <input type=hidden   name=PV_ACT_C value="Z">
</form>

</body>

</html>
