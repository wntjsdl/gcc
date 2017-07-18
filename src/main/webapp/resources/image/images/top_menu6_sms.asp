<!--#include virtual ="/config.inc" -->
<%
Response.Buffer = true
Response.Expires=0

  cid 		= Session("cid")
  uid 		= Session("uid") 
  varDept	= Session("dep_c")
  varPos	= Session("pos_c")  

'response.write "id_cook : " & request.cookies ("id_cook") &"<br>"
'response.write "name_cook : " &  request.cookies ("name_cook") &"<br>"
'response.write "domain_cook : " &  request.cookies ("domain_cook") &"<br>"
'response.write "domain_name_cook : " &  request.cookies ("admin_name_cook") &"<br>"
'response.write "발생된쿠키들 : " &Request.ServerVariables("HTTP_COOKIE")

	SQL_TBOARD = "SELECT tboard1, tboard2, tboard3, tboard4, tboard5, tboard6, insa_gubun, groupware  FROM TB_ED_EMP_M WHERE COM_C='"&Session("cid")&"' AND EID_C ='"&Session("uid")&"'"
	'Response.Write SQL_TBOARD
	
	Set TboardRS = Server.CreateObject("ADODB.RecordSet")
	TboardRS.Open SQL_TBOARD,oConn		    

if TboardRS("insa_gubun") = "1" or TboardRS("insa_gubun") = "2" or TboardRS("insa_gubun") = "3" then '인사정보 억세스권한 채크
	ocount=6
else 
	ocount=6
end if

'Response.Write ocount

  SQL_ASPCHECK = "SELECT count(*) as aspcount FROM TB_ED_EMP_M WHERE COM_C='"&Session("cid")&"' and asp = '사용'"
  
  Set aspRS = Server.CreateObject("ADODB.RecordSet")
  aspRS.Open SQL_ASPCHECK,oConn	

  If aspRS.EOF Or aspRS.BOF Then
	aspcheck = "no"
  Else 
		If 	aspRS("aspcount") > 0 Then
			aspcheck = "yes"
		Else
			aspcheck = "no"
		End if
  End if
   Set aspRS = nothing
  ' Response.write aspcheck

 %>


<html>
<head>
<script>document.domain="gccware.gtu-solution.co.kr"</script>
<link href="css/hyperasp.css" rel="stylesheet" type="text/css">
<title> Super Communication Tool for Intranet : HyperASP </title>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr">

<%'--- 메신저 추가 코드 : 07. 04 조홍주 -- %>


<%'--- 추가코드 end %>


<script language="JavaScript" type="text/JavaScript">
<!--
function MM_swapImgRestore() { //v3.0
  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
}

function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}

function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}

function MM_swapImage() { //v3.0
  var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
   if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
}
//-->
</script>




<script language="JavaScript" type="text/JavaScript">
<!--
function MM_reloadPage(init) {  //reloads the window if Nav4 resized
  if (init==true) with (navigator) {if ((appName=="Netscape")&&(parseInt(appVersion)==4)) {
    document.MM_pgW=innerWidth; document.MM_pgH=innerHeight; onresize=MM_reloadPage; }}
  else if (innerWidth!=document.MM_pgW || innerHeight!=document.MM_pgH) location.reload();
}
MM_reloadPage(true);

function MM_showHideLayers() { //v6.0
  var i,p,v,obj,args=MM_showHideLayers.arguments;
  for (i=0; i<(args.length-2); i+=3) if ((obj=MM_findObj(args[i]))!=null) { v=args[i+2];
    if (obj.style) { obj=obj.style; v=(v=='show')?'visible':(v=='hide')?'hidden':v; }
    obj.visibility=v; }
}
//-->
</script>

<script language="JavaScript"> 

ns=window.navigator.appName == "Netscape" 
ie=window.navigator.appName == "Microsoft Internet Explorer" 

function openIt(x) { 

// NS 의 경우 

if(ns) { 
   showbox= document.layers[x+1] 
     showbox.visibility = "show"; 
       showbox.top=44; 
       
    var items = <%=ocount%>      ; // 메뉴의 갯수 
     for (i=1; i<=items; i++) { 
      elopen=document.layers[i] 
        if (i != (x + 1)) { 
          elopen.visibility = "hide" } 
            } 
  }     

// IE 일 경우 

if(ie) { 
   curEl = event.toElement 
   curEl.style.background = "yellow"   // 마우스 오버시 배경색 

   showBox = document.all.box[x]; 
     showBox.style.visibility = "visible"; 
        showBox.style.top = 46;  // 서브메뉴의 위쪽여백 
         
   var items = <%=ocount%>  // 메뉴의 갯수 
    for (i=0; i<items; i++) { 
      elOpen=document.all.box[i] 
       barEl=document.all.mnubar[i] 
        if (i != x){ 
          elOpen.style.visibility = "hidden" 
          barEl.style.background = "red" // 비활성메뉴 배경색 
                  } 
     } 
   } 
} 

function closeIt() { 
   var items = <%=ocount%> // 메뉴의 갯수 
     for (i=0; i<items; i++) { 
       if(ie){ 
        document.all.box[i].style.visibility = "hidden" 
          barEl=document.all.mnubar[i] 
           barEl.style.background = "red" 
       } 
       if(ns){ document.layers[i+1].visibility = "hide"}           
} 
} 



function winopen(){ 
var targeturl="http://gccware.gtu-solution.co.kr/hyperhelp/frame.html" // 전체화면으로 열어줄 페이지 
newwin=window.open("","","scrollbars") // 스크롤바만 생기게 합니다 
if (document.all){ 
newwin.moveTo(0,0) 
newwin.resizeTo(screen.width,screen.height) 
} 
newwin.location=targeturl 
} 

function Clock()
{
			var nowTime = new Date();
			var year = nowTime.getFullYear();
			var month = nowTime.getMonth();
			var day = nowTime.getDate();
			var hours = nowTime.getHours();
			var minutes = nowTime.getMinutes();
			var seconds = nowTime.getSeconds();
			var ampm = "AM";

			month = month + 1;
			if (month <= 9)  { month = "0" + month ;}
			if (day <= 9)	 { day = "0" + day; }	
			if (hours > 12)  { ampm = "PM"; }
			if (hours == 0)  { hours = 12; }
			if (minutes <= 9){ minutes = "0" + minutes; }
			if (seconds <= 9){ seconds = "0" + seconds; }

			var	now = "" + year + "/" + month + "/" + day + " " + hours +  ":" + minutes +  ":" + seconds + "";
			
			t.value = now;
			setTimeout("Clock()", 1000);
}	

function swpop()
{
		var winl = (screen.width - 1024) / 5;
		var wint = (screen.height - 768) / 5;
		winprops = 'width=480, height=380 , top='+wint+',left='+winl+',location=no,directories=no,status=no,toolbar=no,menubar=no,scrollbars=auto, resizable = yes'
		win = window.open("swpop.asp","firstpop",winprops)
}
</script> 

<FORM METOD="POST" NAME="WH" ACTION="http://mail.hyperasp.net/mail/index_webf.neo" TARGET="main">
   <INPUT TYPE="hidden" NAME="comp_c" VALUE=<%=session("cid")%>>
   <INPUT TYPE="hidden" NAME="empl_c" VALUE=<%=session("uid")%>>
</FORM>

<FORM METOD="POST" NAME="MAL" ACTION="http://mail.hyperasp.net/mail_new3/pop.php?box=INBOX" TARGET="main">
</FORM>

<FORM METOD="POST" NAME="ADR" ACTION="http://mail.hyperasp.net/mail/index_addr.neo" TARGET="main">
</FORM>

</head>


<body  leftmargin="0" topmargin="0" marginwidth="0" marginheight="0" onLoad="MM_preloadImages('images/top_menu01_on.gif','images/top_menu02_on.gif','images/top_menu03_on.gif','images/top_menu04_on.gif','images/top_menu05_on.gif','images/top_menu06_on.gif','images/top_menu07_on.gif','images/top_menu08_on.gif','images/top_menu09_on.gif','images/top_menu10_on.gif')">
<!-- #include file=calendar/cal_logic.asp-->

<!-- 상단 네비게이션 부분 시작 =============================================================================------->
<table width="100%"  border="0" cellpadding="0" cellspacing="0" align="center">
  <tr>
    <td>
	<!-- 회사로고 -->
      <table width="897"  border="0" align="center" cellpadding="0" cellspacing="0">
	  <tr>
		<td width="16%">

<!-- 사진 및 세부 사항 시작-->
<%
              set fc=server.createobject("scripting.filesystemobject")
	      PATH=server.mappath(".") &"\logo\"
	
              RealPath=Path&cid&".gif"

              if fc.fileexists(RealPath) then
              image_sign=cid
              else
              image_sign="none"
              end if
 'response.write image_sign      
%>
<!-- 사진 및 세부 사항 시작-->

		<a href="main5.asp" target="main"  target="_top"><img src="logo/<%=image_sign%>.gif" alt="회사로고" border="0"></a></td>
		<td width="80%">
		<div align="right">
			<table width="300"  border="0" cellpadding="0" cellspacing="0">
			  <tr>
				 <td width="80">&nbsp;
				 	<!--<a href="javascript:msgOpen()"><img src="images/top_menu_mess.gif" alt="메신저" border="0"></a>-->
				 </td>
				 <td><a href="javascript:swpop()"><img src="images/main_viewericon.gif" alt="뷰어다운로드" border="0"></a></td>
				 <td><a href="logout.asp"><img src="images/top_menu_logout.gif" alt="로그아웃" border="0"></a></td>
				 <td width="15"></td>
			  </tr>
			</table>

		</div>	
		</td>
	  </tr>
      </table>
	<!-- //회사로고 끝-->

    </td>
  </tr>
  <tr>
    <td>
	<!-- 탑 메뉴 -->
	<table width="100%" border="0" cellpadding="0" cellspacing="0" align="center"  >
      <tr>
         <td width="9"><img src="images/top_menu_left.gif"></td>
        <td width="100%" height="38" background="images/top_menu_bg.gif">

		  <table width="897"  border="0" cellpadding="0" cellspacing="0" align="center">
            <tr>

			<!-- Layer1 편지쓰기-->
              <td width="90" align="center"><a href="http://mail.hyperasp.net/mail/index_mail.neo" id=mnubar target="main"  onmouseout="MM_swapImgRestore()"><img src="images/top_menu01.gif" alt="전자메일" name="Image19" width="46" border="0" onMouseMove="MM_showHideLayers('Layer1','','hide','Layer2','','hide','Layer3','','hide','Layer4','','hide','Layer5','','hide','Layer6','','hide','Layer9','','hide')"></a></td>
              <td width="4"><img src="images/top_menu_line.gif"></td>

			<!-- Layer2 웹하드-->
              <td width="80" align="center"><!--<a href=# onclick=window.open('http://mail.hyperasp.net/mail/index_webf.neo','hard','scrollbars=yes,toolbar=no,directories=no,status=nos,width=900,height=570,top=0,left=0,resizable=yes,menubar=no');>--><a href=# onclick="javascript:document.WH.submit();"><onmouseout="MM_swapImgRestore()"><img src='images/top_menu02.gif' alt='웹하드' name='Image2' border='0' id='Image2'></a></td>
              <td width='4'><img src="images/top_menu_line.gif"></td>


			<!-- Layer3 주소록-->
              <td width="80" align="center"><a href="javascript:ADR.submit()" id=mnubar  onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image4','','images/top_menu04_on.gif',1)"><img src="images/top_menu04.gif" alt="주소록" name="Image4" border="0" id="Image4" ></a></td>
              <td width="4"><img src="images/	top_menu_line.gif"></td>

			<!-- Layer4 받은편지함
              <td width="86" align="center"><a href="http://mail.hyperasp.net/mail/index_mail.neo" id=mnubar target="main" onmouseout="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image20','','images/top_menu20_on.gif',1)"><img src="images/top_menu20.gif" alt="받은편지함" name="Image20" border="0" id="Image20" ></a></td>
              <td width="4"><img src="images/top_menu_line.gif"></td>

			<!-- Layer5 보낸편지함
              <td width="86" align="center"><a href="http://mail.hyperasp.net/mail/index_mail.neo" id=mnubar target="main" onmouseout="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image21','','images/top_menu21_on.gif',1)"><img src="images/top_menu21.gif" alt="보낸편지함" name="Image21" border="0" id="Image21" onMouseMove="MM_showHideLayers('Layer1','','hide','Layer2','','hide','Layer3','','hide','Layer4','','hide','Layer5','','hide','Layer6','','hide','Layer9','','hide')"></a></td>
              <td width="4"><img src="images/top_menu_line.gif"></td>

			<!-- Layer6 지운편지함
              <td width="86" align="center"><a href="http://mail.hyperasp.net/mail/index_mail.neo" id=mnubar target="main" onmouseout="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image22','','images/top_menu22_on.gif',1)"><img src="images/top_menu22.gif" alt="지운편지함" name="Image22" border="0" id="Image22" onMouseMove="MM_showHideLayers('Layer1','','hide','Layer2','','hide','Layer3','','hide','Layer4','','hide','Layer5','','hide','Layer6','','hide','Layer9','','hide')"></a></td>
              <td width="4"><img src="images/top_menu_line.gif"></td>

			<!-- Layer7 임시보관함
              <td width="86" align="center"><a href="http://mail.hyperasp.net/mail/index_mail.neo" target="main" onmouseout="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image23','','images/top_menu23_on.gif',1)"><img src="images/top_menu23.gif" alt="임시보관함" name="Image23" border="0" id="Image23" onMouseMove="MM_showHideLayers('Layer1','','hide','Layer2','','hide','Layer3','','hide','Layer4','','hide','Layer5','','hide','Layer6','','hide','Layer9','','hide')"></a></td>
              <td width="4"><img src="images/top_menu_line.gif"></td>

			<!-- Layer8 개인편지함
              <td width="86" align="center"><a href="http://mail.hyperasp.net/mail/index_mail.neo" id=mnubar target="main" onmouseout="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image24','','images/top_menu24_on.gif',1)"><img src="images/top_menu24.gif" alt="개인편지함" name="Image24" border="0" id="Image24" onMouseMove="MM_showHideLayers('Layer1','','hide','Layer2','','hide','Layer3','','hide','Layer4','','hide','Layer5','','hide','Layer6','','hide','Layer9','','hide')"></a></td>
              <td width="4"><img src="images/top_menu_line.gif"></td>

			<!-- Layer9 스팸센터
              <td width="86" align="center"><a href="http://mail.hyperasp.net/mail/index_mail.neo" id=mnubar target="main" onmouseout="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image17','','images/top_menu17_on.gif',1)"><img src="images/top_menu17.gif" alt="스팸센터" name="Image17" border="0" id="Image17" onMouseMove="MM_showHideLayers('Layer1','','hide','Layer2','','hide','Layer3','','hide','Layer4','','hide','Layer5','','hide','Layer6','','hide','Layer9','','hide')"></a></td>
              <td width="4"><img src="images/top_menu_line.gif"></td>

			<!-- Layer10 스팸센터함
              <td width="86" align="center"><a href="http://mail.hyperasp.net/mail/index_mail.neo" id=mnubar  target="main" onmouseout="MM_swapImgRestore()" onMouseOver="MM_swapImage('Image18','','images/top_menu18_on.gif',1)"><img src="images/top_menu18.gif" alt="스팸센터함" name="Image18" border="0" id="Image18" onMouseMove="MM_showHideLayers('Layer1','','hide','Layer2','','hide','Layer3','','hide','Layer4','','hide','Layer5','','hide','Layer6','','hide','Layer9','','hide')"></a></td>
              <td width="4"><img src="images/top_menu_line.gif"></td>

			<!-- Layer11 환경설정
              <td width="90" align="center"><a href="http://mail.hyperasp.net/mail/index_mail.neo" id=mnubar target="main" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image25','','images/top_menu25_on.gif',1)"><img src="images/top_menu25.gif" alt="환경설정" name="Image25" border="0" id="Image25" onMouseMove="MM_showHideLayers('Layer1','','hide','Layer2','','hide','Layer3','','hide','Layer4','','hide','Layer5','','hide','Layer6','','hide','Layer7','','hide','Layer8','','hide','Layer9','','hide','Layer10','','hide')"></a></td> <td width="4"><img src="images/top_menu_line.gif"></td>

			<!-- Layer12 전자결재 백업-->
			<% If aspcheck = "yes" or TboardRS("groupware") <> "6" Then %>
			<td width="90" align="center"><a href="hw_idc/box/doc_bak.asp" id=mnubar target="main" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image27','','images/top_menu27_on.gif',1)"><img src="images/top_menu27.gif" alt="백업" name="Image7" border="0" id="Image27" onMouseMove="MM_showHideLayers('Layer1','','hide','Layer2','','hide','Layer3','','hide','Layer4','','hide','Layer5','','hide','Layer6','','hide','Layer7','','hide','Layer8','','hide','Layer9','','hide','Layer11','','hide')"></a></td>
			<% Else 
			   End if%>
			   
			<!-- SMS -->
			<% If (Session("cid") = "hyper" or Session("cid") = "HYPER") and (Session("uid") = "admin" or Session("uid") = "ADMIN") Then %>   
				<td width="4"><img src="images/top_menu_line.gif"></td>
				<td width="90" align="center"><a href="sms/sms_total.asp" id=mnubar target="main" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image28','','images/top_menu28.gif',1)"><img src="images/top_menu28.gif" alt="백업" name="Image7" border="0" id="Image27" onMouseMove="MM_showHideLayers('Layer1','','hide','Layer2','','hide','Layer3','','hide','Layer4','','hide','Layer5','','hide','Layer6','','hide','Layer7','','hide','Layer8','','hide','Layer9','','hide','Layer11','','hide')"></a></td>
			<% Else %>
				<td width="4"><img src="images/top_menu_line.gif"></td>
			   	<td width="90" align="center"><a href="sms/sms_company.asp" id=mnubar target="main" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image28','','images/top_menu28.gif',1)"><img src="images/top_menu28.gif" alt="백업" name="Image7" border="0" id="Image27" onMouseMove="MM_showHideLayers('Layer1','','hide','Layer2','','hide','Layer3','','hide','Layer4','','hide','Layer5','','hide','Layer6','','hide','Layer7','','hide','Layer8','','hide','Layer9','','hide','Layer11','','hide')"></a></td>
			<% End if%>
			<td width="500" align="center"></td>

            </tr>

<!--서브 메뉴 레이어 ------------------------------------------------------------------------------------------------------------------------------------------------------------>
            <tr>
			<!-- 1 서브 편지쓰기-->
              <td align="left"><div id="Layer1" style="position:absolute; z-index:1; width: 557px; height: 17px; top: 90px; visibility: hidden;"></div>			  
			  </td>
              <td></td>

			<!-- 2 서브 웹하드-->
              <td align="left"><div id="Layer2" style="position:absolute; z-index:2; width: 142px; height: 17px; top: 90px; visibility: hidden;"onmouseout="MM_swapImgRestore()" onMouseOver="MM_showHideLayers('Layer3','','hide','Layer4','','hide','Layer5','','hide','Layer6','','hide','Layer9','','hide','Layer1','','hide','Layer2','','show')" onMouseOut="MM_showHideLayers('Layer3','','hide','Layer4','','hide','Layer5','','hide','Layer6','','hide','Layer1','','hide','Layer2','','hide')">
			  <a href=# onclick=window.open('http://mail.hyperasp.net/file2/index.neo','hard','scrollbars=yes,toolbar=no,directories=no,status=nos,width=900,height=570,top=0,left=0,resizable=yes,menubar=no');>개인 웹하드</a> | 
			  <a href=# onclick=window.open('http://mail.hyperasp.net/public_file2/index.neo','hard','scrollbars=yes,toolbar=no,directories=no,status=nos,width=920,height=570,top=0,left=0,resizable=yes,menubar=no');>공용 웹하드</a> </div></td>
			  <td></td>

			<!-- 3 서브 주소록-->
              <td align="left"><div id="Layer4" style="position:absolute; z-index:4; width: 144px; height: 15px; top: 90px; visibility: hidden;"onmouseout="MM_swapImgRestore()" onMouseOver="MM_showHideLayers('Layer5','','hide','Layer6','','hide','Layer9','','hide','Layer1','','hide','Layer2','','hide','Layer3','','hide','Layer4','','show')" onMouseOut="MM_showHideLayers('Layer5','','hide','Layer6','','hide','Layer9','','hide','Layer1','','hide','Layer2','','hide','Layer3','','hide','Layer4','','hide')"><a href='http://mail.hyperasp.net/mail_new3/adress.php'  target="main">개인 주소록 </a> | <a href='http://mail.hyperasp.net/mail_new3/public_adress/adress.php'  target="main">공용 주소록</a></div></td>
              <td></td>

			<!-- 4 받은편지함-->
              <td align="left"><div id="Layer3" style="position:absolute; z-index:3; width: 550px; height: 17px; top: 90px; visibility: hidden;"></div>
				</td>
              <td></td>


			<!-- 5 서브 보낸편지함-->
              <td align="left"><div id="Layer5" style="position:absolute; z-index:5; width: 435px; height: 17px; top: 90px; visibility: hidden;"></div>
				</td>
              <td></td>


			<!-- 6 서브 지운편지함-->
              <td align="left"><div id="Layer6" style="position:absolute; z-index:6; width: 289px; height: 17px; top: 90px; visibility: hidden;"> </div>
			  </td>
              <td></td>

			<!-- 7 서브 임시보관함-->
              <td align="left"><div id="Layer7" style="position:absolute; z-index:7; hidden;height: 19px; top: 93px; visibility: hidden;"></div></td>
              <td></td>

			<!--8 서브 개인편지함-->
              <td align="left"><div id="Layer8" style="position:absolute; z-index:8; hidden;height: 19px; top: 93px; visibility: hidden;"></div></td>
              <td></td>

			<!-- 9 서브 스팸센터-->
              <td align="left"><div id="Layer9" style="position:absolute; z-index:9; width: 130px; height: 17px; top: 91px; visibility: hidden;"></div>	 
			 </td>
              <td></td>

			<!-- 10 서브 스팸편지함-->
              <td align="left"><div id="Layer10" style="position:absolute; z-index:10; hidden;height: 19px; top: 93px; visibility: hidden;"></div></td>
              <td></td>

			<!-- 11 환경설정-->
              <td align="left"><div id="Layer11" style="position:absolute; z-index:10; hidden;height: 19px; top: 93px; visibility: hidden;"></div></td>
              <td></td>

			<!-- 12 전자결재 백업-->
              <td align="left"><div id="Layer12" style="position:absolute; z-index:10; hidden;height: 19px; top: 93px; visibility: hidden;"></div></td>
              <td></td>
           </tr>

<!--서브 메뉴 레이어 ------------------------------------------------------------------------------------------------------------------------------------------------------------>

          </table>		
		</td>
        <td><img src="images/top_menu_right.gif"></td>
      </tr>
    </table>
	<!-- // 탑 메뉴 끝 -->
	</td>
  </tr>
  <tr><td height="29" bgcolor="F7F7F7"></td></td></tr>
  <tr><td height="1" bgcolor="FFFFFF"></td></td></tr>
  <tr><td height="1" bgcolor="E1E1E1"></td></td></tr>
</table>
<!-- //상단 네비게이션 부분 끝 ==============================================================================------->
<%oConn.close%>
</body>
</html>