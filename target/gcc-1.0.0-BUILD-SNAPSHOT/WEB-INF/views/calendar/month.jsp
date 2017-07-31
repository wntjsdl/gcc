<%--
  Created by IntelliJ IDEA.
  User: Kang
  Date: 2017-07-21
  Time: 오후 2:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>월간일정</title>
</head>
<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">

<div ID="overDiv" STYLE="position:absolute;top:50px;left:100px; visibility:hidden; z-index:2;"></div>

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

                            월간일정
                            (통합일정)


                        </strong></font></td>
                    <td align="right"> <img src="${pageContext.request.contextPath}/resources/image/imgs/ic_3.gif" width="12" height="15" align="absmiddle">
                        <font color="3366CC">
                            2017년 7월 24일,   월요일  (음력 6월 2일)</font> |
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
        <td width="20%" height="25" align="left" style="padding-left:10px;"><strong>
            <a href="diary.asp?d=m&F_Year=2017&F_Month=6&F_Day=30">
                <img src="${pageContext.request.contextPath}/resources/image/imgs/img_diary/ic1.gif" width="13" height="13" border="0" align="absmiddle"></a>
            2017년 7월
            <a href="diary.asp?d=m&F_Year=2017&F_Month=8&F_Day=31">
                <img src="${pageContext.request.contextPath}/resources/image/imgs/img_diary/ic2.gif" width="13" height="13" border="0" align="absmiddle" ></a>
        </strong></td>
        <td align="right">※ 일자를 클릭하시면 해당일 시간대별 상세일정, <strong><font color="3366CC">일정을
            추가하시려면</font></strong> <img src="${pageContext.request.contextPath}/resources/image/imgs/img_diary/add.gif" width="11" height="11" align="absmiddle">를
            클릭하세요.
            <img src=${pageContext.request.contextPath}/resources/image/imgs/ic_11.gif border=0>
            <a href="diary.asp?flag=4&d=m&F_year=2017&F_month=7&F_day=24&Vcc_open=1" >개인</a>
            <img src=${pageContext.request.contextPath}/resources/image/imgs/ic_12.gif border=0>
            <a href="diary.asp?flag=4&d=m&F_year=2017&F_month=7&F_day=24&Vcc_open=2" >전체</a>
            <img src=${pageContext.request.contextPath}/resources/image/imgs/ic_13.gif border=0>
            <a href="diary.asp?flag=4&d=m&F_year=2017&F_month=7&F_day=24&Vcc_open=3" >부서</a>
            <img src=${pageContext.request.contextPath}/resources/image/imgs/ic_14.gif border=0>
            <a href="diary.asp?flag=4&d=m&F_year=2017&F_month=7&F_day=24&Vcc_open=4" >공유</a>
        </td>
    </tr>
</table>

<table width="897" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="81B1E2">
    <tr>
        <td height="30" style="padding-left:10px; background-color: #81b1e2;"><font color="#FFFFFF">☞ <strong>월간일정</strong> |
            2017년 7월 24일,   월요일  (음력 6월 2일)&nbsp;</font></td>
        <td width="40%" align="right" style="background-color: #81b1e2;">

            <table width="90%" border="0" cellspacing="2" cellpadding="0">
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


<table width="897" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="FAFAFA">
    <tr>
        <td width="100%" bgcolor="#FFFFFF">

            <table width="100%" border="0" align="center" cellpadding="2" cellspacing="1">
                <tr bgcolor="E3EEF8">
                    <td width="14%" height="25"><div align="center"><font color="#FF0000">일(日)</font>
                    </div></td>
                    <td width="15%"><div align="center">월(月)</div></td>
                    <td width="14%"><div align="center">화(火) </div></td>
                    <td width="14%" bgcolor="E3EEF8"><div align="center">수(水)</div></td>
                    <td width="14%"><div align="center">목(木)</div></td>
                    <td width="15%" bgcolor="E3EEF8"><div align="center">금(金)</div></td>
                    <td width="14%"><div align="center"><font color="#0000FF">토(土) </font></div></td>
                </tr>

                <tr align=left valign=top>
                    <td height='75' bgcolor='#FFFFFF'>&nbsp;</td>
                    </td>
                    <td height='75' bgcolor='#FFFFFF'>&nbsp;</td>
                    </td>
                    <td height='75' bgcolor='#FFFFFF'>&nbsp;</td>
                    </td>
                    <td height='75' bgcolor='#FFFFFF'>&nbsp;</td>
                    </td>
                    <td height='75' bgcolor='#FFFFFF'>&nbsp;</td>
                    </td>
                    <td height='75' bgcolor='#FFFFFF'>&nbsp;</td>
                    </td>
                    <td height='75' bgcolor='FAFAFA' onMouseOver=this.style.backgroundColor='#F5F5F5' onMouseOut=this.style.backgroundColor='FAFAFA'><a href=diary.asp?d=d&F_Year=2017&F_Month=7&F_Day=1 >1</a>&nbsp;&nbsp;<a href=diary.asp?m=input&sdate=2017-7-1&shour=9><img src=${pageContext.request.contextPath}/resources/image/imgs/img_diary/add.gif border=0 alt='일정 신규등록'></a><br>
                    </td>
                </tr>
                <tr align=left valign=top>
                    <td height='75' bgcolor='FAFAFA' onMouseOver=this.style.backgroundColor='#F5F5F5' onMouseOut=this.style.backgroundColor='FAFAFA'><a href=diary.asp?d=d&F_Year=2017&F_Month=7&F_Day=2 ><font color=red>2</font></a>&nbsp;&nbsp;<a href=diary.asp?m=input&sdate=2017-7-2&shour=9><img src=${pageContext.request.contextPath}/resources/image/imgs/img_diary/add.gif border=0 alt='일정 신규등록'></a><br>
                    </td>
                    <td height='75' bgcolor='FAFAFA' onMouseOver=this.style.backgroundColor='#F5F5F5' onMouseOut=this.style.backgroundColor='FAFAFA'><a href=diary.asp?d=d&F_Year=2017&F_Month=7&F_Day=3 >3</a>&nbsp;&nbsp;<a href=diary.asp?m=input&sdate=2017-7-3&shour=9><img src=${pageContext.request.contextPath}/resources/image/imgs/img_diary/add.gif border=0 alt='일정 신규등록'></a><br>
                    </td>
                    <td height='75' bgcolor='FAFAFA' onMouseOver=this.style.backgroundColor='#F5F5F5' onMouseOut=this.style.backgroundColor='FAFAFA'><a href=diary.asp?d=d&F_Year=2017&F_Month=7&F_Day=4 >4</a>&nbsp;&nbsp;<a href=diary.asp?m=input&sdate=2017-7-4&shour=9><img src=${pageContext.request.contextPath}/resources/image/imgs/img_diary/add.gif border=0 alt='일정 신규등록'></a><br>
                    </td>
                    <td height='75' bgcolor='FAFAFA' onMouseOver=this.style.backgroundColor='#F5F5F5' onMouseOut=this.style.backgroundColor='FAFAFA'><a href=diary.asp?d=d&F_Year=2017&F_Month=7&F_Day=5 >5</a>&nbsp;&nbsp;<a href=diary.asp?m=input&sdate=2017-7-5&shour=9><img src=${pageContext.request.contextPath}/resources/image/imgs/img_diary/add.gif border=0 alt='일정 신규등록'></a><br>
                    </td>
                    <td height='75' bgcolor='FAFAFA' onMouseOver=this.style.backgroundColor='#F5F5F5' onMouseOut=this.style.backgroundColor='FAFAFA'><a href=diary.asp?d=d&F_Year=2017&F_Month=7&F_Day=6 >6</a>&nbsp;&nbsp;<a href=diary.asp?m=input&sdate=2017-7-6&shour=9><img src=${pageContext.request.contextPath}/resources/image/imgs/img_diary/add.gif border=0 alt='일정 신규등록'></a><br>
                    </td>
                    <td height='75' bgcolor='FAFAFA' onMouseOver=this.style.backgroundColor='#F5F5F5' onMouseOut=this.style.backgroundColor='FAFAFA'><a href=diary.asp?d=d&F_Year=2017&F_Month=7&F_Day=7 >7</a>&nbsp;&nbsp;<a href=diary.asp?m=input&sdate=2017-7-7&shour=9><img src=${pageContext.request.contextPath}/resources/image/imgs/img_diary/add.gif border=0 alt='일정 신규등록'></a><br>
                    </td>
                    <td height='75' bgcolor='FAFAFA' onMouseOver=this.style.backgroundColor='#F5F5F5' onMouseOut=this.style.backgroundColor='FAFAFA'><a href=diary.asp?d=d&F_Year=2017&F_Month=7&F_Day=8 >8</a>&nbsp;&nbsp;<a href=diary.asp?m=input&sdate=2017-7-8&shour=9><img src=${pageContext.request.contextPath}/resources/image/imgs/img_diary/add.gif border=0 alt='일정 신규등록'></a><br>
                    </td>
                </tr>
                <tr align=left valign=top>
                    <td height='75' bgcolor='FAFAFA' onMouseOver=this.style.backgroundColor='#F5F5F5' onMouseOut=this.style.backgroundColor='FAFAFA'><a href=diary.asp?d=d&F_Year=2017&F_Month=7&F_Day=9 ><font color=red>9</font></a>&nbsp;&nbsp;<a href=diary.asp?m=input&sdate=2017-7-9&shour=9><img src=${pageContext.request.contextPath}/resources/image/imgs/img_diary/add.gif border=0 alt='일정 신규등록'></a><br>
                    </td>
                    <td height='75' bgcolor='FAFAFA' onMouseOver=this.style.backgroundColor='#F5F5F5' onMouseOut=this.style.backgroundColor='FAFAFA'><a href=diary.asp?d=d&F_Year=2017&F_Month=7&F_Day=10 >10</a>&nbsp;&nbsp;<a href=diary.asp?m=input&sdate=2017-7-10&shour=9><img src=${pageContext.request.contextPath}/resources/image/imgs/img_diary/add.gif border=0 alt='일정 신규등록'></a><br>
                    </td>
                    <td height='75' bgcolor='FAFAFA' onMouseOver=this.style.backgroundColor='#F5F5F5' onMouseOut=this.style.backgroundColor='FAFAFA'><a href=diary.asp?d=d&F_Year=2017&F_Month=7&F_Day=11 >11</a>&nbsp;&nbsp;<a href=diary.asp?m=input&sdate=2017-7-11&shour=9><img src=${pageContext.request.contextPath}/resources/image/imgs/img_diary/add.gif border=0 alt='일정 신규등록'></a><br>
                    </td>
                    <td height='75' bgcolor='FAFAFA' onMouseOver=this.style.backgroundColor='#F5F5F5' onMouseOut=this.style.backgroundColor='FAFAFA'><a href=diary.asp?d=d&F_Year=2017&F_Month=7&F_Day=12 >12</a>&nbsp;&nbsp;<a href=diary.asp?m=input&sdate=2017-7-12&shour=9><img src=${pageContext.request.contextPath}/resources/image/imgs/img_diary/add.gif border=0 alt='일정 신규등록'></a><br>
                    </td>
                    <td height='75' bgcolor='FAFAFA' onMouseOver=this.style.backgroundColor='#F5F5F5' onMouseOut=this.style.backgroundColor='FAFAFA'><a href=diary.asp?d=d&F_Year=2017&F_Month=7&F_Day=13 >13</a>&nbsp;&nbsp;<a href=diary.asp?m=input&sdate=2017-7-13&shour=9><img src=${pageContext.request.contextPath}/resources/image/imgs/img_diary/add.gif border=0 alt='일정 신규등록'></a><br>
                    </td>
                    <td height='75' bgcolor='FAFAFA' onMouseOver=this.style.backgroundColor='#F5F5F5' onMouseOut=this.style.backgroundColor='FAFAFA'><a href=diary.asp?d=d&F_Year=2017&F_Month=7&F_Day=14 >14</a>&nbsp;&nbsp;<a href=diary.asp?m=input&sdate=2017-7-14&shour=9><img src=${pageContext.request.contextPath}/resources/image/imgs/img_diary/add.gif border=0 alt='일정 신규등록'></a><br>
                    </td>
                    <td height='75' bgcolor='FAFAFA' onMouseOver=this.style.backgroundColor='#F5F5F5' onMouseOut=this.style.backgroundColor='FAFAFA'><a href=diary.asp?d=d&F_Year=2017&F_Month=7&F_Day=15 >15</a>&nbsp;&nbsp;<a href=diary.asp?m=input&sdate=2017-7-15&shour=9><img src=${pageContext.request.contextPath}/resources/image/imgs/img_diary/add.gif border=0 alt='일정 신규등록'></a><br>
                    </td>
                </tr>
                <tr align=left valign=top>
                    <td height='75' bgcolor='FAFAFA' onMouseOver=this.style.backgroundColor='#F5F5F5' onMouseOut=this.style.backgroundColor='FAFAFA'><a href=diary.asp?d=d&F_Year=2017&F_Month=7&F_Day=16 ><font color=red>16</font></a>&nbsp;&nbsp;<a href=diary.asp?m=input&sdate=2017-7-16&shour=9><img src=${pageContext.request.contextPath}/resources/image/imgs/img_diary/add.gif border=0 alt='일정 신규등록'></a><br>
                    </td>
                    <td height='75' bgcolor='FAFAFA' onMouseOver=this.style.backgroundColor='#F5F5F5' onMouseOut=this.style.backgroundColor='FAFAFA'><a href=diary.asp?d=d&F_Year=2017&F_Month=7&F_Day=17 >17</a>&nbsp;&nbsp;<a href=diary.asp?m=input&sdate=2017-7-17&shour=9><img src=${pageContext.request.contextPath}/resources/image/imgs/img_diary/add.gif border=0 alt='일정 신규등록'></a><br>
                    </td>
                    <td height='75' bgcolor='FAFAFA' onMouseOver=this.style.backgroundColor='#F5F5F5' onMouseOut=this.style.backgroundColor='FAFAFA'><a href=diary.asp?d=d&F_Year=2017&F_Month=7&F_Day=18 >18</a>&nbsp;&nbsp;<a href=diary.asp?m=input&sdate=2017-7-18&shour=9><img src=${pageContext.request.contextPath}/resources/image/imgs/img_diary/add.gif border=0 alt='일정 신규등록'></a><br>
                    </td>
                    <td height='75' bgcolor='FAFAFA' onMouseOver=this.style.backgroundColor='#F5F5F5' onMouseOut=this.style.backgroundColor='FAFAFA'><a href=diary.asp?d=d&F_Year=2017&F_Month=7&F_Day=19 >19</a>&nbsp;&nbsp;<a href=diary.asp?m=input&sdate=2017-7-19&shour=9><img src=${pageContext.request.contextPath}/resources/image/imgs/img_diary/add.gif border=0 alt='일정 신규등록'></a><br>
                    </td>
                    <td height='75' bgcolor='FAFAFA' onMouseOver=this.style.backgroundColor='#F5F5F5' onMouseOut=this.style.backgroundColor='FAFAFA'><a href=diary.asp?d=d&F_Year=2017&F_Month=7&F_Day=20 >20</a>&nbsp;&nbsp;<a href=diary.asp?m=input&sdate=2017-7-20&shour=9><img src=${pageContext.request.contextPath}/resources/image/imgs/img_diary/add.gif border=0 alt='일정 신규등록'></a><br>
                    </td>
                    <td height='75' bgcolor='FAFAFA' onMouseOver=this.style.backgroundColor='#F5F5F5' onMouseOut=this.style.backgroundColor='FAFAFA'><a href=diary.asp?d=d&F_Year=2017&F_Month=7&F_Day=21 >21</a>&nbsp;&nbsp;<a href=diary.asp?m=input&sdate=2017-7-21&shour=9><img src=${pageContext.request.contextPath}/resources/image/imgs/img_diary/add.gif border=0 alt='일정 신규등록'></a><br>
                    </td>
                    <td height='75' bgcolor='FAFAFA' onMouseOver=this.style.backgroundColor='#F5F5F5' onMouseOut=this.style.backgroundColor='FAFAFA'><a href=diary.asp?d=d&F_Year=2017&F_Month=7&F_Day=22 >22</a>&nbsp;&nbsp;<a href=diary.asp?m=input&sdate=2017-7-22&shour=9><img src=${pageContext.request.contextPath}/resources/image/imgs/img_diary/add.gif border=0 alt='일정 신규등록'></a><br>
                    </td>
                </tr>
                <tr align=left valign=top>
                    <td height='75' bgcolor='FAFAFA' onMouseOver=this.style.backgroundColor='#F5F5F5' onMouseOut=this.style.backgroundColor='FAFAFA'><a href=diary.asp?d=d&F_Year=2017&F_Month=7&F_Day=23 ><font color=red>23</font></a>&nbsp;&nbsp;<a href=diary.asp?m=input&sdate=2017-7-23&shour=9><img src=${pageContext.request.contextPath}/resources/image/imgs/img_diary/add.gif border=0 alt='일정 신규등록'></a><br>
                    </td>
                    <td height='75' bgcolor='#E2ECFC' onMouseOver=this.style.backgroundColor='#F5F5F5' onMouseOut=this.style.backgroundColor='#E2ECFC'><b><a href=diary.asp?d=d&F_Year=2017&F_Month=7&F_Day=24 ><font color=3366CC>24◈</font></a></b>&nbsp;&nbsp;<a href=diary.asp?m=input&sdate=2017-7-24&shour=9><img src=${pageContext.request.contextPath}/resources/image/imgs/img_diary/add.gif border=0 alt='일정 신규등록'></a><br>
                    </td>
                    <td height='75' bgcolor='FAFAFA' onMouseOver=this.style.backgroundColor='#F5F5F5' onMouseOut=this.style.backgroundColor='FAFAFA'><a href=diary.asp?d=d&F_Year=2017&F_Month=7&F_Day=25 >25</a>&nbsp;&nbsp;<a href=diary.asp?m=input&sdate=2017-7-25&shour=9><img src=${pageContext.request.contextPath}/resources/image/imgs/img_diary/add.gif border=0 alt='일정 신규등록'></a><br>
                    </td>
                    <td height='75' bgcolor='FAFAFA' onMouseOver=this.style.backgroundColor='#F5F5F5' onMouseOut=this.style.backgroundColor='FAFAFA'><a href=diary.asp?d=d&F_Year=2017&F_Month=7&F_Day=26 >26</a>&nbsp;&nbsp;<a href=diary.asp?m=input&sdate=2017-7-26&shour=9><img src=${pageContext.request.contextPath}/resources/image/imgs/img_diary/add.gif border=0 alt='일정 신규등록'></a><br>
                    </td>
                    <td height='75' bgcolor='FAFAFA' onMouseOver=this.style.backgroundColor='#F5F5F5' onMouseOut=this.style.backgroundColor='FAFAFA'><a href=diary.asp?d=d&F_Year=2017&F_Month=7&F_Day=27 >27</a>&nbsp;&nbsp;<a href=diary.asp?m=input&sdate=2017-7-27&shour=9><img src=${pageContext.request.contextPath}/resources/image/imgs/img_diary/add.gif border=0 alt='일정 신규등록'></a><br>
                    </td>
                    <td height='75' bgcolor='FAFAFA' onMouseOver=this.style.backgroundColor='#F5F5F5' onMouseOut=this.style.backgroundColor='FAFAFA'><a href=diary.asp?d=d&F_Year=2017&F_Month=7&F_Day=28 >28</a>&nbsp;&nbsp;<a href=diary.asp?m=input&sdate=2017-7-28&shour=9><img src=${pageContext.request.contextPath}/resources/image/imgs/img_diary/add.gif border=0 alt='일정 신규등록'></a><br>
                    </td>
                    <td height='75' bgcolor='FAFAFA' onMouseOver=this.style.backgroundColor='#F5F5F5' onMouseOut=this.style.backgroundColor='FAFAFA'><a href=diary.asp?d=d&F_Year=2017&F_Month=7&F_Day=29 >29</a>&nbsp;&nbsp;<a href=diary.asp?m=input&sdate=2017-7-29&shour=9><img src=${pageContext.request.contextPath}/resources/image/imgs/img_diary/add.gif border=0 alt='일정 신규등록'></a><br>
                    </td>
                </tr>
                <tr align=left valign=top>
                    <td height='75' bgcolor='FAFAFA' onMouseOver=this.style.backgroundColor='#F5F5F5' onMouseOut=this.style.backgroundColor='FAFAFA'><a href=diary.asp?d=d&F_Year=2017&F_Month=7&F_Day=30 ><font color=red>30</font></a>&nbsp;&nbsp;<a href=diary.asp?m=input&sdate=2017-7-30&shour=9><img src=${pageContext.request.contextPath}/resources/image/imgs/img_diary/add.gif border=0 alt='일정 신규등록'></a><br>
                    </td>
                    <td height='75' bgcolor='FAFAFA' onMouseOver=this.style.backgroundColor='#F5F5F5' onMouseOut=this.style.backgroundColor='FAFAFA'><a href=diary.asp?d=d&F_Year=2017&F_Month=7&F_Day=31 >31</a>&nbsp;&nbsp;<a href=diary.asp?m=input&sdate=2017-7-31&shour=9><img src=${pageContext.request.contextPath}/resources/image/imgs/img_diary/add.gif border=0 alt='일정 신규등록'></a><br>
                    </td>
                    <td height='75' bgcolor='#FFFFFF'>&nbsp;</td>
                    </td>
                    <td height='75' bgcolor='#FFFFFF'>&nbsp;</td>
                    </td>
                    <td height='75' bgcolor='#FFFFFF'>&nbsp;</td>
                    </td>
                    <td height='75' bgcolor='#FFFFFF'>&nbsp;</td>
                    </td>
                    <td height='75' bgcolor='#FFFFFF'>&nbsp;</td>
                    </td>
                </tr>

            </table>
        </td>
    </tr>
</table>

<table height="1"><tr><td></td></tr></table>

<table width="897" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="81B1E2">
    <tr>
        <td style="padding-left:10px; background-color: #81b1e2;">&nbsp;</td>
        <td width="40%" align="right" style="background-color: #81b1e2;">
            <table width="90%" border="0" cellspacing="2" cellpadding="0">
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


<table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr>
        <td height="15" ></td>
    </tr>
</table>
</body>

</html>
