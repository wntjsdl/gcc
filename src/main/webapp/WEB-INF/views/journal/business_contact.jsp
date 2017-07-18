<%--
  Created by IntelliJ IDEA.
  User: Kang
  Date: 2017-07-18
  Time: 오전 10:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>업무연락</title>
</head>
<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" onLoad="load()">
<form method="POST" name="new_form" action="wd_cm_lst.asp">
    <INPUT TYPE=HIDDEN NAME="txtFILE" VALUE="WD_CM_LST.asp">

    <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
            <td height="14" background="${pageContext.request.contextPath}/resources/image/imgs/ln01.gif"></td>
        </tr>
        <tr>
            <td height="27" align="center" >
                <table width="897" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                        <td>
                            <img src="${pageContext.request.contextPath}/resources/image/imgs/img_work/ic.gif" width="37" height="27" align="absmiddle">업무일지 &gt; <font color="3366CC"><strong>업무연락</strong></font>
                        </td>
                        <td align="right">

                            <img src="${pageContext.request.contextPath}/resources/image/imgs/ic_3.gif" width="12" height="15" align="absmiddle">
                            <a href="/hw_wd/wd_ed/WD_ED_NEW.asp">업무일지작성</a> |
                            <a href="/hw_wd/wd_ms/WD_MS_viw.asp">보고한업무일지</a> |
                            <a href="/hw_wd/wd_cs/WD_cs_viw.asp">보고받은업무일지</a> |
                            <a href="/hw_wd/wd_EV/WD_EV_FRA.asp">보고선설정</a> |
                            <a href="/hw_wd/wd_cm/WD_CM_LST.asp">업무연락</a>

                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td height="1" align="center"><img src="${pageContext.request.contextPath}/resources/image/imgs/ln02.gif" ></td>
        </tr>
        <tr>
            <td height="10" ></td>
        </tr>
    </table>

    <!--ceo 요청 탑 10 버튼 클릭시 끝-->
    <table width="897" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
            <td width="130" height="40">Total : 3 건</td>
            <td align="center">
                <img src="${pageContext.request.contextPath}/resources/image/imgs/bt_ceo.gif" border="0" align="absmiddle" style="cursor:hand" onClick="top10();" title="'대표이사' 직급자가 요청한 업무내역 탑 10을 표시합니다.">
            </td>
            <td align="right">
                <select name="sel_send_receive" onChange="new_form.submit();">
                    <option value="y">내가 요청받은 목록
                    <option value="i" >내가 요청한 목록
                </select>
            </td>
        </tr>

        <tr>
            <td colspan="3" valign="top">
                <table width="100%" border="0" cellspacing="1" cellpadding="0">
                    <tr>
                        <td height="2" colspan="11" bgcolor="81B1E2"></td>
                    </tr>
                    <tr>
                        <td width="5%" height="24" align="center"  bgcolor="E3EEF8" >

                            중요도

                        </td>
                        <td width="2%" align="center"  bgcolor="E3EEF8" >S</td>
                        <td width="2%" align="center"  bgcolor="E3EEF8" >R</td>
                        <td width="8%" align="center"  bgcolor="E3EEF8">상대방</td>
                        <td width="8%" align="center"  bgcolor="E3EEF8">작성일</td>

                        <td width="8%" align="center"  bgcolor="E3EEF8">요청자(S)</td>
                        <td width="9%" align="center" bgcolor="E3EEF8">요청자 부서</td>
                        <td width="9%" align="center" bgcolor="E3EEF8">수행자(R)</td>

                        <td bgcolor="E3EEF8" style="padding-left:8pt">업무연락 </td>
                        <td width="%" align="center" bgcolor="E3EEF8">첨부 </td>
                        <td width="8%" align="center" bgcolor="E3EEF8">상태</td>
                    </tr>


                    <tr onMouseOver=this.style.backgroundColor='#EFEFEF' onMouseOut=this.style.backgroundColor=''>

                        <td height="24" align="center">1</td>

                        <td height="24" align="center" bgcolor="#FF0000">&nbsp;</td>
                        <td height="24" align="center">&nbsp;</td>

                        <td height="24" align="center">읽음</td>


                        <td align="center">2017/05/04</td>

                        <td align="center">구상복</td>
                        <td align="center">임원</td>
                        <td align="center">강주선</td>


                        <td align="left" style="padding-left:8pt">
                            <a href="../wd_cm/wd_cm_dip.asp?vDOC_C=201705040001&sel_send_receive=">GTU솔루션의 그룹웨어인 "Collab...</a>
                        </td>
                        <td align="center">

                        </td>
                        <td align="center">
                            완료
                        </td>
                    </tr>
                    <tr>
                        <td height="1" colspan="11" align="center" bgcolor="#DFDFDF"></td>
                    </tr>

                    <tr onMouseOver=this.style.backgroundColor='#EFEFEF' onMouseOut=this.style.backgroundColor=''>

                        <td height="24" align="center">6</td>

                        <td height="24" align="center">&nbsp;</td>
                        <td height="24" align="center" bgcolor="#FF0000">&nbsp;</td>

                        <td height="24" align="center">읽음</td>


                        <td align="center">2017/05/15</td>

                        <td align="center">구상복</td>
                        <td align="center">임원</td>
                        <td align="center">강주선</td>


                        <td align="left" style="padding-left:8pt">
                            <a href="../wd_cm/wd_cm_dip.asp?vDOC_C=201705150001&sel_send_receive=">주선 씨!

                                내일 오후에 에센시아 ...</a>
                        </td>
                        <td align="center">

                        </td>
                        <td align="center">
                            완료
                        </td>
                    </tr>
                    <tr>
                        <td height="1" colspan="11" align="center" bgcolor="#DFDFDF"></td>
                    </tr>

                    <tr onMouseOver=this.style.backgroundColor='#EFEFEF' onMouseOut=this.style.backgroundColor=''>

                        <td height="24" align="center">10</td>

                        <td height="24" align="center">&nbsp;</td>
                        <td height="24" align="center" bgcolor="#FF0000">&nbsp;</td>

                        <td height="24" align="center">읽음</td>


                        <td align="center">2017/05/19</td>

                        <td align="center">구상복</td>
                        <td align="center">임원</td>
                        <td align="center">강주선</td>


                        <td align="left" style="padding-left:8pt">
                            <a href="../wd_cm/wd_cm_dip.asp?vDOC_C=201705190001&sel_send_receive=">주선 씨!

                                오늘 오후2시에 진행될...</a>
                        </td>
                        <td align="center">

                        </td>
                        <td align="center">
                            준비
                        </td>
                    </tr>
                    <tr>
                        <td height="1" colspan="11" align="center" bgcolor="#DFDFDF"></td>
                    </tr>

                    <INPUT TYPE=hidden NAME="txt_cnt" VALUE="3">


                    <tr>
                        <td height="5" colspan="11" bgcolor="E3EEF8"></td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td height="28" colspan="3" align="right">
                <img src="${pageContext.request.contextPath}/resources/image/imgs/bt_gisi.gif" width="127" height="21" border="0" align="absmiddle" onClick="gowrite()" style="cursor:hand">
            </td>
        </tr>
        <tr align="center">
            <td height="40" colspan="3">
                상 태 :
                <select name="sel_dst_g" width="300">
                    <option value="">전체
                    <option value="a" >준비
                    <option value="b" >진행
                    <option value="c" >완료
                    <option value="d" >삭제
                </select>
                <input type=radio name=opt_search value="DEP_T" >부서
                <input type=radio name=opt_search value="EMP_T" checked>이름
                <input type=radio name=opt_search value="CMD_T" >업무연락
                <input type="text" name="SearchString"  value="" class="box">
                <img src="${pageContext.request.contextPath}/resources/image/imgs/bt_sear.gif" width="59" height="21"  style="cursor:hand" onclick="Search_f()" align="absmiddle">
            </td>
        </tr>
        <tr>
            <td height="150" colspan="3" valign="top">&nbsp; </td>
        </tr>
    </table>

    <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
            <td height="15" ></td>
        </tr>
        <tr>
            <td height="1" background="${pageContext.request.contextPath}/resources/image/imgs/ln02.gif"></td>
        </tr>
    </table>

</form>
</body>

</html>
