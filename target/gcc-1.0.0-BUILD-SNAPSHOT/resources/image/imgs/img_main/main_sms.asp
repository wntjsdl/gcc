<!--#include file ="config.inc"-->
<% 
Response.Expires = 0
cid = Session("cid")
uid = Session("uid") 
'pass = Session("pass") 

if uid = "" or cid = ""  then    '���� �Խ����� ���� ID�� ���ٸ�...
	response.redirect("notfound.asp?error=2")
end if

Set rs = server.CreateObject("ADODB.Recordset")
        
query = "SELECT  emp_c, eid_c, emp_t, dep_t, pos_t ,non_g, h_phone , phone, birthday, pro_t , pro_c , email, asp, ser_sta,admin ,VOD_C "&_
			   "FROM TB_ED_EMP_M "&_
	          "where com_c = '"&Session("cid")&"' and eid_c = '"&Session("uid")&"' "
 
     rs.Open query, OConn,1
%>	


<html>
<head>
<script>document.domain="gccware.gtu-solution.co.kr"</script>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr">
<link href="css/hyperasp.css" rel="stylesheet" type="text/css">
<title>:::::::::::  HyperASP�� - �� ��Ʈ��� �׷���� ASP ����  :::::::::::</title>


</head>

<SCRIPT LANGUAGE="JavaScript">
<!--
function winopen(){ 
var targeturl="http://gccware.gtu-solution.co.kr/hyperhelp/frame.html" // ��üȭ������ ������ ������ 
newwin=window.open("","","scrollbars") // ��ũ�ѹٸ� ����� �մϴ� 
if (document.all){ 
newwin.moveTo(0,0) 
newwin.resizeTo(screen.width,screen.height) 
} 
newwin.location=targeturl 
} 

function On_reg()
 {
  document.REG.submit();  
 }
 
 function On_she()
 {    
  document.SHE.submit();  
 }
 
 function On_adr()
 {   
  document.ADR.submit();  
 }
 
 function On_wd2()
 {    
  document.WD2.submit();  
 }

//-->
</SCRIPT>

<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">

<!-- ���� �̹��� --------------------------------------------------------------------------------------------------------------------------------------------------------------->

<!-- <table width="897"  border="0" cellpadding="0" cellspacing="0" align="center"> kei -->
<table width="897"  border="0" cellpadding="0" cellspacing="0" align="center">
	<!-- �������� (ADMIN) -->
	<tr>
		<td>
		<br>
		<% if  session("ADMIN") = "yes"  then %>
		<!-- <table width="800" border="0" cellspacing="0" cellpadding="0"> kei -->
		<table width="640" border="0" cellspacing="0" cellpadding="0">
		  <tr >
			<td colspan="7">

			  <table width="100%" border="0" cellspacing="0" cellpadding="0" background="imgs/img_main/ct2_bg.gif">
				<tr >
				  <td><img src="imgs/img_main/ct2_01.gif"></td>
				  <td width="600"><img src="imgs/img_main/ct2.gif"></td>
				  <td>

				  <table width="100%" border="0" cellspacing="0" cellpadding="0">
					<tr>
					  <td><a href=''ONCLICK="window.open('member/passedit.asp?pageinfo=main','��й�ȣ����','left=300,top=0 location=no,directories=no,status=no,toolbar=no,menubar=no,width=366,height=275,');return false"><img src="imgs/img_main/cpass2.gif" border=0></a></td>
					  <td><a href="superedit.asp"><img src="imgs/img_main/cmem2.gif" border=0></a></td> 
					  <td><a href="jwsoft/boardlist.asp"><img src="imgs/img_main/cinfo2.gif" border=0></a></td>
					</tr>
				  </table>
				  </td>
				  <td><img src="imgs/img_main/ct2_02.gif"></td>
				</tr>
			  </table>

			  </td>
		  </tr>
		  <tr>		  
			<td><a href="member/dep.asp"><img src="imgs/img_main/m01_new.gif" border=0></a></td>
			<td><a href="member/pos.asp"><img src="imgs/img_main/m02_new.gif" border=0></a></td>
			<td><a href="member/step1.asp"><img src="imgs/img_main/m03_new.gif" border=0></a></td>
			<!-- <td width="29"><a href="mysql/mysql.asp"><img src="imgs/img_main/m04_new.gif" border=0></a></td> -->
			<!-- <td width="29"><a href="http://mail.hyperasp.net/mail/admintools/memsize/index.neo"><img src="imgs/img_main/m05_new.gif" border=0></a></td> -->			
			<td><a href="member/user_Alist.asp"><img src="imgs/img_main/m06_new.gif"border=0></a></td>
			<td><a href="http://mail.hyperasp.net/mail/amin_mailling.neo"><img src="imgs/img_main/m07_new.gif" border=0></a></td>
		  </tr>
		</table>
		</td>
	</tr>
	<!-- //��������-->


<% else %>

  <tr>

<%	
	
	  ' Main �̹��� ��ü
	  '================================================
	  ' �� ��ü
	  '================================================
	  mm = Month(now)
	  If     1  = mm Then
			Mt = "top01"
	  ElseIf 2  = mm Then
			Mt = "top02"
	  ElseIf 3  = mm Then
			Mt = "top03"
	  ElseIf 4  = mm Then
			Mt = "top04"
	  ElseIf 5  = mm Then
			Mt = "top05"
	  ElseIf 6  = mm Then
			Mt = "top06"
	  ElseIf 7  = mm Then
			Mt = "top07"
	  ElseIf 8  = mm Then
			Mt = "top08"
	  ElseIf 9  = mm Then
			Mt = "top09"
	  ElseIf 10 = mm Then
			Mt = "top10"
	  ElseIf 11 = mm Then
			Mt = "top11"
	  Else
			Mt = "top12"			
	  End if
	  '================================================
	  ' �Ϻ� ��ü
	  '================================================
	  ddd = day(now)
	  If     ddd < 10  Then
			mt = mt&"_1"
	  ElseIf ddd > 20 Then
			mt = mt&"_3"
	  else
			mt = mt&"_2"
	  End If
	  '================================================
	  ' �ð��� ��ü
	  '================================================
	  dd = Hour(now) <!--���� �ð�����-->
	  If     dd < 11  Then
			img_rs = mt&"_1"
	  ElseIf dd > 15 Then
			img_rs = mt&"_3"
	  else
			img_rs = mt&"_2"
	  End If
	  



	  '------------------------------------------------
	  '�߼��� ������
	  '------------------------------------------------
	  ddd = day(now)
	  'response.write mm
	  'response.write ddd
'2008�� �����̹��� �Ⱓ 2008.02.13~2008.02.19
'	  If mm = 2 Then
'	  	IF ddd => 13 And ddd < 19 Then
'	  		img_rs = "sulday"
'	   	End IF
'	  End If
'2008�� �߼��̹��� �Ⱓ 2008.09.09~2008.09.15
'	  If mm = 9 Then
'	  	IF ddd > 8 and ddd < 16 Then
'	  		mt = "chusukday"
'			  dd = Hour(now) <!--���� �ð�����-->
'				If dd < 11  Then
'					img_rs = mt&"_1"
'	  		ElseIf dd >= 11 and dd < 15 Then
'					img_rs = mt&"_2"
'	  		ElseIf dd >= 15 Then
'					img_rs = mt&"_3"
'	  		else
'					img_rs = mt&"_3"
'	  		End If
'	   	End IF
'	  End If
'response.write img_rs
	  	
	  '------------------------------------------------  
	  
	  'yyyymmdd = left(now,4)&mid(now,6,2)&mid(now,9,2)
	  'mm = Hour(now)
	  'sql ="select * from tb_main_img where sdate <= '"& yyyymmdd &"' and edate >= '"& yyyymmdd &"'"
	  
	  'Set img_rs = Server.CreateObject("ADODB.RecordSet")
	  'img_rs.Open SQL, oConn
	  'img_rs.Open mm
	  'if img_rs.eof or img_rs.bof then
		 'main_img = datepart("ww",now())&".jpg"
	  'else
		 'main_img = img_rs("img_name")
	  'end if 
	  
	  'img_rs.close          
	
%>	

     <td width="897" height="161" background="imgs/img_main/<%=img_rs%>.jpg">

      <table width="100%" height="160"  border="0" cellpadding="0" cellspacing="0">
        <tr>
          <td width="668" rowspan="2" background="imgs/img_main/img_mainbg.gif"></td>
		  <td><br><img src="imgs/img_main/info_top.gif"></td>
        </tr>
        <tr>
          <td width="229" valign="top">

		  <!-- ������ -->
	  <table width="210" border="0" align="center" cellpadding="0" cellspacing="0" style="padding-left: 4px">
            <tr>
              <td colspan="2"> ���� : <%=rs("EMP_T")%>[<%=rs("EID_C")%>]  </td>
            </tr>
            <tr>
              <td colspan="2"> ����ó : <%=rs("H_PHONE")%> </td>
            </tr>
			<% if  rs("asp") = "�̻��"  then %>
			<% else %>
            <tr>
              <td colspan="2"> �μ�/���� : <%=rs("DEP_T")%>/<%=rs("POS_T")%></td>
            </tr>
             <% end if %>
            <tr>
              <td>�׷���� : <%= rs("asp")%></td>
              <td>����� : <% remain_day = datediff("d",left(rs("ser_sta"),10),now())
                      response.write remain_day&"��"  %>
			 </td>
            </tr>
            <tr>
              <td colspan="2"> ������ : <%=left(rs("ser_sta"),10)%></td>
            </tr>

            <tr align="center">
              <td height="27" colspan="2"><a href='' ONCLICK="window.open('member/passedit.asp?pageinfo=main','��й�ȣ����','left=300,top=0 location=no,directories=no,status=no,toolbar=no,menubar=no,width=366,height=275,');return false"><img src="imgs/img_main/btn_01.gif" border="0"></a> 
				<% if  rs("asp") = "�̻��"  then %>
				<% else %>
			  <a href='' ONCLICK="window.open('member/memedit.asp?pageinfo=main','������������','left=300,top=0 location=no,directories=no,status=no,toolbar=no,menubar=no,width=450,height=450,');return false"><img src="imgs/img_main/btn_02.gif" border="0"></a> 
				<% end if %>
              </td>
            </tr>
          </table> 
		  <!-- //������ �� -->

	   </td>
        </tr>
      </table>

    </td>
  </tr>
</table>
<% end if %>
<!-- // ���� �̹��� ------------------------------------------------------------------------------------------------------------------------------------------------------------->

<!-- ������ �뷮���� -->
<table width="897"  border="0" cellpadding="0" cellspacing="0" align="center">
  <tr>
    <td height="10" bgcolor="F7F7F7" >	

<!-- �뷮���� ���������� -->
<!--	<iframe src="http://mail.hyperasp.net/mail_new3/hyper_top_frame.php"  scrolling="no" name="mail" width="897" height="35" marginwidth="0" marginheight="0" frameborder=0 align="middle">
	</iframe>     --by kei -->
<!-- //�뷮���� ���������� �� -->


	</td>
  </tr>
    <tr>
    <td colspan="2" height="1" bgcolor="BDBDBD"></td>
  </tr>
</table>
<!-- //������ �뷮���� -->


<!--=======================================  �ٵ���� ===================================================--->

<table width="897" border="0" cellpadding="0" cellspacing="0" align="center">
  <tr>
    <td width="669" valign="top">

<!-- left ���� ---------------------------------------------------------------------------------------------------------------------------------------------------------------------->


	  <table width="100%"  border="0" cellpadding="0" cellspacing="0">
        <tr>
          <td colspan="2" style="padding-top: 5px;padding-left: 7px">

		 <!--  ���ڸ����� -- by kei �׿������� ���� --> 
		  <iframe src="http://mail.hyperasp.net/mail/mail_info.neo"  scrolling="no" name="mail" width="648" height="250" marginwidth="0" marginheight="0" frameborder=0 align="middle">
		  </iframe>
		 <!-- //���ڸ����� -->	 
  
		  
		  </td>
        </tr>

<% if  session("ADMIN") = "yes"  then %>
<% else %>   
        <tr>
          <td width="50%" style="padding-top: 10px"  valign="top">
		  <!-- �������� -->
		  <table width="95%"  border="0" align="center" cellpadding="0" cellspacing="0">
            <tr>
              <td height="36">
			    <table width="98%"  border="0" cellpadding="0" cellspacing="0" background="imgs/img_main/board_titlebg.gif">
                  <tr>
                    <td width="82%" height="36"><a href="/tboard/qa_list.asp?id=tboard1"><img src="imgs/img_main/board_title01.gif"  border="0" ></a></td>
                    <td width="18%"><a href="/tboard/qa_list.asp?id=tboard1"><img src="imgs/img_main/board_more.gif" border="0"></a></td>
                  </tr>			  
                </table>
				</td>
            </tr>
            <tr>
          <td width="50%" style="padding-top: 10px"  valign="top">
			<!--#include virtual="/main/notice_new.asp"--> 
			</td>
            </tr>
          </table>
		  <!-- //�������� ��-->	
		  
		  </td>
          <td width="50%" style="padding-top: 10px"  valign="top">

		  <!-- ������ ȸ�� �� ���� -->
		  <table width="95%"  border="0" align="center" cellpadding="0" cellspacing="0" >
            <tr>
              <td height="36" >
                <table width="98%"  border="0" cellpadding="0" cellspacing="0" background="imgs/img_main/board_titlebg.gif">
                  <tr>
                    <td width="82%" height="36"><a href="javascript:SHE.submit()"><img src="imgs/img_main/board_title02.gif"  border="0" ></a></td>
                    <td width="18%"><a href="javascript:SHE.submit()"><img src="imgs/img_main/board_more.gif" border="0"></a></td>
                  </tr>
              </table>
			  </td>
            </tr>
            <tr>
          <td width="50%" style="padding-top: 10px"  valign="top">
			<!--#include virtual="/main/day_new.asp"-->	
		 </td>
            </tr>
          </table>
		  <!-- //������ ȸ�� �� ���� ��-->
		  </td>
        </tr>




	<tr>
		<td style="padding-top:10px;">

			<!-- ���ڰ��� ��Ȳ (��ȹ���, ���繮��) -->
			<table width="95%"  border="0" align="center" cellpadding="0" cellspacing="0">
				<tr>
					<td height="36" >
						<table width="98%"  border="0" cellpadding="0" cellspacing="0" background="imgs/img_main/board_titlebg.gif">
							<tr>
								<td width="82%" height="36">
									<!--a href="http://gccware.gtu-solution.co.kr/hw_idc/frame.asp"-->
									<img src="imgs/img_main/board_title03.gif" border="0">
									<!--/a-->
								</td>
									<!--td width="18%"><a href="http://gccware.gtu-solution.co.kr/hw_idc/frame.asp"><img src="imgs/img_main/board_more.gif" border="0"></a></td-->
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td style="padding-top:9px;">
						<!--#include virtual="/main/decision.asp"-->
					</td>
				</tr>
			</table>
			<!-- //���ڰ��� ��Ȳ ��-->
		</td>

		<td style="padding-top: 7px">

			<!-- ���ڰ��� ��û�� -->
			<table width="95%"  border="0" align="center" cellpadding="0" cellspacing="0">
				<tr>
					<td height="36" >
						<table width="98%"  border="0" cellpadding="0" cellspacing="0" background="imgs/img_main/board_titlebg.gif">
							<tr>
								<td width="82%" height="36"><img src="imgs/img_main/board_title04.gif" border="0"></a></td>
								<td width="18%"></td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<td style="padding-top: 8px">
						<table width="100%" border="0" cellspacing="0" cellpadding="0" style="padding-left: 10px">
							<tr>
								<td width="90%" align="center">
					  			<table width="100%" border="0" cellspacing="0" cellpadding="0">					  
                	<% if session("cid") ="ycbank" then %>
										<tr>						  
											<td height="17"><img src="imgs/img_main/board_dot.gif"><a href="/hw_idc/frame_move.asp?file_no=W11">��������</a></td>
											<td>						<img src="imgs/img_main/board_dot.gif"><a href="/hw_idc/frame_move.asp?file_no=W12">������</a></td>
										</tr>
										<tr> 
                      <td height="17"><img src="imgs/img_main/board_dot.gif"><a href="/hw_idc/frame_move.asp?file_no=W13">���α�ȼ�</a></td>
                      <td>						<img src="imgs/img_main/board_dot.gif"><a href="/hw_idc/frame_move.asp?file_no=W14">���빮��</a></td>
                    </tr>
                    <tr> 
                      <td height="17"><img src="imgs/img_main/board_dot.gif"><a href="/hw_idc/frame_move.asp?file_no=ED2">����ó����</a></td>
                      <td>						<img src="imgs/img_main/board_dot.gif"><a href="/hw_idc/frame_move.asp?file_no=ED3">�����û��</a></td>
                    </tr>
                    <tr> 
                      <td height="17"><img src="imgs/img_main/board_dot.gif"><a href="/hw_idc/frame_move.asp?file_no=ED4">���庹��</a></td>
                      <td>						<img src="imgs/img_main/board_dot.gif"><a href="/hw_idc/frame_move.asp?file_no=ED7">ȸ��</a></td>
                    </tr>
									<% else %>
                    <tr> 
                      <td height="17"><img src="imgs/img_main/board_dot.gif"><a href="/hw_idc/frame_move.asp?file_no=W1">ǰ�Ǽ�</a></td>
                      <td>						<img src="imgs/img_main/board_dot.gif"><a href="/hw_idc/frame_move.asp?file_no=ED1">������Ǽ�</a></td>
                    </tr>
                    <tr> 
                      <td height="17"><img src="imgs/img_main/board_dot.gif"><a href="/hw_idc/frame_move.asp?file_no=ED2">����ó����</a></td>
                      <td>						<img src="imgs/img_main/board_dot.gif"><a href="/hw_idc/frame_move.asp?file_no=ED3">�����û��</a></td>
                    </tr>
                    <tr> 
                      <td height="17"><img src="imgs/img_main/board_dot.gif"><a href="/hw_idc/frame_move.asp?file_no=ED4">���庹��</a></td>
                      <td>						<img src="imgs/img_main/board_dot.gif"><a href="/hw_idc/frame_move.asp?file_no=ED4">�������ǥ</a></td>
                    </tr>
                    <tr> 
                      <td></td>
                      <td></td>
                    </tr>
                    <tr> 
                      <td height="17"><img src="imgs/img_main/board_dot.gif"><a href="/hw_idc/frame_move.asp?file_no=ED6">�Ǹ���ǥ</a></td>
											<td>						<img src="imgs/img_main/board_dot.gif"><a href="/hw_idc/frame_move.asp?file_no=ED7">ȸ��</a></td>
										</tr>
									<% end if %>
										<tr> 
                    	<td height="17"><img src="imgs/img_main/board_dot.gif"><a href="/hw_idc/manualII/frame.asp">����� �޴���</a></td>
											<td>&nbsp;</td>
										</tr>
									</table>
								</td>
                <td><img src="imgs/img_main/board_img.gif"></td>
							</tr>
						</table>	
					</td>
				</tr>
			</table>
			<!-- //���ڰ��� ��û�� ��-->

		</td>
	</tr>





					<% end if %>
		  </td>
        </tr>
    </table>
	<br>
<!-- // left �� --------------------------------------------------------------------------------------------------------------------------------------------------------------------------->

<% if  session("ADMIN") = "yes"  then %>
<% else %>  

	<!-- ��� -->
    <table width="98%"  border="0" cellpadding="0" cellspacing="0" align="center">
      <tr align="center">
        <td><img src="imgs/img_main/img10_1.gif" style="cursor type:hand" onclick="window.open('http://mail.hyperasp.net/file/index.neo','hard','scrollbars=yes,toolbar=no,directories=no,status=nos,width=900,height=570,top=0,left=0,resizable=yes,menubar=no');"></td>
        <td><img src="imgs/img_main/img11_1.gif" style="cursor type:hand" Onclick="On_wd2();"></td>
        <td><img src="imgs/img_main/img12_1.gif" style="cursor type:hand" Onclick="On_adr();"></td>
        <td><img src="imgs/img_main/img13_1.gif" style="cursor type:hand" Onclick="On_she();"></td>
        <td><img src="imgs/img_main/img14_1.gif" style="cursor type:hand" Onclick="On_reg();"></td>
      </tr>
      <tr align="center">
        <td colspan="5" align="center">
        	<table width="500" border="0" cellspacing="0" cellpadding="0">
		  <tr>
		    <td><table width="416" border="0" cellspacing="0" cellpadding="0">
		      <tr>
		        <td><img src="imgs/img_main/poptitle.gif" width="85" height="47" /></td>
		        <td><img src="imgs/img_main/express.gif" width="123" height="47" /></td>
		        <td><img src="imgs/img_main/xp.gif" width="99" height="47" /></td>
		        <td><img src="imgs/img_main/outlook_2007.gif" width="109" height="47" /></td>
		      </tr>
		    </table></td>
		    <td>&nbsp;</td>
		    <td><img src="imgs/img_main/hypermess.gif" width="229" height="47" /></td>
		  </tr>
		</table>
        </td>
      </tr>
    </table>
	<!--// ��� �� -->

	<% end if %>
	</td>
    <td width="228" valign="top" style="padding-top: 5px">

<!-- right �κ� ���� --------------------------------------------------------------------------------------------------------------------------------------------------------------------->

      <table width="100%"  border="0" cellpadding="0" cellspacing="0">
        <tr>
          <td>
	 	<!-- ���°��� -->
		  <table width="100%"  border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td width="6%" rowspan="3"><img src="imgs/img_main/ri_left.gif"></td>
              <td width="88%"><img src="imgs/img_main/ri_top.gif"></td>
              <td width="6%" rowspan="3"><img src="imgs/img_main/ri_right.gif"></td>
            </tr>
            <tr>
              <td height="130" valign="top">

                <table width="100%"  border="0" cellpadding="0" cellspacing="0">
                  <tr>
                    <td><img src="imgs/img_main/ri_title01.gif"></td>
                  </tr>
                  <tr>
                    <td height="50">
		                <iframe name='hyper01' src='/attend/attend.asp' width='210' height='89' align=center  STYLE='border-right: dotted white 0px; border-left: dotted white 0px; border-top: dotted white 0px; border-bottom: dotted white 0px;' border='0' frameborder='no' scrolling='no'></iframe>
					  <!--table width="180" border="0" align="center" cellpadding="0" cellspacing="0">
                        <tr>
                          <td width="71%"><span style="background-color:DFF1FE">&nbsp;��ٽð� </span> : 09 55��</td>
                          <td width="29%" rowspan="2"><img src="imgs/img_main/ri_btn.gif"></td>
                        </tr>
                        <tr>
                          <td><span style="background-color:DFF1FE">&nbsp;��ٽð� </span> : 00�� 00��</td>
                        </tr>
                    </table>

					</td>
                  </tr>
                  <tr>
                    <td height="30">
					<div align="center"><a href='' onclick="window.open('member/passedit.asp?pageinfo=main','��й�ȣ����','left=300,top=0 location=no,directories=no,status=no,toolbar=no,menubar=no,width=366,height=275,');return false"><img src="imgs/img_main/btn_03.gif" width="86" height="18" border="0"></a><a href='' onclick="window.open('member/passedit.asp?pageinfo=main','��й�ȣ����','left=300,top=0 location=no,directories=no,status=no,toolbar=no,menubar=no,width=366,height=275,');return false"> &nbsp;<img src="imgs/img_main/btn_04.gif" width="86" height="18" border="0"></a></div-->
					</td>
                  </tr>
              </table>
			  </td>
            </tr>
            <tr>
              <td><img src="imgs/img_main/ri_bottom.gif"></td>
            </tr>
          </table>
	<!-- ���°��� --> 
		  </td>
        </tr>

<% if  session("ADMIN") = "yes"  then %>   
<% else %>

        <tr>
          <td height="5"></td>
        </tr>
        <tr>
          <td>
	<!-- ��������-->

	<!--#include virtual="/main/day_2006.asp"-->

	<!-- //��������-->			
		  </td>
        </tr>
        <tr>
          <td height="5"></td>
        </tr>
        <tr>
          <td>

		  <!-- pop ������� -->
		 <!--
		  <table width="100%"  border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td width="4%"><img src="imgs/img_main/right_box01.gif" ></td>
              <td width="95%" background="imgs/img_main/right_boxbg01.gif"></td>
              <td width="3%"><img src="imgs/img_main/right_box02.gif"></td>
            </tr>
            <tr>
              <td background="imgs/img_main/right_boxbg03.gif"></td>
              <td height="69" valign="top" background="imgs/img_main/right_pop.gif"><br>
                <br>

                <table width="90%"  border="0" align="center" cellpadding="1" cellspacing="0">
               
                <tr>
                  <td><a href='#' ONCLICK="window.open('/main/mail_01.htm','guest','left=200,top=10 location=no,directories=no,status=no,toolbar=no,menubar=no,width=615, height=600,scrollbars=yes');return false">Outlook Express ����</td>
                </tr>
                <tr>
                  <td><a href='#' ONCLICK="window.open('/main/mail_02.htm','guest','left=200,top=10 location=no,directories=no,status=no,toolbar=no,menubar=no,width=615, height=600,scrollbars=yes');return false">Outlook XP ����</td>
                </tr>
                <tr>
                  <td><a href='#' ONCLICK="window.open('/main/mail_03.htm','guest','left=200,top=10 location=no,directories=no,status=no,toolbar=no,menubar=no,width=815, height=600,scrollbars=yes');return false">Outlook 2007 ����</td>
                </tr>
<!--
                <tr>
                  <td><a href='#' ONCLICK="window.open('/main/jweditor.htm','guest','left=200,top=10 location=no,directories=no,status=no,toolbar=no,menubar=no,width=615, height=600,scrollbars=yes');return false">���ڰ��� �Է±⼳ġ</td>
                </tr>
-->                
<!--                
                  
              </table>
			  
			  </td>
              <td background="imgs/img_main/right_boxbg04.gif"></td>
            </tr>
            <tr>
              <td><img src="imgs/img_main/right_box03.gif" ></td>
              <td  background="imgs/img_main/right_boxbg02.gif"></td>
              <td><img src="imgs/img_main/right_box04.gif" ></td>
            </tr>
          </table>
-->
		  <!-- pop ������� -->	
		  
		  </td>
        </tr>
        <tr><td height="5"></td></tr>

		  <!-- ������ �޽��� -->	
		<tr>
		  <td width="4%" align="center">&nbsp; <!-- ���� ������ �޴��� -->
		  </td>
		</tr>
		  <!-- //������ �޽��� -->	

<% end if %>
      </table>
<!-- //right �κ� �� -------------------------------------------------------------------------------------------------------------------------------------------------------------->
    </td>
  </tr>
        <tr><td height="5"></td></tr>
</table>

<!--=======================================  //�ٵ� ==================================================--->

<!-- �ϴ� ī�Ƕ����� �κ� -->
<table width="897"  border="0" cellpadding="0" cellspacing="0" align="center">
  <tr><td height="1" bgcolor="E7E7E7"></td></tr>
  <tr><td height="1" bgcolor="FFFFFF"></td></tr>
  <tr>
    <td height="30" bgcolor="FAFAFA" style="padding-left: 25px"><img src="imgs/img_main/copyright.gif"></td>
  </tr>
  <tr><td height="1" bgcolor="FFFFFF"></td></tr>
  <tr><td height="1" bgcolor="E7E7E7"></td></tr>
</table>
<!-- //�ϴ� ī�Ƕ����� �κ� -->


<FORM METOD="POST" NAME="REG" ACTION="./member/user_list.asp">
   <INPUT TYPE="hidden" NAME="txtCOM_C" VALUE=<%=cid%>>
   <INPUT TYPE="hidden" NAME="txtEMP_C" VALUE=<%=uid%>>
   <INPUT TYPE="hidden" NAME="txtFLG_G" VALUE="reg">
</FORM>

<FORM METOD="POST" NAME="ADR" ACTION="http://mail.hyperasp.net/mail_new/adress.php">
</FORM>

<FORM METOD="POST" NAME="WD2" ACTION="hw_wd/wd_ed/wd_ed_new.asp">
   <INPUT TYPE="hidden" NAME="txtCOM_C" VALUE=<%=cid%>>
   <INPUT TYPE="hidden" NAME="txtEMP_C" VALUE=<%=uid%>>
   <INPUT TYPE="hidden" NAME="txtFLG_G" VALUE="WD2">
</FORM>

<FORM METOD="POST" NAME="SHE" ACTION="calendar/diary.asp">
   <INPUT TYPE="hidden" NAME="txtCOM_C" VALUE=<%=cid%>>
   <INPUT TYPE="hidden" NAME="txtEMP_C" VALUE=<%=uid%>>
</FORM>

<FORM METOD="POST" NAME="Form1" ACTION="http://mail.hyperasp.net/mail/mail_info.neo">
   <INPUT TYPE="hidden" NAME="userid" VALUE=<%=uid%>>
   <INPUT TYPE="hidden" NAME="pass" VALUE=<%=pass%>>
   <INPUT TYPE="hidden" NAME="part" VALUE=<%=cid%>>
</FORM>

</body>
</html>
<script>
<!--
	//document.Form1.target = "mail";
	//document.Form1.submit();
-->
</script>