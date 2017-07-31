<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
</head>
<body>
<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<!--전체 테이블-->


<table width="100%" border="0" cellspacing="0" cellpadding="0" align="center">

    <INPUT TYPE=HIDDEN NAME="txtEMP_C" VALUE="2017032701">
    <INPUT TYPE=HIDDEN NAME="txtGRP_C" VALUE="">
    <INPUT TYPE=HIDDEN NAME="txtGRP_T" VALUE="">


    <tr>
        <td height="14px" background="${pageContext.request.contextPath}/resources/image/imgs/ln01.gif"></td>
    </tr>

    <tr>
        <td height="27px" align="center">

            <table width="897px" border="0" cellspacing="0" cellpadding="0">
                <tr>
                    <td><img src="${pageContext.request.contextPath}/resources/image/imgs/img_work/ic.gif" width="37px"
                             height="27px" align="absmiddle">
                        업무일지 &gt; <font color="3366CC"><strong>업무일지작성</strong></font></td>
                    <td align="right">
                        <img src="${pageContext.request.contextPath}/resources/image/imgs/ic_3.gif" width="12px"
                             height="15px" align="absmiddle">
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
        <td height="1px" align="center"><img src="${pageContext.request.contextPath}/resources/image/imgs/ln02.gif">
        </td>
    </tr>
    <tr>
        <td height="10px"></td>
    </tr>
</table>

<table width="950px" border="0" align="center" cellpadding="0" cellspacing="0">
    <tr>
        <td valign="top">

            <table width="100%" border="0" cellspacing="1" cellpadding="0">
                <tr>
                    <td height="40px" colspan="2"><u><font color="3366CC">
                        ※ 보고선 지정현황에서 보고선을 선택하세요.</font></u> 보고선이 미등록일경우 버튼을 클릭하세요. <a href="/hw_wd/wd_EV/WD_EV_FRA.asp"><img
                            src="${pageContext.request.contextPath}/resources/image/imgs/bt_01.gif" width="77"
                            height="21px" border="0" align="absmiddle"></a>
                        <a href="JavaScript:insertTotal();"><img
                                src="${pageContext.request.contextPath}/resources/image/imgs/bt_all.gif" width="59"
                                height="21px" border="0" align="absmiddle"></a></td>
                </tr>
                <tr>
                    <td height="2px" colspan="2" bgcolor="81B1E2"></td>
                </tr>
                <tr>
                    <td width="15%" height="27px" align="center" bgcolor="E3EEF8">보고선</td>
                    <td width="85%" bgcolor="E3EEF8"></td>
                </tr>
                <tr>
                    <td height="27px" align="center" bgcolor="E3EEF8">제 &nbsp;&nbsp;목</td>
                    <td bgcolor="#FAFAFA" style="padding-left:8pt"><input name="txtTIT_T" type="text" size="88"
                                                                          class=box onfocus="lin_chk()"></td>
                </tr>
                <tr>
                    <td height="27" align="center" bgcolor="E3EEF8">작성일</td>
                    <td bgcolor="#FAFAFA">
                        <table width="100%%" height="25" border="0" cellpadding="0" cellspacing="0">
                            <tr>
                                <td style="padding-left:8pt">
                                    <input type="text" name="txtWOK_D1" value="2017" size="4" class=box
                                           onfocus="lin_chk()">
                                    년
                                    <input type="text" name="txtWOK_D2" value="07" size="2" class=box
                                           onfocus="lin_chk()">
                                    월
                                    <input type="text" name="txtWOK_D3" value="13" size="2" class=box
                                           onfocus="lin_chk()">
                                    일
                                </td>
                                <td width="12%" align="center" bgcolor="E3EEF8">출 근</td>
                                <td style="padding-left:5pt">
                                    <select name="txtWOF_B1">

                                        <OPTION VALUE="00">00</OPTION>

                                        <OPTION VALUE="01">01</OPTION>

                                        <OPTION VALUE="02">02</OPTION>

                                        <OPTION VALUE="03">03</OPTION>

                                        <OPTION VALUE="04">04</OPTION>

                                        <OPTION VALUE="05">05</OPTION>

                                        <OPTION VALUE="06">06</OPTION>

                                        <OPTION VALUE="07">07</OPTION>

                                        <OPTION selected VALUE="08">08</OPTION>

                                        <OPTION VALUE="09">09</OPTION>

                                        <OPTION VALUE="10">10</OPTION>

                                        <OPTION VALUE="11">11</OPTION>

                                        <OPTION VALUE="12">12</OPTION>

                                        <OPTION VALUE="13">13</OPTION>

                                        <OPTION VALUE="14">14</OPTION>

                                        <OPTION VALUE="15">15</OPTION>

                                        <OPTION VALUE="16">16</OPTION>

                                        <OPTION VALUE="17">17</OPTION>

                                        <OPTION VALUE="18">18</OPTION>

                                        <OPTION VALUE="19">19</OPTION>

                                        <OPTION VALUE="20">20</OPTION>

                                        <OPTION VALUE="21">21</OPTION>

                                        <OPTION VALUE="22">22</OPTION>

                                        <OPTION VALUE="23">23</OPTION>

                                    </select>시
                                    <select name="txtWOF_B2">

                                        <OPTION VALUE="00">00</OPTION>

                                        <OPTION VALUE="01">01</OPTION>

                                        <OPTION VALUE="02">02</OPTION>

                                        <OPTION VALUE="03">03</OPTION>

                                        <OPTION VALUE="04">04</OPTION>

                                        <OPTION VALUE="05">05</OPTION>

                                        <OPTION VALUE="06">06</OPTION>

                                        <OPTION VALUE="07">07</OPTION>

                                        <OPTION VALUE="08">08</OPTION>

                                        <OPTION VALUE="09">09</OPTION>

                                        <OPTION VALUE="10">10</OPTION>

                                        <OPTION VALUE="11">11</OPTION>

                                        <OPTION VALUE="12">12</OPTION>

                                        <OPTION VALUE="13">13</OPTION>

                                        <OPTION VALUE="14">14</OPTION>

                                        <OPTION VALUE="15">15</OPTION>

                                        <OPTION VALUE="16">16</OPTION>

                                        <OPTION VALUE="17">17</OPTION>

                                        <OPTION VALUE="18">18</OPTION>

                                        <OPTION VALUE="19">19</OPTION>

                                        <OPTION VALUE="20">20</OPTION>

                                        <OPTION VALUE="21">21</OPTION>

                                        <OPTION VALUE="22">22</OPTION>

                                        <OPTION VALUE="23">23</OPTION>

                                        <OPTION VALUE="24">24</OPTION>

                                        <OPTION VALUE="25">25</OPTION>

                                        <OPTION VALUE="26">26</OPTION>

                                        <OPTION VALUE="27">27</OPTION>

                                        <OPTION VALUE="28">28</OPTION>

                                        <OPTION VALUE="29">29</OPTION>

                                        <OPTION VALUE="30">30</OPTION>

                                        <OPTION VALUE="31">31</OPTION>

                                        <OPTION VALUE="32">32</OPTION>

                                        <OPTION VALUE="33">33</OPTION>

                                        <OPTION VALUE="34">34</OPTION>

                                        <OPTION VALUE="35">35</OPTION>

                                        <OPTION VALUE="36">36</OPTION>

                                        <OPTION VALUE="37">37</OPTION>

                                        <OPTION VALUE="38">38</OPTION>

                                        <OPTION VALUE="39">39</OPTION>

                                        <OPTION selected VALUE="40">40</OPTION>

                                        <OPTION VALUE="41">41</OPTION>

                                        <OPTION VALUE="42">42</OPTION>

                                        <OPTION VALUE="43">43</OPTION>

                                        <OPTION VALUE="44">44</OPTION>

                                        <OPTION VALUE="45">45</OPTION>

                                        <OPTION VALUE="46">46</OPTION>

                                        <OPTION VALUE="47">47</OPTION>

                                        <OPTION VALUE="48">48</OPTION>

                                        <OPTION VALUE="49">49</OPTION>

                                        <OPTION VALUE="50">50</OPTION>

                                        <OPTION VALUE="51">51</OPTION>

                                        <OPTION VALUE="52">52</OPTION>

                                        <OPTION VALUE="53">53</OPTION>

                                        <OPTION VALUE="54">54</OPTION>

                                        <OPTION VALUE="55">55</OPTION>

                                        <OPTION VALUE="56">56</OPTION>

                                        <OPTION VALUE="57">57</OPTION>

                                        <OPTION VALUE="58">58</OPTION>

                                        <OPTION VALUE="59">59</OPTION>

                                    </select>분
                                </td>
                                <td width="12%" align="center" bgcolor="E3EEF8">퇴 근</td>
                                <td style="padding-left:5pt">
                                    <select name="txtWOT_B1">

                                        <OPTION selected VALUE="00">00</OPTION>

                                        <OPTION VALUE="01">01</OPTION>

                                        <OPTION VALUE="02">02</OPTION>

                                        <OPTION VALUE="03">03</OPTION>

                                        <OPTION VALUE="04">04</OPTION>

                                        <OPTION VALUE="05">05</OPTION>

                                        <OPTION VALUE="06">06</OPTION>

                                        <OPTION VALUE="07">07</OPTION>

                                        <OPTION VALUE="08">08</OPTION>

                                        <OPTION VALUE="09">09</OPTION>

                                        <OPTION VALUE="10">10</OPTION>

                                        <OPTION VALUE="11">11</OPTION>

                                        <OPTION VALUE="12">12</OPTION>

                                        <OPTION VALUE="13">13</OPTION>

                                        <OPTION VALUE="14">14</OPTION>

                                        <OPTION VALUE="15">15</OPTION>

                                        <OPTION VALUE="16">16</OPTION>

                                        <OPTION VALUE="17">17</OPTION>

                                        <OPTION VALUE="18">18</OPTION>

                                        <OPTION VALUE="19">19</OPTION>

                                        <OPTION VALUE="20">20</OPTION>

                                        <OPTION VALUE="21">21</OPTION>

                                        <OPTION VALUE="22">22</OPTION>

                                        <OPTION VALUE="23">23</OPTION>

                                    </select>시
                                    <select name="txtWOT_B2">

                                        <OPTION selected VALUE="00">00</OPTION>

                                        <OPTION VALUE="01">01</OPTION>

                                        <OPTION VALUE="02">02</OPTION>

                                        <OPTION VALUE="03">03</OPTION>

                                        <OPTION VALUE="04">04</OPTION>

                                        <OPTION VALUE="05">05</OPTION>

                                        <OPTION VALUE="06">06</OPTION>

                                        <OPTION VALUE="07">07</OPTION>

                                        <OPTION VALUE="08">08</OPTION>

                                        <OPTION VALUE="09">09</OPTION>

                                        <OPTION VALUE="10">10</OPTION>

                                        <OPTION VALUE="11">11</OPTION>

                                        <OPTION VALUE="12">12</OPTION>

                                        <OPTION VALUE="13">13</OPTION>

                                        <OPTION VALUE="14">14</OPTION>

                                        <OPTION VALUE="15">15</OPTION>

                                        <OPTION VALUE="16">16</OPTION>

                                        <OPTION VALUE="17">17</OPTION>

                                        <OPTION VALUE="18">18</OPTION>

                                        <OPTION VALUE="19">19</OPTION>

                                        <OPTION VALUE="20">20</OPTION>

                                        <OPTION VALUE="21">21</OPTION>

                                        <OPTION VALUE="22">22</OPTION>

                                        <OPTION VALUE="23">23</OPTION>

                                        <OPTION VALUE="24">24</OPTION>

                                        <OPTION VALUE="25">25</OPTION>

                                        <OPTION VALUE="26">26</OPTION>

                                        <OPTION VALUE="27">27</OPTION>

                                        <OPTION VALUE="28">28</OPTION>

                                        <OPTION VALUE="29">29</OPTION>

                                        <OPTION VALUE="30">30</OPTION>

                                        <OPTION VALUE="31">31</OPTION>

                                        <OPTION VALUE="32">32</OPTION>

                                        <OPTION VALUE="33">33</OPTION>

                                        <OPTION VALUE="34">34</OPTION>

                                        <OPTION VALUE="35">35</OPTION>

                                        <OPTION VALUE="36">36</OPTION>

                                        <OPTION VALUE="37">37</OPTION>

                                        <OPTION VALUE="38">38</OPTION>

                                        <OPTION VALUE="39">39</OPTION>

                                        <OPTION VALUE="40">40</OPTION>

                                        <OPTION VALUE="41">41</OPTION>

                                        <OPTION VALUE="42">42</OPTION>

                                        <OPTION VALUE="43">43</OPTION>

                                        <OPTION VALUE="44">44</OPTION>

                                        <OPTION VALUE="45">45</OPTION>

                                        <OPTION VALUE="46">46</OPTION>

                                        <OPTION VALUE="47">47</OPTION>

                                        <OPTION VALUE="48">48</OPTION>

                                        <OPTION VALUE="49">49</OPTION>

                                        <OPTION VALUE="50">50</OPTION>

                                        <OPTION VALUE="51">51</OPTION>

                                        <OPTION VALUE="52">52</OPTION>

                                        <OPTION VALUE="53">53</OPTION>

                                        <OPTION VALUE="54">54</OPTION>

                                        <OPTION VALUE="55">55</OPTION>

                                        <OPTION VALUE="56">56</OPTION>

                                        <OPTION VALUE="57">57</OPTION>

                                        <OPTION VALUE="58">58</OPTION>

                                        <OPTION VALUE="59">59</OPTION>

                                    </select>분
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td height="27px" align="center" bgcolor="E3EEF8">업무내용</td>
                    <td height="170px" bgcolor="#FAFAFA" style="padding-left:8pt">

                        <textarea name="txtTOD_T" cols="87" rows="11" style="border:1px solid;border-color:#D1D1D1"
                                  onfocus="lin_chk()"></textarea></td>
                </tr>
                <tr>
                    <td height="27px" align="center" bgcolor="E3EEF8">예정내용</td>
                    <td height="170px" bgcolor="#FAFAFA" style="padding-left:8pt">

                        <textarea name="txtTOM_T" cols="87" rows="11" style="border:1px solid;border-color:#D1D1D1"
                                  onfocus="lin_chk()"></textarea></td>
                </tr>
                <tr>
                    <td height="27px" align="center" bgcolor="E3EEF8">첨부파일</td>
                    <td bgcolor="#FAFAFA" style="padding-left:8pt">
                        <input type="file" NAME="filename" size="68px" class="box"></td>
                </tr>
                <tr bgcolor="E6E6E6">
                    <td height="1px" colspan="2" align="left"></td>
                </tr>
                <tr>
                    <td height="40px" align="right" valign="bottom" colspan="2">
                        <a href="JavaScript:fNew(this.form);"><img
                                src="${pageContext.request.contextPath}/resources/image/imgs/bt_save.gif" width="59px"
                                height="21px" border="0"></a>
                        <a href="JavaScript:fReSet(this.form);"><img
                                src="${pageContext.request.contextPath}/resources/image/imgs/bt_new.gif" width="59px"
                                height="21px" border="0"></a>
                        <a href="JavaScript:insertTotal();"><img
                                src="${pageContext.request.contextPath}/resources/image/imgs/bt_all.gif" width="59px"
                                height="21px" border="0"></a>
                    </td>
                </tr>
            </table>
        </td>

        <td width="230px" valign="top">

            <table border="0" align="center" cellpadding="0" cellspacing="0">
                <tr>
                    <td width="100%" valign="top"><br><br>

                        <!-- 업무일지의 달력 -->
                        <div class="homeCal">
                            <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td background="${pageContext.request.contextPath}/resources/image/imgs/img_main/right_boxbg03.gif"></td>
                                    <td height="190" valign="top">


                                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                            <tr>
                                                <td height="28" align="center">

                                                    <table width="90%" height="27" border="0" cellpadding="0"
                                                           cellspacing="0">
                                                        <tr>
                                                            <td align="center" class="textB">
                                                                <a href=wd_ed_cal.asp?Year=2017&Month=6>
                                                                    <img src="${pageContext.request.contextPath}/resources/image/imgs/img_main/arr_01.gif"
                                                                         border="0" align="absmiddle"></a>
                                                                <strong>[2017년 7월]</strong>
                                                                <a href=wd_ed_cal.asp?Year=2017&Month=8>
                                                                    <img src="${pageContext.request.contextPath}/resources/image/imgs/img_main/arr_02.gif"
                                                                         border="0" align="absmiddle"></a></td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td height="145" align="center" valign="top" style="padding-top:2px">

                                                    <table width="100%" border="0" cellpadding="1" cellspacing="1"
                                                           bgcolor="#FFFFFF">
                                                        <tr bgcolor="96BDE7" height="25">
                                                            <td width="25">
                                                                <div align="center"><font color="#FFFFFF">일</font></div>
                                                            </td>
                                                            <td width="25">
                                                                <div align="center"><font color="#FFFFFF">월</font></div>
                                                            </td>
                                                            <td width="25">
                                                                <div align="center"><font color="#FFFFFF">화</font></div>
                                                            </td>
                                                            <td width="25">
                                                                <div align="center"><font color="#FFFFFF">수</font></div>
                                                            </td>
                                                            <td width="25">
                                                                <div align="center"><font color="#FFFFFF">목</font></div>
                                                            </td>
                                                            <td width="25">
                                                                <div align="center"><font color="#FFFFFF">금</font></div>
                                                            </td>
                                                            <td width="25">
                                                                <div align="center"><font color="#FFFFFF">토</font></div>
                                                            </td>
                                                        </tr>
                                                        <tr align=center bgcolor=#F6F6F6 height='25'>
                                                            <td bgcolor=#ffffff>&nbsp;
                                                            </td>
                                                            <td bgcolor=#ffffff>&nbsp;
                                                            </td>
                                                            <td bgcolor=#ffffff>&nbsp;
                                                            </td>
                                                            <td bgcolor=#ffffff>&nbsp;
                                                            </td>
                                                            <td bgcolor=#ffffff>&nbsp;
                                                            </td>
                                                            <td bgcolor=#ffffff>&nbsp;
                                                            </td>
                                                            <td><a href="wd_ed_new.asp?Year=2017&Month=7&Date=1"
                                                                   target="main">1</a><br>
                                                            </td>
                                                        </tr>
                                                        <tr align=center bgcolor=#F6F6F6 height='25'>
                                                            <td><a href="wd_ed_new.asp?Year=2017&Month=7&Date=2"
                                                                   target="main"><font color=#FF0000>2</font></a><br>
                                                            </td>
                                                            <td><a href="wd_ed_new.asp?Year=2017&Month=7&Date=3"
                                                                   target="main">3</a><br>
                                                            </td>
                                                            <td><a href="wd_ed_new.asp?Year=2017&Month=7&Date=4"
                                                                   target="main">4</a><br>
                                                            </td>
                                                            <td><a href="wd_ed_new.asp?Year=2017&Month=7&Date=5"
                                                                   target="main">5</a><br>
                                                            </td>
                                                            <td><a href="wd_ed_new.asp?Year=2017&Month=7&Date=6"
                                                                   target="main">6</a><br>
                                                            </td>
                                                            <td><a href="wd_ed_new.asp?Year=2017&Month=7&Date=7"
                                                                   target="main">7</a><br>
                                                            </td>
                                                            <td><a href="wd_ed_new.asp?Year=2017&Month=7&Date=8"
                                                                   target="main">8</a><br>
                                                            </td>
                                                        </tr>
                                                        <tr align=center bgcolor=#F6F6F6 height='25'>
                                                            <td><a href="wd_ed_new.asp?Year=2017&Month=7&Date=9"
                                                                   target="main"><font color=#FF0000>9</font></a><br>
                                                            </td>
                                                            <td><a href="wd_ed_new.asp?Year=2017&Month=7&Date=10"
                                                                   target="main">10</a><br>
                                                            </td>
                                                            <td><a href="wd_ed_new.asp?Year=2017&Month=7&Date=11"
                                                                   target="main">11</a><br>
                                                            </td>
                                                            <td><a href="wd_ed_new.asp?Year=2017&Month=7&Date=12"
                                                                   target="main">12</a><br>
                                                            </td>
                                                            <td><a href="wd_ed_new.asp?Year=2017&Month=7&Date=13"
                                                                   target="main">13</a><br>
                                                            </td>
                                                            <td><a href="wd_ed_new.asp?Year=2017&Month=7&Date=14"
                                                                   target="main">14</a><br>
                                                            </td>
                                                            <td><a href="wd_ed_new.asp?Year=2017&Month=7&Date=15"
                                                                   target="main">15</a><br>
                                                            </td>
                                                        </tr>
                                                        <tr align=center bgcolor=#F6F6F6 height='25'>
                                                            <td><a href="wd_ed_new.asp?Year=2017&Month=7&Date=16"
                                                                   target="main"><font color=#FF0000>16</font></a><br>
                                                            </td>
                                                            <td><a href="wd_ed_new.asp?Year=2017&Month=7&Date=17"
                                                                   target="main">17</a><br>
                                                            </td>
                                                            <td bgcolor='#E3EDF8'><a
                                                                    href="wd_ed_new.asp?Year=2017&Month=7&Date=18"
                                                                    target="main"><font
                                                                    color='#333333'>18</font></a></b><br>
                                                            </td>
                                                            <td><a href="wd_ed_new.asp?Year=2017&Month=7&Date=19"
                                                                   target="main">19</a><br>
                                                            </td>
                                                            <td><a href="wd_ed_new.asp?Year=2017&Month=7&Date=20"
                                                                   target="main">20</a><br>
                                                            </td>
                                                            <td><a href="wd_ed_new.asp?Year=2017&Month=7&Date=21"
                                                                   target="main">21</a><br>
                                                            </td>
                                                            <td><a href="wd_ed_new.asp?Year=2017&Month=7&Date=22"
                                                                   target="main">22</a><br>
                                                            </td>
                                                        </tr>
                                                        <tr align=center bgcolor=#F6F6F6 height='25'>
                                                            <td><a href="wd_ed_new.asp?Year=2017&Month=7&Date=23"
                                                                   target="main"><font color=#FF0000>23</font></a><br>
                                                            </td>
                                                            <td><a href="wd_ed_new.asp?Year=2017&Month=7&Date=24"
                                                                   target="main">24</a><br>
                                                            </td>
                                                            <td><a href="wd_ed_new.asp?Year=2017&Month=7&Date=25"
                                                                   target="main">25</a><br>
                                                            </td>
                                                            <td><a href="wd_ed_new.asp?Year=2017&Month=7&Date=26"
                                                                   target="main">26</a><br>
                                                            </td>
                                                            <td><a href="wd_ed_new.asp?Year=2017&Month=7&Date=27"
                                                                   target="main">27</a><br>
                                                            </td>
                                                            <td><a href="wd_ed_new.asp?Year=2017&Month=7&Date=28"
                                                                   target="main">28</a><br>
                                                            </td>
                                                            <td><a href="wd_ed_new.asp?Year=2017&Month=7&Date=29"
                                                                   target="main">29</a><br>
                                                            </td>
                                                        </tr>
                                                        <tr align=center bgcolor=#F6F6F6 height='25'>
                                                            <td><a href="wd_ed_new.asp?Year=2017&Month=7&Date=30"
                                                                   target="main"><font color=#FF0000>30</font></a><br>
                                                            </td>
                                                            <td><a href="wd_ed_new.asp?Year=2017&Month=7&Date=31"
                                                                   target="main">31</a><br>
                                                            </td>
                                                            <td bgcolor=#ffffff>&nbsp;
                                                            </td>
                                                            <td bgcolor=#ffffff>&nbsp;
                                                            </td>
                                                            <td bgcolor=#ffffff>&nbsp;
                                                            </td>
                                                            <td bgcolor=#ffffff>&nbsp;
                                                            </td>
                                                            <td bgcolor=#ffffff>&nbsp;
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                        </table>


                                    </td>
                                    <td background="${pageContext.request.contextPath}/resources/image/imgs/img_main/right_boxbg04.gif"></td>
                                </tr>
                            </table>
                        </div>

                        <!-- //업무일지의 달력 -->

                    </td>
                </tr>
                <tr>
                    <td height="3"></td>
                </tr>
                <tr>
                    <td width="230" valign="top">

                        <!-- 보고선 지정현황 -->
                        <div class="homeCal">
                            <table width="100%"  border="0" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td background="${pageContext.request.contextPath}/resources/image/imgs/img_main/right_boxbg03.gif"></td>
                                    <td height="190" valign="top">




                                        <table  width="100%" border="0" cellpadding="0" cellspacing="0">
                                            <tr height="27" align="center" class="textB" >
                                                <td align="center"><B>[ 보고선 지정현황 ]</B></td>
                                            </tr>

                                            <tr><td height="1" bgcolor="FFFFFF"></td></tr>

                                            <tr>
                                                <td height="1" background="${pageContext.request.contextPath}/resources/image/imgs/ln02.gif"></td>
                                            </tr>
                                            <tr><td height="3" bgcolor="FFFFFF"></td></tr>

                                            <TR  onmouseout="this.style.background='white'" onmouseover="this.style.background='FAFAFA'">
                                                <TD align="left"></TD>
                                            </TR>


                                            <TR onmouseout="this.style.background='white'" onmouseover="this.style.background='FAFAFA'">
                                                <TD align="left">
                                                    <a href="WD_ED_NEW.asp?pGRP_C=2&pGRP_T=temp" target="main">
                                                        <img src="${pageContext.request.contextPath}/resources/image/folderopen.gif" border=0 align=absmiddle>temp
                                                    </a>
                                                </TD>
                                            </TR>

                                            <TR onmouseout="this.style.background='white'" onmouseover="this.style.background='FAFAFA'">
                                                <td align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <img src="${pageContext.request.contextPath}/resources/image/user.gif" border=0>&nbsp;(상무이사)&nbsp;&nbsp;장대호
                                                </td>
                                            </tr>

                                            <TR onmouseout="this.style.background='white'" onmouseover="this.style.background='FAFAFA'">
                                                <td align="left">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <img src="${pageContext.request.contextPath}/resources/image/user.gif" border=0>&nbsp;(대표이사)&nbsp;&nbsp;구상복
                                                </td>
                                            </tr>

                                        </TABLE>





                                    </td>
                                </tr>
                            </table>

                        </div>
                        <!-- 보고선 지정현황 -->

                    </td>
                </tr>
            </table>

        </td>
    </tr>
</table>

</body>

</body>
</html>