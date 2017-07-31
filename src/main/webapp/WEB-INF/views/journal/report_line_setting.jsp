<%--
  Created by IntelliJ IDEA.
  User: Kang
  Date: 2017-07-18
  Time: 오전 10:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>보고선 설정</title>
</head>
<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<table width="921px" border="0" cellspacing="0" cellpadding="0" align="center">
    <tr>
        <td height="14" background="${pageContext.request.contextPath}/resources/image/imgs/ln01.gif"></td>
    </tr>

    <tr>
        <td height="27" align="center">

            <table width="897px" border="0" cellspacing="0" cellpadding="0">
                <tr>
                    <td><img src="${pageContext.request.contextPath}/resources/image/imgs/img_work/ic.gif" width="37"
                             height="27" align="absmiddle">
                        업무일지 &gt; <font color="3366CC"><strong>보고선 설정</strong></font></td>
                    <td align="right">&nbsp;</td>
                </tr>
            </table>

        </td>
    </tr>

    <tr>
        <td height="1" align="center"><img src="${pageContext.request.contextPath}/resources/image/imgs/ln02.gif"></td>
    </tr>
    <tr>
        <td height="10"></td>
    </tr>
</table>
<br>

<form name="new_line" action="WD_EV_LIR.asp" method="post" target="left_sub2">

    <table width="50%" border="0" cellpadding="0" cellspacing="0">
        <tr>
            <td height="2" bgcolor="81B1E2"></td>
        </tr>

        <tr>
            <td height="30" align="center" bgcolor="E3EEF8">
                <table width="96%" height="21" border="0" cellpadding="0" cellspacing="0">

                    <tr>
                        <td width="53%">※ 보고선명칭
                            <input type="text" name="New_name" class=box size="30">
                            </td>
                        <td width="22%" align="center">※ 확인자
                            <select name="decision_num">
                                <option value="1"> 1</option>
                                <option value="2"> 2</option>
                                <option value="3"> 3</option>
                                <option value="4"> 4</option>
                                <option value="5"> 5</option>
                                <option value="6"> 6</option>
                                <option value="7"> 7</option>
                                <option value="8"> 8</option>
                                <option value="9"> 9</option>
                            </select>명</td>
                        <td align="center">
                            <img src="${pageContext.request.contextPath}/resources/image/imgs/bt_02.gif" width="131"
                                 height="21" border="0" style="cursor:hand" onClick="Check()"></td>
                    </tr>
                    <tr>
                        <td colspan="3">

                            <div class="col-lg-6">
                                <table width="100%">
                                    <tr>
                                        <td height="2" bgcolor="81B1E2"></td>
                                    </tr>
                                    <tr>
                                        <td height="30" align="center" bgcolor="E3EEF8">
                                            <div class="boldText">사내 조직도</div>
                                        </td>
                                    </tr>
                                    <TR>
                                        <TD valign="top">
                                            <TABLE width="80%" border="0" cellpadding="0" cellspacing="3"
                                                   align="center">
                                                <tr>
                                                    <td height="10"></td>
                                                </tr>
                                                <TR bgcolor="#FAFAFA" onmouseout="this.style.background='FAFAFA'"
                                                    onmouseover="this.style.background='F7F7F7'">
                                                    <TD align="left">
                                                        <a href="WD_EV_LIL.asp?PartCode=010&PartLevel=1" target="_self">
                                                            <img src="${pageContext.request.contextPath}/resources/image/folderc2.gif"
                                                                 border=0 align=absmiddle>

                                                            <font color="#000000">임원</font></a></font>
                                                    </TD>
                                                </TR>
                                                <TR bgcolor="#FAFAFA" onmouseout="this.style.background='FAFAFA'"
                                                    onmouseover="this.style.background='F7F7F7'">
                                                    <TD align="left">
                                                        <a href="WD_EV_LIL.asp?PartCode=020&PartLevel=1" target="_self">
                                                            <img src="${pageContext.request.contextPath}/resources/image/folderc2.gif"
                                                                 border=0 align=absmiddle>

                                                            <font color="#000000">솔루션사업부</font></a></font>
                                                    </TD>
                                                </TR>
                                                <TR bgcolor="#FAFAFA" onmouseout="this.style.background='FAFAFA'"
                                                    onmouseover="this.style.background='F7F7F7'">
                                                    <TD align="left">
                                                        <a href="WD_EV_LIL.asp?PartCode=030&PartLevel=1" target="_self">
                                                            <img src="${pageContext.request.contextPath}/resources/image/folderc2.gif"
                                                                 border=0 align=absmiddle>

                                                            <font color="#000000">컨설팅사업부</font></a></font>
                                                    </TD>
                                                </TR>
                                                <TR bgcolor="#FAFAFA" bgcolor="#FAFAFA"
                                                    onmouseout="this.style.background='FAFAFA'"
                                                    onmouseover="this.style.background='F7F7F7'">
                                                    <TD align="left">
                                                        <a href="WD_EV_LIL.asp?PartCode=040&PartLevel=1" target="_self">
                                                            <img src="${pageContext.request.contextPath}/resources/image/folderc2.gif"
                                                                 border=0 align=absmiddle>

                                                            <font color="#000000">연구전담부서</font></a></font>
                                                    </TD>
                                                </TR>
                                            </TABLE>
                                        </TD>
                                    </TR>
                                </table>
                            </div>

                            <div class="col-lg-6">
                                <table width="100%">
                                    <tr>
                                        <td height="2" bgcolor="81B1E2"></td>
                                    </tr>
                                    <tr>
                                        <td height="30" align="center" bgcolor="E3EEF8">
                                            <div class="boldText">보고선 지정현황</div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <TD valign="top" bgcolor="#FAFAFA" style="padding:10px"><BR>
                                            보고선을 등록하려면 <br>
                                            <B>고선명칭, 확인자수</B>를 지정한 후<b>
                                                <font color="3366CC"><br>보고선 지정신규 등록버튼</font></b>을 클릭하세요.
                                        </td>
                                        <form name="new_line" method="post">
                                            <input type="hidden" name="line_gu" value="">
                                            <input type="hidden" name="line_name" value="">
                                            <input type="hidden" name="line_owner" value="">
                                            <input type="hidden" name="work_chk" value="">
                                            <input type="hidden" name="decision_no" value="" onchange="check()">
                                        </form>
                                    </tr>
                                </table>
                            </div>
                        </td>
                    </tr>
                </table>
            </td>
            <td width="250" valign="top">
                <div class="homeCal">
                    <TABLE border="0" cellpadding="0" cellspacing="0" width="100%">


                        <TR onmouseout="this.style.background='white'" onmouseover="this.style.background='DFDCD7'">
                            <TD align="left">
                                <a href="javascript:addNew('temp')">
                                    <img src="${pageContext.request.contextPath}/resources/image/foldere2.gif" border=0 align=absmiddle>
                                    temp</a>
                            </TD>
                        </TR>


                        <tr onmouseout="this.style.background='white'" onmouseover="this.style.background='DFDCD7'">
                            <td >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <img src="${pageContext.request.contextPath}/resources/image/user.gif" border=0>&nbsp;
                                (상무이사)&nbsp;&nbsp;장대호
                            </td>
                        </tr>

                        <tr onmouseout="this.style.background='white'" onmouseover="this.style.background='DFDCD7'">
                            <td >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <img src="${pageContext.request.contextPath}/resources/image/user.gif" border=0>&nbsp;
                                (대표이사)&nbsp;&nbsp;구상복
                            </td>
                        </tr>

                    </table>

                </div>
            </td>

        </tr>
    </table>


</form>

</body>

</html>
