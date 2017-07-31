<%--
  Created by IntelliJ IDEA.
  User: Kang
  Date: 2017-07-18
  Time: 오후 3:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>개인주소록</title>
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
        <h3>| 주소록 |</h3> 전체 6명의 주소가 있습니다.
    </div>
    <br>

    <table cellpadding=0 cellspacing=0 width=85%>
        <form name="search" action="/mail/personal/addressbook/new_address.neo" method="get"
              onsubmit="javascript:return searchchk();">
            <input type=hidden name="loca" value="">
            <input type=hidden name="action" value="search">
            <tr>
                <td valign=bottom><img src="${pageContext.request.contextPath}/resources/image/address_nav.gif"
                                       usemap="#MapAddr" hidefocus width=423 height=21></td>
                <td align=right>
                    <select name="sel2" style="width:60px;" class=select>
                        <option value="aname" selected>이름
                        <option value="email">주소
                        <option value="phone">연락처
                        <option value="fold">기타사항</option>
                    </select>
                    <input type=text name="search" value="" class=input>
                    <input type=image src="${pageContext.request.contextPath}/resources/image/search.gif"
                           align=absmiddle></TD>
            </TR>
            <tr>
                <td colspan=2 bgcolor=#37AB9E height=3></td>
            </tr>
        </form>
    </table>

    <map name="MapAddr">
        <area shape="rect" coords="2,   2,  40, 21" href="#">
        <area shape="rect" coords="44,  2,  62, 21" href="#">
        <area shape="rect" coords="66,  2,  84, 21" href="#">
        <area shape="rect" coords="88,  2, 106, 21" href="#">
        <area shape="rect" coords="110, 2, 128, 21" href="#">
        <area shape="rect" coords="132, 2, 150, 21" href="#">
        <area shape="rect" coords="154, 2, 172, 21" href="#">
        <area shape="rect" coords="176, 2, 194, 21" href="#">
        <area shape="rect" coords="198, 2, 216, 21" href="#">
        <area shape="rect" coords="220, 2, 238, 21" href="#">
        <area shape="rect" coords="242, 2, 260, 21" href="#">
        <area shape="rect" coords="264, 2, 282, 21" href="#">
        <area shape="rect" coords="286, 2, 304, 21" href="#">
        <area shape="rect" coords="308, 2, 326, 21" href="#">
        <area shape="rect" coords="330, 2, 348, 21" href="#">
        <area shape="rect" coords="352, 2, 385, 21" href="#">
        <area shape="rect" coords="390, 2, 420, 21" href="#">
    </map>

    <table border=0 width=85%>
        <tr>
            <td width=250 valign=top>

                <!-- FORM 그룹메일 발송 //-->


                <table cellspacing=0 cellpadding=0 width=100%>
                    <form name="group" method="post" action="address_proc.neo">
                        <input type=hidden name="act" value="group_send">
                        <tr>
                            <td height=30><a href="javascript:sendchk();"><img
                                    src="${pageContext.request.contextPath}/resources/image/button_sendmail.gif" NAME="selectAll0" align=absmiddle></a>&nbsp;&nbsp;</td>
                        </tr>
                    </form>
                </table>

                <table cellpadding=1 cellspacing=0 width=100% style="border:1px solid #B9BEC1;">
                    <tr><td colspan=3 height=30 align=center bgcolor=#DDE2E5><b>그룹</b></td></tr>
                    <tr id="msg_all">
                        <td width=15><input type=checkbox name="check_all" id="check_all" value="ALL"></td>
                        <td><a href="/mail/personal/publicaddressbook/new_address.neo"><img src="${pageContext.request.contextPath}/resources/image/i_group.gif"
                                                                                            border=0 align=absmiddle> <font color=#0067F4>전체 (6)</font></a></td>
                        <td align=center>-</td>
                    </tr>
                    <tr id="msg_default">
                        <td><input type=checkbox name="check[]" id="check_default" value="DEFAULT"></td>
                        <td><a href="/mail/personal/publicaddressbook/new_address.neo?groupname=%B1%E2%BA%BB"><img src="${pageContext.request.contextPath}/resources/image/i_group.gif"
                                                                                                                   border=0 align=absmiddle> 기본 (1)</a></td>
                        <td align=center>-</td>
                    </tr>

                    <tr id="msg0">
                        <td><input type=checkbox name="check[]" value="사내" id="check0" onClick="rowUpdate('0');"></td>
                        <td nowrap><a href="/mail/personal/publicaddressbook/new_address.neo?groupname=%BB%E7%B3%BB" ><img
                                src="${pageContext.request.contextPath}/resources/image/i_group.gif" border=0 align=absmiddle>
                            사내 (5)</a></td>
                        <td align=center nowrap>&nbsp;&nbsp;<a href="javascript:repair('637','사내');"><img src="${pageContext.request.contextPath}/resources/image/g_edit.gif"></a>
                            <a href="javascript:del_group('5', '사내','637');"><img src="${pageContext.request.contextPath}/resources/image/g_del.gif"></a>&nbsp;&nbsp;</td>
                    </tr>

                    </form>
                </table>

                <!-- FORM 그룹메일 발송 //-->


                <!-- FORM 그룹 추가 //-->

                <table cellspacing=0 cellpadding=2 width=100%>
                    <form name="groupadd" action="address_proc.neo" method=post target="addrhiddenframe">
                        <input type=hidden name="act" value="add_group">
                        <tr>
                            <td height=10></td>
                        </tr>
                        <tr>
                            <td align=right><b>그룹</b> <input type=text name="group_name" class=input
                                                             style="width:120px;" onKeyUp="init();" onChange="init();"
                                                             maxlenght=30>
                                <a href="javascript:grpchk();"><img
                                        src="${pageContext.request.contextPath}/resources/image/button_add_cl.gif"
                                        name=add
                                        align=absmiddle></a>&nbsp;&nbsp;
                            </td>
                        </tr>
                        <tr>
                            <td height=10></td>
                        </tr>
                    </form>
                </table>

                <!-- FORM 그룹 추가 //-->


            </td>
            <td width=5></td>
            <td valign=top>


                <!-- FORM 삭제,그룹변경,메일보내기 //-->

                <table cellspacing=0 cellpadding=0 width=100%>
                    <form name="form" method="post" action="address_proc.neo">
                        <input type=hidden name="act">
                        <input type=hidden name="loca" value="">
                        <input type=hidden name="page" value="1">
                        <input type=hidden name="search" value="">
                        <input type=hidden name="rename_group">

                        <input type=hidden name="address_ok">
                        <input type=hidden name="goto">
                        <input type=hidden name="gotovalue">
                        <input type=hidden name="groupname" value="">

                        <tr height=30>
                            <td>
                                <table cellpadding=0 cellspacing=0 width=100%>
                                    <tr>
                                        <td>
                                            <a href="javascript:selectall('');"><img
                                                    src="${pageContext.request.contextPath}/resources/image/select_all.gif"
                                                    NAME="selectAll0" align=absmiddle></a>
                                            <a href="javascript:delete_chk();"><img
                                                    src="${pageContext.request.contextPath}/resources/image/button_del.gif"
                                                    NAME="delete_button0" align=absmiddle></a>
                                            <a href="javascript:send_mail();"><img
                                                    src="${pageContext.request.contextPath}/resources/image/button_sendmail.gif"
                                                    NAME="sendmail0" align=absmiddle></a>

                                            &nbsp;&nbsp;

                                            <select name="regroup_0" onchange="move_group_change(0)">
                                                <option value="기본">기본
                                                </option>
                                            </select>그룹으로
                                            <a href="javascript:move_group(0)"><img
                                                    src="${pageContext.request.contextPath}/resources/image/button_regroup.gif"
                                                    align=absmiddle></a>
                                        </td>
                                        <td align=right>
                                            <a href="javascript:open_newwin('adress_add_back.neo?loca=&name=&email=&goto=adress.neo&groupname=', '', 420, 270);"><img
                                                    src="${pageContext.request.contextPath}/resources/image/button_add.gif"></a>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </form>
                </table>


                <table cellpadding=1 cellspacing=0 width=100% style="border:1px solid #B9BEC1;">
                    <tr height=30 bgcolor=#DDE2E5>
                        <td width=30 align=center nowrap>&nbsp;</td>
                        <td width=100><a
                                href="/mail/personal/addressbook/new_address.neo?loca=&groupname=&page=1&sortname1=&sortname2=&order=name&ordertype=DESC"
                                hidefocus><b>이름</b>▼</a></td>
                        <td nowrap><a
                                href="/mail/personal/addressbook/new_address.neo?loca=&groupname=&page=1&sortname1=&sortname2=&order=email&ordertype=ASC"
                                hidefocus><b>메일주소</b>▼</a></td>
                        <td nowrap><b>기타사항</b>&nbsp;</td>
                        <td width=80 align=center nowrap><b>관리</b></td>
                    </tr>
                    <tr>
                        <td colspan=6 bgcolor=#D2CEC5></td>
                    </tr>
                    <tr id="msg66723" onMouseOver="movr(this);" onMouseOut="mout(this);" height=24>
                        <td align=center nowrap><input type=checkbox name=check[] value='66723'
                                                       id='check66723' onClick="rowUpdate('66723');"></td>
                        <td nowrap><a href="javascript:javascript:ToggleMenu(66723);">관리자</a></td>
                        <td nowrap><a href="javascript:adress_location('admin@dosang.kr','');" hidefocus>admin@dosang.kr</a>
                        </td>
                        <td nowrap>&nbsp;</td>
                        <td align=center nowrap><a
                                href="javascript:open_newwin('adress_repair.neo?pk_id=66723&loca=&groupname=&page=1','', 420, 270);"
                                hidefocus><img src='${pageContext.request.contextPath}/resources/image/sch_mod.gif'></a>
                            <!--a href='address_proc.neo?act=del&check[]=66723&loca=&groupname=&page=1&search='
                             onClick='javascript:return msgchk2();' hidefocus><img
                             src='../../styles/sky/images/sch_del.gif'></a//--></td>
                    </tr>
                    <tr ID='more_info_66723' style='display:none' height=120 bgcolor=F5F5F5>
                        <td style='border-top:1px solid slategray;border-bottom:1px solid slategray'>&nbsp;</td>
                        <td style='border-top:1px solid slategray;border-bottom:1px solid slategray' colspan=2>
                            <b><span style='cursor:hand;'
                                     onClick="window.open('contacts.neo?pk_id=66723&groupname=&page=1','','width=680,height=450,scrollbars=no,resizable=no,titlebar=no,menubar=no,toolbar=no');"
                                     hidefocus><img
                                    src='${pageContext.request.contextPath}/resources/image/personal_detail_info.gif'
                                    border=0 align=absmiddle> </span><font
                                    color=#0157E5>관리자</font>님의 상세 정보</b>&nbsp;&nbsp;&nbsp;
                            <br><br>
                            연&nbsp;&nbsp;락&nbsp;&nbsp;처 : &nbsp;<br>
                            집&nbsp;&nbsp;전&nbsp;&nbsp;화 : <br>
                            휴&nbsp;&nbsp;대&nbsp;&nbsp;폰 : <br>
                            개인웹페이지 : <a href='' target=_blank><br>
                        </a>
                        </td>
                        <td colspan=2 style='border-top:1px solid slategray;border-bottom:1px solid slategray'>
                            <b>&nbsp;</b><br><br>
                            회&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;사 : <br>
                            회사&nbsp;전화 : <br>
                            회사&nbsp;팩스 : <br>
                            회사웹페이지 : <a href='' target=_blank></a><br>
                        </td>
                    </tr>
                    <tr>
                        <td colspan=7 bgcolor=#ECECEC></td>
                    </tr>
                    <tr id="msg66725" onMouseOver="movr(this);" onMouseOut="mout(this);" height=24>
                        <td align=center nowrap><input type=checkbox name=check[] value='66725'
                                                       id='check66725' onClick="rowUpdate('66725');"></td>
                        <td nowrap><a href="javascript:javascript:ToggleMenu(66725);">구상복</a></td>
                        <td nowrap><a href="javascript:adress_location('dream@dosang.kr','');" hidefocus>dream@dosang.kr</a>
                        </td>
                        <td nowrap>&nbsp;</td>
                        <td align=center nowrap><a
                                href="javascript:open_newwin('adress_repair.neo?pk_id=66725&loca=&groupname=&page=1','', 420, 270);"
                                hidefocus><img src='${pageContext.request.contextPath}/resources/image/sch_mod.gif'></a>
                            <!--a href='address_proc.neo?act=del&check[]=66725&loca=&groupname=&page=1&search='
                             onClick='javascript:return msgchk2();' hidefocus><img
                             src='../../styles/sky/images/sch_del.gif'></a//--></td>
                    </tr>
                    <tr ID='more_info_66725' style='display:none' height=120 bgcolor=F5F5F5>
                        <td style='border-top:1px solid slategray;border-bottom:1px solid slategray'>&nbsp;</td>
                        <td style='border-top:1px solid slategray;border-bottom:1px solid slategray' colspan=2>
                            <b><span style='cursor:hand;'
                                     onClick="window.open('contacts.neo?pk_id=66725&groupname=&page=1','','width=680,height=450,scrollbars=no,resizable=no,titlebar=no,menubar=no,toolbar=no');"
                                     hidefocus><img
                                    src='${pageContext.request.contextPath}/resources/image/personal_detail_info.gif'
                                    border=0 align=absmiddle> </a><font
                                    color=#0157E5>구상복</font>님의 상세 정보</span>
                            </b>&nbsp;&nbsp;&nbsp;
                            <br><br>
                            연&nbsp;&nbsp;락&nbsp;&nbsp;처 : &nbsp;<br>
                            집&nbsp;&nbsp;전&nbsp;&nbsp;화 : <br>
                            휴&nbsp;&nbsp;대&nbsp;&nbsp;폰 : <br>
                            개인웹페이지 : <a href='' target=_blank><br>
                        </a>
                        </td>
                        <td colspan=2 style='border-top:1px solid slategray;border-bottom:1px solid slategray'>
                            <b>&nbsp;</b><br><br>
                            회&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;사 : <br>
                            회사&nbsp;전화 : <br>
                            회사&nbsp;팩스 : <br>
                            회사웹페이지 : <a href='' target=_blank></a><br>
                        </td>
                    </tr>
                    <tr>
                        <td colspan=7 bgcolor=#ECECEC></td>
                    </tr>
                    <tr id="msg66722" onMouseOver="movr(this);" onMouseOut="mout(this);" height=24>
                        <td align=center nowrap><input type=checkbox name=check[] value='66722'
                                                       id='check66722' onClick="rowUpdate('66722');"></td>
                        <td nowrap><a href="javascript:javascript:ToggleMenu(66722);">김병화</a></td>
                        <td nowrap><a href="javascript:adress_location('kbhwa@dosang.kr','');" hidefocus>kbhwa@dosang.kr</a>
                        </td>
                        <td nowrap>&nbsp;</td>
                        <td align=center nowrap><a
                                href="javascript:open_newwin('adress_repair.neo?pk_id=66722&loca=&groupname=&page=1','', 420, 270);"
                                hidefocus><img src='${pageContext.request.contextPath}/resources/image/sch_mod.gif'></a>
                            <!--a href='address_proc.neo?act=del&check[]=66722&loca=&groupname=&page=1&search='
                             onClick='javascript:return msgchk2();' hidefocus><img
                             src='../../styles/sky/images/sch_del.gif'></a//--></td>
                    </tr>
                    <tr ID='more_info_66722' style='display:none' height=120 bgcolor=F5F5F5>
                        <td style='border-top:1px solid slategray;border-bottom:1px solid slategray'>&nbsp;</td>
                        <td style='border-top:1px solid slategray;border-bottom:1px solid slategray' colspan=2>
                            <b><span style='cursor:hand;'
                                     onClick="window.open('contacts.neo?pk_id=66722&groupname=&page=1','','width=680,height=450,scrollbars=no,resizable=no,titlebar=no,menubar=no,toolbar=no');"
                                     hidefocus><img
                                    src='${pageContext.request.contextPath}/resources/image/personal_detail_info.gif'
                                    border=0 align=absmiddle> </span><font
                                    color=#0157E5>김병화</font>님의 상세 정보</b>&nbsp;&nbsp;&nbsp;
                            <br><br>
                            연&nbsp;&nbsp;락&nbsp;&nbsp;처 : &nbsp;<br>
                            집&nbsp;&nbsp;전&nbsp;&nbsp;화 : <br>
                            휴&nbsp;&nbsp;대&nbsp;&nbsp;폰 : <br>
                            개인웹페이지 : <a href='' target=_blank><br>
                        </a>
                        </td>
                        <td colspan=2 style='border-top:1px solid slategray;border-bottom:1px solid slategray'>
                            <b>&nbsp;</b><br><br>
                            회&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;사 : <br>
                            회사&nbsp;전화 : <br>
                            회사&nbsp;팩스 : <br>
                            회사웹페이지 : <a href='' target=_blank></a><br>
                        </td>
                    </tr>
                    <tr>
                        <td colspan=7 bgcolor=#ECECEC></td>
                    </tr>
                    <tr id="msg66726" onMouseOver="movr(this);" onMouseOut="mout(this);" height=24>
                        <td align=center nowrap><input type=checkbox name=check[] value='66726'
                                                       id='check66726' onClick="rowUpdate('66726');"></td>
                        <td nowrap><a href="javascript:javascript:ToggleMenu(66726);">도완준</a></td>
                        <td nowrap><a href="javascript:adress_location('woanjundo@dosang.kr','');" hidefocus>woanjundo@dosang.kr</a></td>
                        <td nowrap>&nbsp;</td>
                        <td align=center nowrap><a
                                href="javascript:open_newwin('adress_repair.neo?pk_id=66726&loca=&groupname=&page=1','', 420, 270);"
                                hidefocus><img src='${pageContext.request.contextPath}/resources/image/sch_mod.gif'></a>
                            <!--a href='address_proc.neo?act=del&check[]=66726&loca=&groupname=&page=1&search='
                             onClick='javascript:return msgchk2();' hidefocus><img
                             src='../../styles/sky/images/sch_del.gif'></a//--></td>
                    </tr>
                    <tr ID='more_info_66726' style='display:none' height=120 bgcolor=F5F5F5>
                        <td style='border-top:1px solid slategray;border-bottom:1px solid slategray'>&nbsp;</td>
                        <td style='border-top:1px solid slategray;border-bottom:1px solid slategray' colspan=2>
                            <b><span style='cursor:hand;'
                                     onClick="window.open('contacts.neo?pk_id=66726&groupname=&page=1','','width=680,height=450,scrollbars=no,resizable=no,titlebar=no,menubar=no,toolbar=no');"
                                     hidefocus><img
                                    src='${pageContext.request.contextPath}/resources/image/personal_detail_info.gif'
                                    border=0 align=absmiddle> </span><font
                                    color=#0157E5>도완준</font>님의 상세 정보</b>&nbsp;&nbsp;&nbsp;
                            <br><br>
                            연&nbsp;&nbsp;락&nbsp;&nbsp;처 : &nbsp;<br>
                            집&nbsp;&nbsp;전&nbsp;&nbsp;화 : <br>
                            휴&nbsp;&nbsp;대&nbsp;&nbsp;폰 : <br>
                            개인웹페이지 : <a href='' target=_blank><br>
                        </a>
                        </td>
                        <td colspan=2 style='border-top:1px solid slategray;border-bottom:1px solid slategray'>
                            <b>&nbsp;</b><br><br>
                            회&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;사 : <br>
                            회사&nbsp;전화 : <br>
                            회사&nbsp;팩스 : <br>
                            회사웹페이지 : <a href='' target=_blank></a><br>
                        </td>
                    </tr>
                    <tr>
                        <td colspan=7 bgcolor=#ECECEC></td>
                    </tr>
                    <tr id="msg66777" onMouseOver="movr(this);" onMouseOut="mout(this);" height=24>
                        <td align=center nowrap><input type=checkbox name=check[] value='66777'
                                                       id='check66777' onClick="rowUpdate('66777');"></td>
                        <td nowrap><a href="javascript:javascript:ToggleMenu(66777);">이상일</a></td>
                        <td nowrap><a href="javascript:adress_location('sangilee73@dosang.kr','');" hidefocus>sangilee73@dosang.kr</a></td>
                        <td nowrap>&nbsp;</td>
                        <td align=center nowrap><a
                                href="javascript:open_newwin('adress_repair.neo?pk_id=66777&loca=&groupname=&page=1','', 420, 270);"
                                hidefocus><img src='${pageContext.request.contextPath}/resources/image/sch_mod.gif'></a>
                            <!--a href='address_proc.neo?act=del&check[]=66777&loca=&groupname=&page=1&search='
                             onClick='javascript:return msgchk2();' hidefocus><img
                             src='../../styles/sky/images/sch_del.gif'></a//--></td>
                    </tr>
                    <tr ID='more_info_66777' style='display:none' height=120 bgcolor=F5F5F5>
                        <td style='border-top:1px solid slategray;border-bottom:1px solid slategray'>&nbsp;</td>
                        <td style='border-top:1px solid slategray;border-bottom:1px solid slategray' colspan=2>
                            <b><span style='cursor:hand;'
                                     onClick="window.open('contacts.neo?pk_id=66777&groupname=&page=1','','width=680,height=450,scrollbars=no,resizable=no,titlebar=no,menubar=no,toolbar=no');"
                                     hidefocus><img
                                    src='${pageContext.request.contextPath}/resources/image/personal_detail_info.gif'
                                    border=0 align=absmiddle> </span><font
                                    color=#0157E5>이상일</font>님의 상세 정보</b>&nbsp;&nbsp;&nbsp;
                            <br><br>
                            연&nbsp;&nbsp;락&nbsp;&nbsp;처 : &nbsp;<br>
                            집&nbsp;&nbsp;전&nbsp;&nbsp;화 : <br>
                            휴&nbsp;&nbsp;대&nbsp;&nbsp;폰 : <br>
                            개인웹페이지 : <a href='' target=_blank><br>
                        </a>
                        </td>
                        <td colspan=2 style='border-top:1px solid slategray;border-bottom:1px solid slategray'>
                            <b>&nbsp;</b><br><br>
                            회&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;사 : <br>
                            회사&nbsp;전화 : <br>
                            회사&nbsp;팩스 : <br>
                            회사웹페이지 : <a href='' target=_blank></a><br>
                        </td>
                    </tr>
                    <tr>
                        <td colspan=7 bgcolor=#ECECEC></td>
                    </tr>
                    <tr id="msg66724" onMouseOver="movr(this);" onMouseOut="mout(this);" height=24>
                        <td align=center nowrap><input type=checkbox name=check[] value='66724'
                                                       id='check66724' onClick="rowUpdate('66724');"></td>
                        <td nowrap><a href="javascript:javascript:ToggleMenu(66724);">장대호</a></td>
                        <td nowrap><a href="javascript:adress_location('dhchang0@dosang.kr','');" hidefocus>dhchang0@dosang.kr</a></td>
                        <td nowrap>&nbsp;</td>
                        <td align=center nowrap><a
                                href="javascript:open_newwin('adress_repair.neo?pk_id=66724&loca=&groupname=&page=1','', 420, 270);"
                                hidefocus><img src='${pageContext.request.contextPath}/resources/image/sch_mod.gif'></a>
                            <!--a href='address_proc.neo?act=del&check[]=66724&loca=&groupname=&page=1&search='
                             onClick='javascript:return msgchk2();' hidefocus><img
                             src='../../styles/sky/images/sch_del.gif'></a//--></td>
                    </tr>
                    <tr ID='more_info_66724' style='display:none' height=120 bgcolor=F5F5F5>
                        <td style='border-top:1px solid slategray;border-bottom:1px solid slategray'>&nbsp;</td>
                        <td style='border-top:1px solid slategray;border-bottom:1px solid slategray' colspan=2>
                            <b><span style='cursor:hand;'
                                     onClick="window.open('contacts.neo?pk_id=66724&groupname=&page=1','','width=680,height=450,scrollbars=no,resizable=no,titlebar=no,menubar=no,toolbar=no');"
                                     hidefocus><img
                                    src='${pageContext.request.contextPath}/resources/image/personal_detail_info.gif'
                                    border=0 align=absmiddle> </span><font
                                    color=#0157E5>장대호</font>님의 상세 정보</b>&nbsp;&nbsp;&nbsp;
                            <br><br>
                            연&nbsp;&nbsp;락&nbsp;&nbsp;처 : &nbsp;<br>
                            집&nbsp;&nbsp;전&nbsp;&nbsp;화 : <br>
                            휴&nbsp;&nbsp;대&nbsp;&nbsp;폰 : <br>
                            개인웹페이지 : <a href='' target=_blank><br>
                        </a>
                        </td>
                        <td colspan=2 style='border-top:1px solid slategray;border-bottom:1px solid slategray'>
                            <b>&nbsp;</b><br><br>
                            회&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;사 : <br>
                            회사&nbsp;전화 : <br>
                            회사&nbsp;팩스 : <br>
                            회사웹페이지 : <a href='' target=_blank></a><br>
                        </td>
                    </tr>
                    <tr>
                        <td colspan=7 bgcolor=#ECECEC></td>
                    </tr>
                </table>

                <table cellspacing=0 cellpadding=0 width=100%>
                    <tr height=30>
                        <td>
                            <table cellpadding=0 cellspacing=0 width=100%>
                                <tr>
                                    <td>
                                        <a href="javascript:selectall('');"><img
                                                src="${pageContext.request.contextPath}/resources/image/select_all.gif"
                                                NAME="selectAll1" align=absmiddle></a>
                                        <a href="javascript:delete_chk();"><img
                                                src="${pageContext.request.contextPath}/resources/image/button_del.gif"
                                                NAME="delete_button1" align=absmiddle></a>
                                        <a href="javascript:send_mail();"><img
                                                src="${pageContext.request.contextPath}/resources/image/button_sendmail.gif"
                                                NAME="sendmail1" align=absmiddle></a>

                                        &nbsp;&nbsp;

                                        <select name="regroup_1" onchange="move_group_change(1)">
                                            <option value="기본">기본
                                            </option>
                                        </select>그룹으로
                                        <a href="javascript:move_group(1)"><img
                                                src="${pageContext.request.contextPath}/resources/image/button_regroup.gif"
                                                align=absmiddle></a>
                                    </td>
                                    <td align=right>
                                        <a href="javascript:open_newwin('adress_add_back.neo?loca=&name=&email=&goto=adress.neo&groupname=', '', 420, 270);"><img
                                                src="${pageContext.request.contextPath}/resources/image/button_add.gif"></a>
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    </form>
                </table>


                <table cellspacing=0 class=table_w>
                    <tr>
                        <td height=30 align=center>
                            &nbsp;<font color=cc0000>1</font></a>&nbsp; <font
                                style="font-size:7pt;color:silver;">|</font>
                            &nbsp;&nbsp;(<b>1</b>/1 page)
                        </td>
                    </tr>
                </table>

                <!-- FORM 삭제,그룹변경,메일보내기 //-->


                <br>
                <table cellpadding=2 cellspacing=0 width=100%>
                    <tr>
                        <td><img src="${pageContext.request.contextPath}/resources/image/arrow_gray.gif"
                                 align=absmiddle> <b>빠른 주소 추가</b></td>
                        <td align=right><a href="javascript:open_newwin('adress_outlook.neo','',430, 300);"><img
                                src="${pageContext.request.contextPath}/resources/image/button_import_address.gif"></a>
                            <a href="address_output.neo?groupname=&sortname1=&sortname2="><img
                                    src="${pageContext.request.contextPath}/resources/image/button_export_address.gif"></a>
                        </td>
                    </tr>
                </table>

                <table cellpadding=2 cellspacing=0 width=100%>
                    <form name="new" method=post action="address_proc.neo" target="addrhiddenframe">
                        <input type=hidden name="act" value="newadd">
                        <tr>
                            <td colspan=6 height=2 bgcolor=#C5C5C5></td>
                        </tr>
                        <tr align=center bgcolor=#FAFAFA height=25>
                            <td>이름</td>
                            <td>주소 *</td>
                            <td>연락처</td>
                            <td>그룹</td>
                            <td>기타사항</td>
                            <td></td>
                        </tr>
                        <tr>
                            <td colspan=6 height=1 bgcolor=#C5C5C5></td>
                        </tr>
                        <tr align=center height=30>
                            <td><input type=text name="aname" value="" maxlength=30 size=20 class=input
                                       style="width:80px;"></td>
                            <td><input type=text name="email" value="" maxlength='50' size='20' class=input
                                       style="width:100px;"></td>
                            <td><input type=text name="phone" maxlength=50 size=15 class=input style="width:100px;">
                            </td>
                            <td>
                                <select name="sel">
                                    <option value="기본">기본
                                </select>
                            </td>
                            <td><input type=text name="part" maxlength=50 size=15 class=input style="width:100px;"></td>
                            <td><input type=image
                                       src="${pageContext.request.contextPath}/resources/image/button_add_cl.gif"></td>
                        </tr>
                        <tr>
                            <td colspan=6 height=2 bgcolor=#C5C5C5></td>
                        </tr>
                    </form>
                </table>
                <br>
            </td>
        </tr>
    </table>

    </td>
    </tr>
    </table>
</div>

<iframe name="addrhiddenframe" width=0 height=0 hidefocus style="visibility:hidden;"></iframe>

<script>
    <!--
    document.onmousemove = movetitle;
    if (parent.address_group) {
//  parent.address_group.location.reload();
    }
    //-->
</script>


<br>
<table WIDTH=98% cellpadding=0 cellspacing=0>
    <tr>
        <td align="right"></td>
    </tr>
</table>

<script language="javascript">
    <!--
    reload = 0;
    change_top("off", "off", "on", "off", "off", "off", "off");


    function change_top(mail, office, address, webfolder, message, eletter, photo) {
        if (reload == 3) return;

        if (typeof(top.frm_top) != "undefined") {
            if (top.frm_top.address == null) {
                setTimeout('change_top("off","off","on","off","off","off","off");', "500");
                reload++;
            }
            else {
                top.frm_top.mail.src = "styles/sky/images/menu_mail_" + mail + ".gif";
                top.frm_top.office.src = "styles/sky/images/menu_office_" + office + ".gif";
                top.frm_top.address.src = "styles/sky/images/menu_address_" + address + ".gif";
                top.frm_top.webfolder.src = "styles/sky/images/menu_webfolder_" + webfolder + ".gif";
                top.frm_top.message.src = "styles/sky/images/menu_message_" + message + ".gif";

                if (typeof(top.frm_top.eletter) != "undefined") {
                    top.frm_top.eletter.src = "styles/sky/images/menu_eletter_" + eletter + ".gif";
                }
                if (typeof(top.frm_top.photo) != "undefined") {
                    top.frm_top.photo.src = "styles/sky/images/menu_photo_" + photo + ".gif";
                }
            }
        }
    }
    //-->
</script>

</body>

</html>
