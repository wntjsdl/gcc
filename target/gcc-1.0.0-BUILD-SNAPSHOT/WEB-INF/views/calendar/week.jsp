<%--
  Created by IntelliJ IDEA.
  User: Kang
  Date: 2017-07-21
  Time: 오후 2:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>주간일정</title>
</head>
<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">

<div ID="overDiv" STYLE="position:absolute;top:50px;left:100px; visibility:hidden; z-index:2;"></div>
<script LANGUAGE="JavaScript" src="cal_div.js" type="Text/JavaScript"></script>

<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">
    <tr>
        <td height="14" background="${pageContext.request.contextPath}/resources/image/imgs/ln01.gif"></td>
    </tr>
    <tr>
        <td height="27" align="center" >

            <table width="897" border="0" cellspacing="0" cellpadding="0">
                <tr>
                    <td><img src="${pageContext.request.contextPath}/resources/image/imgs/img_diary/ic.gif" width="30" height="27" align="absmiddle">일정관리
                        &gt; <font color="3366CC"><strong>

                            주간일정


                        </strong></font></td>
                    <td align="right"> <img src="${pageContext.request.contextPath}/resources/image/imgs/ic_3.gif" width="12" height="15" align="absmiddle">
                        <font color="3366CC">
                            2017년 7월 21일,   금요일  (음력 5월 28일)</font> |
                        <a href=/openCalMonth.do>월간일정</a> |
                        <a href=/openCalWeek.do>주간일정</a> |
                        <a href=/openCalToday.do>일간일정</a></td>
                </tr>
            </table></td>
    </tr>
    <tr>
        <td height="1" align="center"><img src="${pageContext.request.contextPath}/resources/image/imgs/ln02.gif" ></td>
    </tr>
    <tr>
        <td height="10" ></td>
    </tr>
</table>

<table width="897" border="0" align="center" cellpadding="2" cellspacing="0">
    <tr>
        <td width="45%" height="25" align="left" style="padding-left:10px"><a href="diary.asp?flag=3&d=w&F_Year=2017&F_Month=7&F_Day=14">
            <img src="${pageContext.request.contextPath}/resources/image/imgs/img_diary/ic1.gif" width="13" height="13" border="0" align="absmiddle">
            이전주[7월 14일, 금]</a> | <strong>
            7월 21일, 금 </strong>| <a href="diary.asp?flag=3&d=w&F_Year=2017&F_Month=7&F_Day=28">
            다음주[7월 28일, 금] <img src="${pageContext.request.contextPath}/resources/image/imgs/img_diary/ic2.gif" width="13" height="13" border="0" align="absmiddle" ></a></td>
        <td width="55%" align="right">※ 일자를 클릭하시면 시간대별 상세조회 ,<font color="3366CC">
            <strong>일정을 추가하시려면</strong></font> <img src="${pageContext.request.contextPath}/resources/image/imgs/img_diary/add.gif" width="11" height="11" align="absmiddle">를
            클릭하세요.</td>
    </tr>
</table>
<table width="897" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
        <td valign="top">
            <table width="99%" border="0" cellpadding="0" cellspacing="0" bgcolor="81B1E2">
                <tr>
                    <td  height="30"  style="padding-left:10px; background-color: #81b1e2;"><font color="#FFFFFF">☞ <strong>주간일정 </strong> |
                        2017년 7월 21일,   금요일  (음력 5월 28일) &nbsp;</font></td>
                    <td width="40%" align="right" style="background-color: #81b1e2;"><table width="90%" border="0" cellspacing="2" cellpadding="0">
                        <tr align="center">
                            <td bgcolor="#E6F2FF"><a href=/openCalMonth.do>
                                월간일정</a></td>
                            <td bgcolor="#E6F2FF"><font color="#000000"><a href=/openCalWeek.do>
                                주간일정</a></font></td>
                            <td bgcolor="#E6F2FF"><font color="#000000"><a href=/openCalToday.do>
                                일간일정</a></font>
                            </td>
                        </tr>
                    </table></td>
                </tr>
            </table>
            <table width="99%" border="0" cellspacing="1" cellpadding="0">
                <tr>
                    <td width='15%' height='55' bgcolor='E3EEF8'><div align=center>
                        <a href=diary.asp?d=d&F_Year=2017&F_month=7&F_day=16>	<font face=굴림><span style='font-size:9pt'>7월 16일(일)</span></font></a>&nbsp;       <a href=diary.asp?m=input&sdate=2017-07-21&shour=9> <img src=${pageContext.request.contextPath}/resources/image/imgs/img_diary/add.gif width=11 height=11 border=0 align=absmiddle></a>&nbsp;
                    </div></td>
                    <td width=85% bgcolor=F7F7F7 style=padding-left:8pt>
                        <img src=${pageContext.request.contextPath}/resources/image/imgs/ic_12.gif border=0><img src=${pageContext.request.contextPath}/resources/image/imgs/ic_11.gif border=0><img src=${pageContext.request.contextPath}/resources/image/imgs/ic_12.gif border=0><span style='font-size:9pt'>&nbsp;</span>
                    </td>
                </tr>
                <tr>
                    <td width='15%' height='55' bgcolor='E3EEF8'><div align=center>
                        <a href=diary.asp?d=d&F_Year=2017&F_month=7&F_day=17>	<font face=굴림><span style='font-size:9pt'>7월 17일(월)</span></font></a>&nbsp;       <a href=diary.asp?m=input&sdate=2017-07-21&shour=9> <img src=${pageContext.request.contextPath}/resources/image/imgs/img_diary/add.gif width=11 height=11 border=0 align=absmiddle></a>&nbsp;
                    </div></td>
                    <td width=85% bgcolor=F7F7F7 style=padding-left:8pt>
                        <img src=${pageContext.request.contextPath}/resources/image/imgs/ic_12.gif border=0><img src=${pageContext.request.contextPath}/resources/image/imgs/ic_11.gif border=0> <font face=굴림><span style='font-size:9pt'> 10:00 ~ 12:00<a href=diary.asp?d=d&d=w&m=view&cid=7128  onMouseOver="view('주간업무회의', '10:00 ~ 12:00','주간 업무회의입니다.' );" onMouseOut="noview();">&nbsp;주간업무회의</a></span></font><br>
                        <img src=${pageContext.request.contextPath}/resources/image/imgs/ic_12.gif border=0> <font face=굴림><span style='font-size:9pt'> 10:00 ~ 11:00<a href=diary.asp?d=d&d=w&m=view&cid=7151  onMouseOver="view('주간업무회의', '10:00 ~ 11:00','주간업무회의' );" onMouseOut="noview();">&nbsp;주간업무회의</a></span></font><br>
                    </td>
                </tr>
                <tr>
                    <td width='15%' height='55' bgcolor='E3EEF8'><div align=center>
                        <a href=diary.asp?d=d&F_Year=2017&F_month=7&F_day=18>	<font face=굴림><span style='font-size:9pt'>7월 18일(화)</span></font></a>&nbsp;       <a href=diary.asp?m=input&sdate=2017-07-21&shour=9> <img src=${pageContext.request.contextPath}/resources/image/imgs/img_diary/add.gif width=11 height=11 border=0 align=absmiddle></a>&nbsp;
                    </div></td>
                    <td width=85% bgcolor=F7F7F7 style=padding-left:8pt>
                        <img src=${pageContext.request.contextPath}/resources/image/imgs/ic_12.gif border=0> <font face=굴림><span style='font-size:9pt'>하루종일<a href=diary.asp?d=d&d=w&m=view&cid=7154  onMouseOver="view('장대호(병가)', '하루종일','월요일부터 상태가 좋지않아 월요일 근무가 힘들었는데<br><br>화요일 새벽 온몸이 쑤시면서 상태가 좋지않아 오전 병원에 가서 주사 및 치료 받음.');"  onMouseOut="noview();">&nbsp;장대호(병가)</a></span></font><br>
                        <img src=${pageContext.request.contextPath}/resources/image/imgs/ic_12.gif border=0><img src=${pageContext.request.contextPath}/resources/image/imgs/ic_11.gif border=0><img src=${pageContext.request.contextPath}/resources/image/imgs/ic_12.gif border=0><span style='font-size:9pt'>&nbsp;</span>
                    </td>
                </tr>
                <tr>
                    <td width='15%' height='55' bgcolor='E3EEF8'><div align=center>
                        <a href=diary.asp?d=d&F_Year=2017&F_month=7&F_day=19>	<font face=굴림><span style='font-size:9pt'>7월 19일(수)</span></font></a>&nbsp;       <a href=diary.asp?m=input&sdate=2017-07-21&shour=9> <img src=${pageContext.request.contextPath}/resources/image/imgs/img_diary/add.gif width=11 height=11 border=0 align=absmiddle></a>&nbsp;
                    </div></td>
                    <td width=85% bgcolor=F7F7F7 style=padding-left:8pt>
                        <img src=${pageContext.request.contextPath}/resources/image/imgs/ic_12.gif border=0><img src=${pageContext.request.contextPath}/resources/image/imgs/ic_11.gif border=0><img src=${pageContext.request.contextPath}/resources/image/imgs/ic_12.gif border=0><span style='font-size:9pt'>&nbsp;</span>
                    </td>
                </tr>
                <tr>
                    <td width='15%' height='55' bgcolor='E3EEF8'><div align=center>
                        <a href=diary.asp?d=d&F_Year=2017&F_month=7&F_day=20>	<font face=굴림><span style='font-size:9pt'>7월 20일(목)</span></font></a>&nbsp;       <a href=diary.asp?m=input&sdate=2017-07-21&shour=9> <img src=${pageContext.request.contextPath}/resources/image/imgs/img_diary/add.gif width=11 height=11 border=0 align=absmiddle></a>&nbsp;
                    </div></td>
                    <td width=85% bgcolor=F7F7F7 style=padding-left:8pt>
                        <img src=${pageContext.request.contextPath}/resources/image/imgs/ic_12.gif border=0><img src=${pageContext.request.contextPath}/resources/image/imgs/ic_11.gif border=0><img src=${pageContext.request.contextPath}/resources/image/imgs/ic_12.gif border=0><span style='font-size:9pt'>&nbsp;</span>
                    </td>
                </tr>
                <tr>
                    <td width='15%' height='55' bgcolor='E3EEF8'><div align=center>
                        <a href=diary.asp?d=d&F_Year=2017&F_month=7&F_day=21>	<font face=굴림><span style='font-size:9pt'>7월 21일(금)</span></font></a>&nbsp;       <a href=diary.asp?m=input&sdate=2017-07-21&shour=9> <img src=${pageContext.request.contextPath}/resources/image/imgs/img_diary/add.gif width=11 height=11 border=0 align=absmiddle></a>&nbsp;
                    </div></td>
                    <td width=85% bgcolor=F7F7F7 style=padding-left:8pt>
                        <img src=${pageContext.request.contextPath}/resources/image/imgs/ic_12.gif border=0> <font face=굴림><span style='font-size:9pt'> 10:00 ~ 12:00<a href=diary.asp?d=d&d=w&m=view&cid=7126  onMouseOver="view('기술 교류회', '10:00 ~ 12:00','기술 교류회입니다.' );" onMouseOut="noview();">&nbsp;기술 교류회</a></span></font><br>
                        <img src=${pageContext.request.contextPath}/resources/image/imgs/ic_11.gif border=0><img src=${pageContext.request.contextPath}/resources/image/imgs/ic_12.gif border=0><span style='font-size:9pt'>&nbsp;</span>
                    </td>
                </tr>
                <tr>
                    <td width='15%' height='55' bgcolor='E3EEF8'><div align=center>
                        <a href=diary.asp?d=d&F_Year=2017&F_month=7&F_day=22>	<font face=굴림><span style='font-size:9pt'>7월 22일(토)</span></font></a>&nbsp;       <a href=diary.asp?m=input&sdate=2017-07-21&shour=9> <img src=${pageContext.request.contextPath}/resources/image/imgs/img_diary/add.gif width=11 height=11 border=0 align=absmiddle></a>&nbsp;
                    </div></td>
                    <td width=85% bgcolor=F7F7F7 style=padding-left:8pt>
                        <img src=${pageContext.request.contextPath}/resources/image/imgs/ic_12.gif border=0><img src=${pageContext.request.contextPath}/resources/image/imgs/ic_11.gif border=0><img src=${pageContext.request.contextPath}/resources/image/imgs/ic_12.gif border=0><span style='font-size:9pt'>&nbsp;</span>
                    </td>
                </tr>


            </table>
            <table width="99%" border="0" cellpadding="0" cellspacing="0" bgcolor="81B1E2">
                <tr>
                    <td style="padding-left:10px; bgcolor: #81B1E2;">&nbsp;</td>
                    <td width="40%" align="right" style="bgcolor: #81B1E2;"><table width="90%" border="0" cellspacing="2" cellpadding="0">
                        <tr align="center">
                            <td bgcolor="#E6F2FF"><a href=/openCalMonth.do>
                                월간일정</a></td>
                            <td bgcolor="#E6F2FF"><font color="#000000"><a href=/openCalWeek.do>
                                주간일정</a></font></td>
                            <td bgcolor="#E6F2FF"><font color="#000000"><a href=/openCalToday.do>
                                일간일정</a></font>
                            </td>
                        </tr>
                    </table></td>
                </tr>
            </table></td>
        <td width="220" valign="top">

            <div class="calendarCal">
                <table width="220"  border="0" cellpadding="0" cellspacing="0">

                    <tr>
                        <td height="230" valign="top">


                            <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td><img src="${pageContext.request.contextPath}/resources/image/imgs/img_main/ri_title02.gif"></td>
                                </tr>
                                <tr>
                                    <td align="center">

                                        <table width="90%" border="0" cellpadding="0" cellspacing="0">
                                            <tr>
                                                <td height="10"></td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="textB">
                                                    <a href=diary.asp?flag=4&d=m&F_Year=2017&F_Month=6&F_Day=1>
                                                        <img src="${pageContext.request.contextPath}/resources/image/imgs/img_main/arr_01.gif" border="0"  align="absmiddle"></a>
                                                    <strong>[2017년 7월]</strong>
                                                    <a href=diary.asp?flag=4&d=m&F_Year=2017&F_Month=8&F_Day=1>
                                                        <img src="${pageContext.request.contextPath}/resources/image/imgs/img_main/arr_02.gif" border="0" align="absmiddle"></a></td>
                                            </tr>
                                        </table></td>
                                </tr>
                                <tr>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td height="134" align="center">

                                        <table border="0" cellpadding="1" cellspacing="1" bgcolor="#FFFFFF">
                                            <tr bgcolor="96BDE7" height="25">
                                                <td width="25"><div align="center"><font color="#FFFFFF">일</font></div></td>
                                                <td width="25"><div align="center"><font color="#FFFFFF">월</font></div></td>
                                                <td width="25"><div align="center"><font color="#FFFFFF">화</font></div></td>
                                                <td width="25"><div align="center"><font color="#FFFFFF">수</font></div></td>
                                                <td width="25"><div align="center"><font color="#FFFFFF">목</font></div></td>
                                                <td width="25"><div align="center"><font color="#FFFFFF">금</font></div></td>
                                                <td width="25"><div align="center"><font color="#FFFFFF">토111</font></div></td>
                                            </tr>
                                            <tr align=center bgcolor=#F6F6F6 height='25'>
                                                <td bgcolor=#ffffff>&nbsp;
                                                </td><td bgcolor=#ffffff>&nbsp;
                                            </td><td bgcolor=#ffffff>&nbsp;
                                            </td><td bgcolor=#ffffff>&nbsp;
                                            </td><td bgcolor=#ffffff>&nbsp;
                                            </td><td bgcolor=#ffffff>&nbsp;
                                            </td><td><a href=diary.asp?flag=2&d=d&F_Year=2017&F_Month=7&F_Day=1>1</a><br>
                                            </td></tr> <tr align=center bgcolor=#F6F6F6 height='25'>
                                            <td><a href=diary.asp?flag=2&d=d&F_Year=2017&F_Month=7&F_Day=2 ><font color=#FF6633>2</font></a><br>
                                            </td><td><a href=diary.asp?flag=2&d=d&F_Year=2017&F_Month=7&F_Day=3>3</a><br>
                                        </td><td><a href=diary.asp?flag=2&d=d&F_Year=2017&F_Month=7&F_Day=4>4</a><br>
                                        </td><td><a href=diary.asp?flag=2&d=d&F_Year=2017&F_Month=7&F_Day=5>5</a><br>
                                        </td><td><a href=diary.asp?flag=2&d=d&F_Year=2017&F_Month=7&F_Day=6>6</a><br>
                                        </td><td><a href=diary.asp?flag=2&d=d&F_Year=2017&F_Month=7&F_Day=7>7</a><br>
                                        </td><td><a href=diary.asp?flag=2&d=d&F_Year=2017&F_Month=7&F_Day=8>8</a><br>
                                        </td></tr> <tr align=center bgcolor=#F6F6F6 height='25'>
                                            <td><a href=diary.asp?flag=2&d=d&F_Year=2017&F_Month=7&F_Day=9 ><font color=#FF6633>9</font></a><br>
                                            </td><td><a href=diary.asp?flag=2&d=d&F_Year=2017&F_Month=7&F_Day=10>10</a><br>
                                        </td><td><a href=diary.asp?flag=2&d=d&F_Year=2017&F_Month=7&F_Day=11>11</a><br>
                                        </td><td><a href=diary.asp?flag=2&d=d&F_Year=2017&F_Month=7&F_Day=12>12</a><br>
                                        </td><td><a href=diary.asp?flag=2&d=d&F_Year=2017&F_Month=7&F_Day=13>13</a><br>
                                        </td><td><a href=diary.asp?flag=2&d=d&F_Year=2017&F_Month=7&F_Day=14>14</a><br>
                                        </td><td><a href=diary.asp?flag=2&d=d&F_Year=2017&F_Month=7&F_Day=15>15</a><br>
                                        </td></tr> <tr align=center bgcolor=#F6F6F6 height='25'>
                                            <td><a href=diary.asp?flag=2&d=d&F_Year=2017&F_Month=7&F_Day=16 ><font color=#FF6633>16</font></a><br>
                                            </td><td><a href=diary.asp?flag=2&d=d&F_Year=2017&F_Month=7&F_Day=17>17</a><br>
                                        </td><td><a href=diary.asp?flag=2&d=d&F_Year=2017&F_Month=7&F_Day=18>18</a><br>
                                        </td><td><a href=diary.asp?flag=2&d=d&F_Year=2017&F_Month=7&F_Day=19>19</a><br>
                                        </td><td><a href=diary.asp?flag=2&d=d&F_Year=2017&F_Month=7&F_Day=20>20</a><br>
                                        </td><td bgcolor='#E3EDF8'><a href=diary.asp?flag=2&d=d&F_Year=2017&F_Month=7&F_Day=21 ><font color='#333333'>21</font></a><br>
                                        </td><td><a href=diary.asp?flag=2&d=d&F_Year=2017&F_Month=7&F_Day=22>22</a><br>
                                        </td></tr> <tr align=center bgcolor=#F6F6F6 height='25'>
                                            <td><a href=diary.asp?flag=2&d=d&F_Year=2017&F_Month=7&F_Day=23 ><font color=#FF6633>23</font></a><br>
                                            </td><td><a href=diary.asp?flag=2&d=d&F_Year=2017&F_Month=7&F_Day=24>24</a><br>
                                        </td><td><a href=diary.asp?flag=2&d=d&F_Year=2017&F_Month=7&F_Day=25>25</a><br>
                                        </td><td><a href=diary.asp?flag=2&d=d&F_Year=2017&F_Month=7&F_Day=26>26</a><br>
                                        </td><td><a href=diary.asp?flag=2&d=d&F_Year=2017&F_Month=7&F_Day=27>27</a><br>
                                        </td><td><a href=diary.asp?flag=2&d=d&F_Year=2017&F_Month=7&F_Day=28>28</a><br>
                                        </td><td><a href=diary.asp?flag=2&d=d&F_Year=2017&F_Month=7&F_Day=29>29</a><br>
                                        </td></tr> <tr align=center bgcolor=#F6F6F6 height='25'>
                                            <td><a href=diary.asp?flag=2&d=d&F_Year=2017&F_Month=7&F_Day=30 ><font color=#FF6633>30</font></a><br>
                                            </td><td><a href=diary.asp?flag=2&d=d&F_Year=2017&F_Month=7&F_Day=31>31</a><br>
                                        </td><td bgcolor=#ffffff>&nbsp;
                                        </td><td bgcolor=#ffffff>&nbsp;
                                        </td><td bgcolor=#ffffff>&nbsp;
                                        </td><td bgcolor=#ffffff>&nbsp;
                                        </td><td bgcolor=#ffffff>&nbsp;
                                        </td></tr>
                                        </table></td>
                                </tr>
                            </table>


                        </td>
                    </tr>
                    <tr>
                    </tr>
                </table>
            </div>
            <br>
            <img src=${pageContext.request.contextPath}/resources/image/imgs/ic_11.gif border=0> 개인,
            <img src=${pageContext.request.contextPath}/resources/image/imgs/ic_12.gif border=0> 전체,
            <img src=${pageContext.request.contextPath}/resources/image/imgs/ic_13.gif border=0> 부서,
            <img src=${pageContext.request.contextPath}/resources/image/imgs/ic_14.gif border=0> 공유
        </td>
    </tr>
</table>




<table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr>
        <td height="15" ></td>
    </tr>
</table>
</body>

</html>
