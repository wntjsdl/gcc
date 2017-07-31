<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>GCC Home</title>
</head>
<body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">

	<!-- 메인 이미지d --------------------------------------------------------------------------------------------------------------------------------------------------------------->

	<!-- <table width="897"  border="0" cellpadding="0" cellspacing="0" align="center"> kei -->

	<table width="897" border="0" cellpadding="0" cellspacing="0"
		align="center">


		<!-- 나의정보 (ADMIN) -->
		<tr>
			<td><br>
		<tr>



			<td width="897" height="161"
				background="${pageContext.request.contextPath}/resources/image/imgs/img_main/top07_1_1.jpg">

				<table width="100%" height="160" border="0" cellpadding="0"
					cellspacing="0">
					<tr>
						<td width="668" rowspan="2"
							background="${pageContext.request.contextPath}/resources/image/imgs/img_main/img_mainbg.gif"></td>
						<td><br> <img
							src="${pageContext.request.contextPath}/resources/image/imgs/img_main/info_top.gif"></td>
					</tr>
					<tr>
						<td width="229" valign="top">
							<!-- 내정보 -->
							<table width="210" border="0" align="center" cellpadding="0"
								cellspacing="0" style="padding-left: 4px">
								<tr>
									<td colspan="2">성명 : ${sessionScope.mvo.id}[${sessionScope.mvo.id}]</td>
								</tr>
								<tr>
									<td colspan="2">연락처 : 010-9592-0886</td>
								</tr>

								<tr>
									<td colspan="2">부서/직급 : 연구전담부서/수습</td>
								</tr>

								<tr>
									<td>그룹웨어 : 사용</td>
									<td>경과일 : 68일</td>
								</tr>
								<tr>
									<td colspan="2">개시일 : 2017-04-26</td>
								</tr>

								<tr align="center">
									<td height="27" colspan="2"><a href=''
										ONCLICK="window.open('member/passedit.asp?pageinfo=main','비밀번호변경','left=300,top=0 location=no,directories=no,status=no,toolbar=no,menubar=no,width=366,height=275,');return false"><img
											src="${pageContext.request.contextPath}/resources/image/imgs/img_main/btn_01.gif"
											border="0"></a> <a href=''
										ONCLICK="window.open('member/memedit.asp?pageinfo=main','개인정보수정','left=300,top=0 location=no,directories=no,status=no,toolbar=no,menubar=no,width=450,height=450,');return false"><img
											src="${pageContext.request.contextPath}/resources/image/imgs/img_main/btn_02.gif"
											border="0"></a></td>
								</tr>
							</table> <!-- //내정보 끝 -->

						</td>
					</tr>
				</table>

			</td>
		</tr>
	</table>

	<!-- // 메인 이미지 ------------------------------------------------------------------------------------------------------------------------------------------------------------->

	<!-- 리뉴얼 용량정보 -->
	<table width="897" border="0" cellpadding="0" cellspacing="0"
		align="center">
		<tr>
			<td height="10" bgcolor="F7F7F7"></td>
		</tr>
		<tr>
			<td colspan="2" height="1" bgcolor="BDBDBD"></td>
		</tr>
	</table>
	<!-- //리뉴얼 용량정보 -->


	<!--=======================================  바디시작 ===================================================--->


	<table width="897" border="0" cellpadding="0" cellspacing="0"
		align="center">

		<tr>
			<td width="669" valign="top">
				<!-- left 시작 ---------------------------------------------------------------------------------------------------------------------------------------------------------------------->


				<table width="100%" border="0" cellpadding="0" cellspacing="0">


					<tr>
						<td colspan="2" style="padding-top: 5px; padding-left: 7px">

							<!--  전자메일함 -- by kei 네오데이즈 수정 --> <iframe
								src="http://mail.hyperasp.net/mail/mail_info.neo" scrolling="no"
								name="mail" width="648" height="250" marginwidth="0"
								marginheight="0" frameborder=0 align="middle"> </iframe> <!-- //전자메일함 -->
						</td>
					</tr>

					<tr>
						<td width="50%" style="padding-top: 10px" valign="top">
							<!-- 공지사항 -->
							<table width="95%" border="0" align="center" cellpadding="0"
								cellspacing="0">
								<tr>
									<td height="36">
										<table width="98%" border="0" cellpadding="0" cellspacing="0"
											background="${pageContext.request.contextPath}/resources/image/imgs/img_main/board_titlebg.gif">
											<tr>
												<td width="82%" height="36"><a
													href="/tboard/qa_list.asp?id=tboard1"><img
														src="${pageContext.request.contextPath}/resources/image/imgs/img_main/board_title01.gif"
														border="0"></a></td>
												<td width="18%"><a
													href="/tboard/qa_list.asp?id=tboard1"><img
														src="${pageContext.request.contextPath}/resources/image/imgs/img_main/board_more.gif"
														border="0"></a></td>
											</tr>
										</table>
									</td>
								</tr>
								<tr>
									<td width="50%" style="padding-top: 10px" valign="top">

										<TABLE cellSpacing=0 cellPadding=0 border=0 width="100%"
											style="padding-left: 8px">

											<TR>
												<TD width="77%" height=17><img
													src="${pageContext.request.contextPath}/resources/image/imgs/img_main/board_dot.gif"><a
													href="tboard/qa_view.asp?gubun=4&index=list&page=1&seq=533&keyword=&ssubject=0&sname=0&scontent=0"
													target=main>[회의] 2017-06-28 09...</a></td>
												<td width="23%">2017-06-27</td>
											</tr>

											<TR>
												<TD width="77%" height=17><img
													src="${pageContext.request.contextPath}/resources/image/imgs/img_main/board_dot.gif"><a
													href="tboard/qa_view.asp?gubun=5&index=list&page=1&seq=666&keyword=&ssubject=0&sname=0&scontent=0"
													target=main>[폰트] Rix모던고딕B 폰트입니다.</a></td>
												<td width="23%">2017-06-23</td>
											</tr>

											<TR>
												<TD width="77%" height=17><img
													src="${pageContext.request.contextPath}/resources/image/imgs/img_main/board_dot.gif"><a
													href="tboard/qa_view.asp?gubun=5&index=list&page=1&seq=665&keyword=&ssubject=0&sname=0&scontent=0"
													target=main>[과제] R&D ERP 과제수행계...</a></td>
												<td width="23%">2017-06-22</td>
											</tr>

											<TR>
												<TD width="77%" height=17><img
													src="${pageContext.request.contextPath}/resources/image/imgs/img_main/board_dot.gif"><a
													href="tboard/qa_view.asp?gubun=5&index=list&page=1&seq=664&keyword=&ssubject=0&sname=0&scontent=0"
													target=main>[기타] 건강보험공단 데이터 이관...</a></td>
												<td width="23%">2017-06-21</td>
											</tr>

											<TR>
												<TD width="77%" height=17><img
													src="${pageContext.request.contextPath}/resources/image/imgs/img_main/board_dot.gif"><a
													href="tboard/qa_view.asp?gubun=5&index=list&page=1&seq=663&keyword=&ssubject=0&sname=0&scontent=0"
													target=main>[공지] 국민건강보험공단_지티유솔...</a></td>
												<td width="23%">2017-06-20</td>
											</tr>

										</table>

									</td>
								</tr>
							</table> <!-- //공지사항 끝-->

						</td>
						<td width="50%" style="padding-top: 10px" valign="top">
							<!-- 예정된 회의 및 일정 -->
							<table width="100%" border="0" align="center" cellpadding="0"
								cellspacing="0">
								<tr>
									<td height="36">
										<table width="100%" border="0" cellpadding="0" cellspacing="0"
											background="${pageContext.request.contextPath}/resources/image/imgs/img_main/board_titlebg.gif">
											<tr>
												<td width="82%" height="36"><a
													href="javascript:SHE.submit()"><img
														src="${pageContext.request.contextPath}/resources/image/imgs/img_main/board_title02.gif"
														border="0"></a></td>
												<td width="18%"><a href="javascript:SHE.submit()"><img
														src="${pageContext.request.contextPath}/resources/image/imgs/img_main/board_more.gif"
														border="0"></a></td>
											</tr>
										</table>
									</td>
								</tr>
								<tr>
									<td width="50%" style="padding-top: 10px" valign="top">

										<table border="0" cellpadding="0" cellspacing="0" width="100%">

											<TR>


												<td height=17 style="padding-left: 9px"><img
													src="${pageContext.request.contextPath}/resources/image/imgs/img_main/board_dot.gif"><font
													color="1373C4">[오늘 일정]</font></td>

												<td height=17>10:00 ~ 12:00</td>
												<td width='40%' height=17>&nbsp; <a
													href="/calendar/diary.asp?d=m&m=view&cid=7128">주간업무회의</a></td>
											</tr>

											<TR>


												<td height=17 style="padding-left: 9px"><img
													src="${pageContext.request.contextPath}/resources/image/imgs/img_main/board_dot.gif"><font
													color="1373C4">[오늘 일정]</font></td>

												<td height=17>9:00 ~ 11:00</td>
												<td width='40%' height=17>&nbsp; <a
													href="/calendar/diary.asp?d=m&m=view&cid=7150">자바 개발자
														면...</a></td>
											</tr>

											<TR>

												<td height=17 style="padding-left: 8px;"><img
													src="${pageContext.request.contextPath}/resources/image/imgs/img_main/board_dot.gif">
													[2017-07-07]</td>

												<td height=17>10:00 ~ 12:00</td>
												<td width='40%' height=17>&nbsp; <a
													href="/calendar/diary.asp?d=m&m=view&cid=7126">기술 교류회</a></td>
											</tr>

										</table>

									</td>
								</tr>
							</table> <!-- //예정된 회의 및 일정 끝-->
						</td>
					</tr>




					<tr>
						<td style="padding-top: 10px;">
							<!-- 전자결재 현황 (기안문서, 결재문서) -->
							<table width="95%" border="0" align="center" cellpadding="0"
								cellspacing="0">
								<tr>
									<td height="36">
										<table width="98%" border="0" cellpadding="0" cellspacing="0"
											background="${pageContext.request.contextPath}/resources/image/imgs/img_main/board_titlebg.gif">
											<tr>
												<td width="82%" height="36">
													<!--a href="http://hyperasp.net/hw_idc/frame.asp"--> <img
													src="${pageContext.request.contextPath}/resources/image/imgs/img_main/board_title03.gif"
													border="0"> <!--/a-->
												</td>
												<!--td width="18%"><a href="http://hyperasp.net/hw_idc/frame.asp"><img src="imgs/img_main/board_more.gif" border="0"></a></td-->
											</tr>
										</table>
									</td>
								</tr>
								<tr>
									<td style="padding-top: 9px;">
										<!--FORM METOD="POST" NAME="ED11" ACTION="hw_idc/frame10.asp" TARGET="main"-->
										<FORM METHOD="POST" NAME="ED11" ACTION="hw_idc/frame.asp"
											TARGET="main">
											<INPUT TYPE="hidden" NAME="txtCOM_C" VALUE=dosang> <INPUT
												TYPE="hidden" NAME="txtEMP_C" VALUE=wntjs0305> <INPUT
												TYPE="hidden" NAME="txtFLG_G" VALUE="ED1">
										</FORM>


										<table width="100%" border="0" cellspacing="0" cellpadding="0">
											<tr>
												<td>

													<table width="100%" border="0" cellspacing="0"
														cellpadding="0">
														<tr style="cursor: hand"
															onclick="javascript:ED11.submit()">
															<td width="46%" height="17" style="padding-left: 5pt"><img
																src="${pageContext.request.contextPath}/resources/image/imgs/img_main/board_dot.gif"
																align="absmiddle">나의 미결 문서 : [ <strong>0</strong>
																]</td>
														</tr>
														<tr style="cursor: hand"
															onclick="javascript:ED11.submit()">
															<td height="17" style="padding-left: 5pt"><img
																src="${pageContext.request.contextPath}/resources/image/imgs/img_main/board_dot.gif"
																align="absmiddle">나의 완결 문서 : [ <strong>4</strong>
																]</td>
														</tr>
														<tr style="cursor: hand"
															onclick="javascript:ED11.submit()">
															<td height="17" style="padding-left: 5pt"><img
																src="${pageContext.request.contextPath}/resources/image/imgs/img_main/board_dot.gif"
																align="absmiddle">나의 보류 문서 : [ <strong>0</strong>
																]</td>
														</tr>
														<tr style="cursor: hand"
															onclick="javascript:ED11.submit()">
															<td height="17" style="padding-left: 5pt"><img
																src="${pageContext.request.contextPath}/resources/image/imgs/img_main/board_dot.gif"
																align="absmiddle">나의 반려 문서 : [ <strong>1</strong>
																]</td>
														</tr>
														<tr>
															<td height="17">&nbsp;</td>
														</tr>
														<tr>
															<td height="3"></td>
														</tr>
													</table> <!----->
												</td>


												<td>
													<!----->
													<table width="100%" border="0" cellspacing="0"
														cellpadding="0">
														<tr style="cursor: hand"
															onclick="javascript:ED11.submit()">
															<td width="46%" height="17" style="padding-left: 5pt">
																<img
																src="${pageContext.request.contextPath}/resources/image/imgs/img_main/board_dot.gif"
																align="absmiddle">결재 하실 문서 : [ <strong>0</strong>
																]
															</td>
														</tr>
														<tr style="cursor: hand"
															onclick="javascript:ED11.submit()">
															<td height="17" style="padding-left: 5pt"><img
																src="${pageContext.request.contextPath}/resources/image/imgs/img_main/board_dot.gif"
																align="absmiddle">결재 하신 문서 : [ <strong>0</strong>
																]</td>
														</tr>
														<tr style="cursor: hand"
															onclick="javascript:ED11.submit()">
															<td height="17" style="padding-left: 5pt"><img
																src="${pageContext.request.contextPath}/resources/image/imgs/img_main/board_dot.gif"
																align="absmiddle">보류 하신 문서 : [ <strong>0</strong>
																]</td>
														</tr>
														<tr style="cursor: hand"
															onclick="javascript:ED11.submit()">
															<td height="17" style="padding-left: 5pt"><img
																src="${pageContext.request.contextPath}/resources/image/imgs/img_main/board_dot.gif"
																align="absmiddle">반려 하신 문서 : [ <strong>0</strong>
																]</td>
														</tr>


														<tr style="cursor: hand"
															onclick="javascript:ED11.submit()">
															<td height="17" style="padding-left: 5pt"><img
																src="${pageContext.request.contextPath}/resources/image/imgs/img_main/board_dot.gif"
																align="absmiddle">결재예정된문서: [ <strong>0</strong> ]</td>
														</tr>
													</table> <!----->

												</td>
											</tr>
										</table>

									</td>
								</tr>
							</table> <!-- //전자결재 현황 끝-->
						</td>

						<td style="padding-top: 7px">
							<!-- 전자결재 신청서 -->
							<table width="95%" border="0" align="center" cellpadding="0"
								cellspacing="0">
								<tr>
									<td height="36">
										<table width="98%" border="0" cellpadding="0" cellspacing="0"
											background="${pageContext.request.contextPath}/resources/image/imgs/img_main/board_titlebg.gif">
											<tr>
												<td width="82%" height="36"><img
													src="${pageContext.request.contextPath}/resources/image/imgs/img_main/board_title04.gif"
													border="0"></td>
												<td width="18%"></td>
											</tr>
										</table>
									</td>
								</tr>
								<tr>
									<td style="padding-top: 8px">
										<table width="100%" border="0" cellspacing="0" cellpadding="0"
											style="padding-left: 10px">
											<tr>
												<td width="90%" align="center">
													<table width="100%" border="0" cellspacing="0"
														cellpadding="0">

														<tr>
															<td height="17"><img
																src="${pageContext.request.contextPath}/resources/image/imgs/img_main/board_dot.gif"><a
																href="/hw_idc/frame_move.asp?file_no=W1">품의서</a></td>
															<td><img
																src="${pageContext.request.contextPath}/resources/image/imgs/img_main/board_dot.gif"><a
																href="/hw_idc/frame_move.asp?file_no=ED1">지출결의서</a></td>
														</tr>
														<tr>
															<td height="17"><img
																src="${pageContext.request.contextPath}/resources/image/imgs/img_main/board_dot.gif"><a
																href="/hw_idc/frame_move.asp?file_no=ED2">근태처리서</a></td>
															<td><img
																src="${pageContext.request.contextPath}/resources/image/imgs/img_main/board_dot.gif"><a
																href="/hw_idc/frame_move.asp?file_no=ED3">출장신청서</a></td>
														</tr>
														<tr>
															<td height="17"><img
																src="${pageContext.request.contextPath}/resources/image/imgs/img_main/board_dot.gif"><a
																href="/hw_idc/frame_move.asp?file_no=ED4">출장복명서</a></td>
															<td><img
																src="${pageContext.request.contextPath}/resources/image/imgs/img_main/board_dot.gif"><a
																href="/hw_idc/frame_move.asp?file_no=ED4">입출고전표</a></td>
														</tr>
														<tr>
															<td></td>
															<td></td>
														</tr>
														<tr>
															<td height="17"><img
																src="${pageContext.request.contextPath}/resources/image/imgs/img_main/board_dot.gif"><a
																href="/hw_idc/frame_move.asp?file_no=ED6">판매전표</a></td>
															<td><img
																src="${pageContext.request.contextPath}/resources/image/imgs/img_main/board_dot.gif"><a
																href="/hw_idc/frame_move.asp?file_no=ED7">회람</a></td>
														</tr>

														<tr>
															<td height="17"><img
																src="${pageContext.request.contextPath}/resources/image/imgs/img_main/board_dot.gif"><a
																href="/hw_idc/manualII/frame.asp">사용자 메뉴얼</a></td>
															<td>&nbsp;</td>
														</tr>
													</table>
												</td>
												<td><img
													src="${pageContext.request.contextPath}/resources/image/imgs/img_main/board_img.gif"></td>
											</tr>
										</table>
									</td>
								</tr>
							</table> <!-- //전자결재 신청서 끝-->

						</td>
					</tr>






					</td>
					</tr>
				</table> <br> <!-- // left 끝 --------------------------------------------------------------------------------------------------------------------------------------------------------------------------->



				<!-- 배너 -->
				<table width="98%" border="0" cellpadding="0" cellspacing="0"
					align="center">
					<tr align="center">
						<!--td><img src="imgs/img_main/img10_1.gif" style="cursor type:hand" onclick="window.open('http://mail.hyperasp.net/file/index.neo','hard','scrollbars=yes,toolbar=no,directories=no,status=nos,width=900,height=570,top=0,left=0,resizable=yes,menubar=no');"></td-->
						<td><img
							src="${pageContext.request.contextPath}/resources/image/imgs/img_main/img10_1.gif"
							style="cursortype: hand" Onclick="On_wh();"></td>
						<td><img
							src="${pageContext.request.contextPath}/resources/image/imgs/img_main/img11_1.gif"
							style="cursortype: hand" Onclick="On_wd2();"></td>
						<td><img
							src="${pageContext.request.contextPath}/resources/image/imgs/img_main/img12_1.gif"
							style="cursortype: hand" Onclick="On_adr();"></td>
						<td><img
							src="${pageContext.request.contextPath}/resources/image/imgs/img_main/img13_1.gif"
							style="cursortype: hand" Onclick="On_she();"></td>
						<td><img
							src="${pageContext.request.contextPath}/resources/image/imgs/img_main/img14_1.gif"
							style="cursortype: hand" Onclick="On_reg();"></td>
					</tr>
				</table> <!--// 배너 끝 -->


			</td>
			<td width="228" valign="top" style="padding-top: 5px">
				<!-- right 부분 시작 --------------------------------------------------------------------------------------------------------------------------------------------------------------------->

				<table width="100%" border="0" cellpadding="0" cellspacing="0">
					<tr>
						<td>
							<!-- 근태관리 -->

							<table width="100%" border="0" cellpadding="0" cellspacing="0">
								<tr>
									<td width="6%" rowspan="3"><img
										src="${pageContext.request.contextPath}/resources/image/imgs/img_main/ri_left.gif"></td>
									<td width="88=%"><img
										src="${pageContext.request.contextPath}/resources/image/imgs/img_main/ri_top.gif"></td>
									<td width="6%" rowspan="3"><img
										src="${pageContext.request.contextPath}/resources/image/imgs/img_main/ri_right.gif"></td>
								</tr>
								<tr>
									<td height="120" valign="top">

										<table width="100%" border="0" cellpadding="0" cellspacing="0">
											<tr>
												<td><img
													src="${pageContext.request.contextPath}/resources/image/imgs/img_main/ri_title01.gif"></td>
											</tr>
											<tr>
												<td height="20">
													<table width="180" border="0" align="center"
														cellpadding="0" cellspacing="0">
														<tr>
															<td width="71%"><span
																style="background-color: #DFF1FE">&nbsp;출근시간 </span> :
																08:40</td>
															<td width="29%" rowspan="2"><img
																src="${pageContext.request.contextPath}/resources/image/imgs/img_main/ri_btn.gif"></td>
														</tr>
														<tr>
															<td><span style="background-color: #DFF1FE">&nbsp;퇴근시간
															</span> : 00:00</td>
														</tr>
													</table>

												</td>
											</tr>
											<tr>
												<td height="30">
													<div align="center">
														<a href=''
															onclick="window.open('member/passedit.asp?pageinfo=main','비밀번호변경','left=300,top=0 location=no,directories=no,status=no,toolbar=no,menubar=no,width=366,height=275,');return false">
															<img
															src="${pageContext.request.contextPath}/resources/image/imgs/img_main/btn_03.gif"
															width="86" height="18" border="0">
														</a> <a href=''
															onclick="window.open('member/passedit.asp?pageinfo=main','비밀번호변경','left=300,top=0 location=no,directories=no,status=no,toolbar=no,menubar=no,width=366,height=275,');return false">
															&nbsp; <img
															src="${pageContext.request.contextPath}/resources/image/imgs/img_main/btn_04.gif"
															width="86" height="18" border="0">
														</a>
													</div>
												</td>
											</tr>
										</table>
									</td>
								</tr>
								<tr>
									<td><img
										src="${pageContext.request.contextPath}/resources/image/imgs/img_main/ri_bottom.gif"></td>
								</tr>
							</table> <!-- 근태관리 -->
						</td>
					</tr>

					<tr>
						<td>
							<!-- 일정관리--> <!-- 일정관리  --> <!-- 							<table width="90%" border="0" cellpadding="0" cellspacing="0"> -->
							<!-- 								<tr> --> <!-- 									<td width="4%"><img --> <%-- 										src="${pageContext.request.contextPath}/resources/image/imgs/img_main/right_box01.gif" --%>
							<!-- 										width="8"></td> --> <!-- 									<td width="95%" -->
							<%-- 										background="${pageContext.request.contextPath}/resources/image/imgs/img_main/right_boxbg01.gif"></td> --%>
							<!-- 									<td width="3%"><img --> <%-- 										src="${pageContext.request.contextPath}/resources/image/imgs/img_main/right_box02.gif" --%>
							<!-- 										width="8"></td> --> <!-- 								</tr> --> <!-- 								<tr> -->
							<!-- 									<td --> <%-- 										background="${pageContext.request.contextPath}/resources/image/imgs/img_main/right_boxbg03.gif"></td> --%>
							<!-- 									<td height="190" valign="top"> -->
							<div class="homeCal">
								<table width="100%" border="0" cellpadding="0" cellspacing="0">
									<tr>
										<td>
											<!--img src="imgs/img_main/ri_title02.gif"-->
										</td>
									</tr>
									<tr>
										<td></td>
									</tr>
									<tr>
										<td>
											<table width="200" border='0' cellspacing='0' cellpadding='0'
												align="center" bordercolor='#E1E1D7'
												style='border: 0; cell-spacing: 0; cell-padding: 0; border-collapse: collapse;'>
												<tr>
													<td height="30" align="center" class="textB"><b><a
															href=/calendar/diary.asp?flag=4&d=m&F_Year=2017&F_Month=6&F_Day=1><img
																src="${pageContext.request.contextPath}/resources/image/imgs/img_main/arr_01.gif"
																border="0"></a>2017년 7월 <a
															href=/calendar/diary.asp?flag=4&d=m&F_Year=2017&F_Month=8&F_Day=1><img
																src="${pageContext.request.contextPath}/resources/image/imgs/img_main/arr_02.gif"
																border="0"></a></b></td>
												</tr>
											</table> <!-- 달력 -->
											<table width="200" border='0' align="center" cellpadding='0'
												cellspacing='1' bordercolor='#E1E1D7'
												style='border: 0; cell-spacing: 0; cell-padding: 0; border-collapse: collapse;'>
												<tr bgcolor="96BDE7">
													<td height="25" align="center"><font color="FFFFFF">일</font></td>
													<td align="center"><font color="FFFFFF">월</font></td>
													<td align="center"><font color="FFFFFF">화</font></td>
													<td align="center"><font color="FFFFFF">수</font></td>
													<td align="center"><font color="FFFFFF">목</font></td>
													<td align="center"><font color="FFFFFF">금</font></td>
													<td align="center"><font color="FFFFFF">토</font></td>
												</tr>


												<tr align=center bgcolor=#F7F7F7>
													<td bgcolor=#ffffff>&nbsp;</td>
													<td bgcolor=#ffffff>&nbsp;</td>
													<td bgcolor=#ffffff>&nbsp;</td>
													<td bgcolor=#ffffff>&nbsp;</td>
													<td bgcolor=#ffffff>&nbsp;</td>
													<td bgcolor=#ffffff>&nbsp;</td>
													<td height='20'><a
														href=/calendar/diary.asp?flag=2&d=d&F_Year=2017&F_Month=7&F_Day=1>1</a><br>
													</td>
												</tr>
												<tr align=center bgcolor=#F7F7F7>
													<td height='20'><a
														href=/calendar/diary.asp?flag=2&d=d&F_Year=2017&F_Month=7&F_Day=2><font
															color=#FF0000>2</font></a><br></td>
													<td bgcolor='#E3EDF8' height='20'><a
														href=/calendar/diary.asp?flag=2&d=d&F_Year=2017&F_Month=7&F_Day=3><FONT
															COLOR=555555>3</FONT></a><br></td>
													<td bgcolor='#E3EDF8' height='20'><b><a
															href=/calendar/diary.asp?flag=2&d=d&F_Year=2017&F_Month=7&F_Day=4><font
																color='#3093D1'>4</font></a></b><br></td>
													<td height='20'><a
														href=/calendar/diary.asp?flag=2&d=d&F_Year=2017&F_Month=7&F_Day=5>5</a><br>
													</td>
													<td height='20'><a
														href=/calendar/diary.asp?flag=2&d=d&F_Year=2017&F_Month=7&F_Day=6>6</a><br>
													</td>
													<td bgcolor='#E3EDF8' height='20'><a
														href=/calendar/diary.asp?flag=2&d=d&F_Year=2017&F_Month=7&F_Day=7><FONT
															COLOR=555555>7</FONT></a><br></td>
													<td height='20'><a
														href=/calendar/diary.asp?flag=2&d=d&F_Year=2017&F_Month=7&F_Day=8>8</a><br>
													</td>
												</tr>
												<tr align=center bgcolor=#F7F7F7>
													<td height='20'><a
														href=/calendar/diary.asp?flag=2&d=d&F_Year=2017&F_Month=7&F_Day=9><font
															color=#FF0000>9</font></a><br></td>
													<td bgcolor='#E3EDF8' height='20'><a
														href=/calendar/diary.asp?flag=2&d=d&F_Year=2017&F_Month=7&F_Day=10><FONT
															COLOR=555555>10</FONT></a><br></td>
													<td height='20'><a
														href=/calendar/diary.asp?flag=2&d=d&F_Year=2017&F_Month=7&F_Day=11>11</a><br>
													</td>
													<td height='20'><a
														href=/calendar/diary.asp?flag=2&d=d&F_Year=2017&F_Month=7&F_Day=12>12</a><br>
													</td>
													<td height='20'><a
														href=/calendar/diary.asp?flag=2&d=d&F_Year=2017&F_Month=7&F_Day=13>13</a><br>
													</td>
													<td bgcolor='#E3EDF8' height='20'><a
														href=/calendar/diary.asp?flag=2&d=d&F_Year=2017&F_Month=7&F_Day=14><FONT
															COLOR=555555>14</FONT></a><br></td>
													<td height='20'><a
														href=/calendar/diary.asp?flag=2&d=d&F_Year=2017&F_Month=7&F_Day=15>15</a><br>
													</td>
												</tr>
												<tr align=center bgcolor=#F7F7F7>
													<td height='20'><a
														href=/calendar/diary.asp?flag=2&d=d&F_Year=2017&F_Month=7&F_Day=16><font
															color=#FF0000>16</font></a><br></td>
													<td bgcolor='#E3EDF8' height='20'><a
														href=/calendar/diary.asp?flag=2&d=d&F_Year=2017&F_Month=7&F_Day=17><FONT
															COLOR=555555>17</FONT></a><br></td>
													<td height='20'><a
														href=/calendar/diary.asp?flag=2&d=d&F_Year=2017&F_Month=7&F_Day=18>18</a><br>
													</td>
													<td height='20'><a
														href=/calendar/diary.asp?flag=2&d=d&F_Year=2017&F_Month=7&F_Day=19>19</a><br>
													</td>
													<td height='20'><a
														href=/calendar/diary.asp?flag=2&d=d&F_Year=2017&F_Month=7&F_Day=20>20</a><br>
													</td>
													<td bgcolor='#E3EDF8' height='20'><a
														href=/calendar/diary.asp?flag=2&d=d&F_Year=2017&F_Month=7&F_Day=21><FONT
															COLOR=555555>21</FONT></a><br></td>
													<td height='20'><a
														href=/calendar/diary.asp?flag=2&d=d&F_Year=2017&F_Month=7&F_Day=22>22</a><br>
													</td>
												</tr>
												<tr align=center bgcolor=#F7F7F7>
													<td height='20'><a
														href=/calendar/diary.asp?flag=2&d=d&F_Year=2017&F_Month=7&F_Day=23><font
															color=#FF0000>23</font></a><br></td>
													<td bgcolor='#E3EDF8' height='20'><a
														href=/calendar/diary.asp?flag=2&d=d&F_Year=2017&F_Month=7&F_Day=24><FONT
															COLOR=555555>24</FONT></a><br></td>
													<td height='20'><a
														href=/calendar/diary.asp?flag=2&d=d&F_Year=2017&F_Month=7&F_Day=25>25</a><br>
													</td>
													<td height='20'><a
														href=/calendar/diary.asp?flag=2&d=d&F_Year=2017&F_Month=7&F_Day=26>26</a><br>
													</td>
													<td height='20'><a
														href=/calendar/diary.asp?flag=2&d=d&F_Year=2017&F_Month=7&F_Day=27>27</a><br>
													</td>
													<td bgcolor='#E3EDF8' height='20'><a
														href=/calendar/diary.asp?flag=2&d=d&F_Year=2017&F_Month=7&F_Day=28><FONT
															COLOR=555555>28</FONT></a><br></td>
													<td height='20'><a
														href=/calendar/diary.asp?flag=2&d=d&F_Year=2017&F_Month=7&F_Day=29>29</a><br>
													</td>
												</tr>
												<tr align=center bgcolor=#F7F7F7>
													<td height='20'><a
														href=/calendar/diary.asp?flag=2&d=d&F_Year=2017&F_Month=7&F_Day=30><font
															color=#FF0000>30</font></a><br></td>
													<td bgcolor='#E3EDF8' height='20'><a
														href=/calendar/diary.asp?flag=2&d=d&F_Year=2017&F_Month=7&F_Day=31><FONT
															COLOR=555555>31</FONT></a><br></td>
													<td bgcolor=#ffffff>&nbsp;</td>
													<td bgcolor=#ffffff>&nbsp;</td>
													<td bgcolor=#ffffff>&nbsp;</td>
													<td bgcolor=#ffffff>&nbsp;</td>
													<td bgcolor=#ffffff>&nbsp;</td>
												</tr>
											</table> <!-- 달력 -->
										</td>
									</tr>
									<tr>
										<td height="30" style="padding-left: 10px">※ 일정이 등록되면 <span
											class="textA">파란색</span> 표시
										</td>
									</tr>
								</table>
							</div> <!-- 									</td> --> <!-- 									<td --> <%-- 										background="${pageContext.request.contextPath}/resources/image/imgs/img_main/right_boxbg04.gif"></td> --%>
							<!-- 								</tr> --> <!-- 								<tr> --> <!-- 									<td><img -->
							<%-- 										src="${pageContext.request.contextPath}/resources/image/imgs/img_main/right_box03.gif" --%>
							<!-- 										width="8"></td> --> <!-- 									<td --> <%-- 										background="${pageContext.request.contextPath}/resources/image/imgs/img_main/right_boxbg02.gif"></td> --%>
							<!-- 									<td><img --> <%-- 										src="${pageContext.request.contextPath}/resources/image/imgs/img_main/right_box04.gif"></td> --%>
							<!-- 								</tr> --> <!-- 							</table> --> <!-- 일정관리 끝--> <!-- //일정관리-->
						</td>
					</tr>
					<tr>
						<td>
							<!-- pop 설정방법 -->
							<div class="homePOP">
								<table width="100%" border="0" cellpadding="0" cellspacing="0">
									<tr>
										<!-- 									<td width="4%"><img -->
										<%-- 										src="${pageContext.request.contextPath}/resources/image/imgs/img_main/right_box01.gif"></td> --%>
										<!-- 									<td width="95%" -->
										<%-- 										background="${pageContext.request.contextPath}/resources/image/imgs/img_main/right_boxbg01.gif"></td> --%>
										<!-- 									<td width="3%"><img -->
										<%-- 										src="${pageContext.request.contextPath}/resources/image/imgs/img_main/right_box02.gif"></td> --%>
										<!-- 								</tr> -->
										<!-- 								<tr> -->
										<!-- 									<td -->
										<%-- 										background="${pageContext.request.contextPath}/resources/image/imgs/img_main/right_boxbg03.gif"></td> --%>
										<td valign="top"
											background="${pageContext.request.contextPath}/resources/image/imgs/img_main/right_pop.gif"
											style="background-repeat: no-repeat;"><br> <br>
											<table width="90%" border="0" align="center" cellpadding="1"
												cellspacing="0">

												<!--tr><td><a href='#' ONCLICK="window.open('/main/mail_01.htm','guest','left=200,top=10 location=no,directories=no,status=no,toolbar=no,menubar=no,width=615, height=600,scrollbars=yes');return false">Outlook Express 버전</td></tr-->
												<tr>
													<td><a href='#'
														ONCLICK="window.open('/main/mail_02.htm','guest','left=200,top=10 location=no,directories=no,status=no,toolbar=no,menubar=no,width=615, height=600,scrollbars=yes');return false">Outlook
														XP 버전</a></td>
												</tr>
												<tr>
													<td><a href='#'
														ONCLICK="window.open('/main/mail_03.htm','guest','left=200,top=10 location=no,directories=no,status=no,toolbar=no,menubar=no,width=815, height=600,scrollbars=yes');return false">Outlook
														2007 버전</a></td>
												</tr>
												<tr>
													<td><a href='#'
														ONCLICK="window.open('/main/mail_04.htm','guest','left=200,top=10 location=no,directories=no,status=no,toolbar=no,menubar=no,width=615, height=600,scrollbars=yes');return false">아이폰메일
														사용하기</a></td>
												</tr>
												<!--<tr><td><a href='#' ONCLICK="window.open('/main/jweditor.htm','guest','left=200,top=10 location=no,directories=no,status=no,toolbar=no,menubar=no,width=615, height=600,scrollbars=yes');return false">전자결제 입력기설치</td></tr>-->
											</table></td>
										<!-- 									<td -->
										<%-- 										background="${pageContext.request.contextPath}/resources/image/imgs/img_main/right_boxbg04.gif"></td> --%>
										<!-- 								</tr> -->
										<!-- 								<tr> -->
										<!-- 									<td><img -->
										<%-- 										src="${pageContext.request.contextPath}/resources/image/imgs/img_main/right_box03.gif"></td> --%>
										<!-- 									<td -->
										<%-- 										background="${pageContext.request.contextPath}/resources/image/imgs/img_main/right_boxbg02.gif"></td> --%>
										<!-- 									<td><img -->
										<%-- 										src="${pageContext.request.contextPath}/resources/image/imgs/img_main/right_box04.gif"></td> --%>
									</tr>
								</table>
							</div> <!-- pop 설정방법 -->
						</td>
					</tr>

					<!-- 하이퍼 메신져 -->
					<tr>
						<td width="4%" align="center"><a href='#'
							ONCLICK="window.open('/messenger/msg_doc/msg_doc.htm','guest','left=200,top=10 location=no,directories=no,status=no,toolbar=no,menubar=no,width=615, height=600,scrollbars=yes');return false"><img
								src="${pageContext.request.contextPath}/resources/image/imgs/img_main/hypermess.gif"
								border="0"></a></td>
					</tr>
					<!-- //하이퍼 메신져 -->


				</table> <!--=======================================  //바디끝 ==================================================--->


				<FORM METOD="POST" NAME="REG" ACTION="./member/user_list.asp">
					<INPUT TYPE="hidden" NAME="txtCOM_C" VALUE=dosang> <INPUT
						TYPE="hidden" NAME="txtEMP_C" VALUE=wntjs0305> <INPUT
						TYPE="hidden" NAME="txtFLG_G" VALUE="reg">
				</FORM>

				<FORM METHOD="POST" NAME="ADR"
					ACTION='http://mail.hyperasp.net/mail/index_addr.neo' TARGET="main">
				</FORM>

				<FORM METOD="POST" NAME="WD2" ACTION="hw_wd/wd_ed/wd_ed_new.asp">
					<INPUT TYPE="hidden" NAME="txtCOM_C" VALUE=dosang> <INPUT
						TYPE="hidden" NAME="txtEMP_C" VALUE=wntjs0305> <INPUT
						TYPE="hidden" NAME="txtFLG_G" VALUE="WD2">
				</FORM>

				<FORM METOD="POST" NAME="SHE" ACTION="calendar/diary.asp">
					<INPUT TYPE="hidden" NAME="txtCOM_C" VALUE=dosang> <INPUT
						TYPE="hidden" NAME="txtEMP_C" VALUE=wntjs0305>
				</FORM>

				<FORM METOD="POST" NAME="Form1"
					ACTION="http://mail.hyperasp.net/mail/mail_info.neo">
					<INPUT TYPE="hidden" NAME="userid" VALUE=wntjs0305> <INPUT
						TYPE="hidden" NAME="pass" VALUE=> <INPUT TYPE="hidden"
						NAME="part" VALUE=dosang>
				</FORM>

				<FORM METHOD="POST" NAME="WH"
					ACTION="http://mail.hyperasp.net/mail/index_webf.neo" TARGET="main">
					<INPUT TYPE="hidden" NAME="comp_c" VALUE=dosang> <INPUT
						TYPE="hidden" NAME="empl_c" VALUE=wntjs0305>
				</FORM>
				</td>
			</tr>
		</table>
</body>

</html>