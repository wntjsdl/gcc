<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div id="header">
	<nav id="topMenu">
		<div class="logo">
			<a href="#"> <img alt="Brand"
				src="${pageContext.request.contextPath}/resources/image/gtu_brand.gif">
			</a>
		</div>
		<div class="topRightMenu">
			<a href="#"> <img
				src="${pageContext.request.contextPath}/resources/image/images/top_menu_mess.gif">
			</a> <a href="#"> <img
				src="${pageContext.request.contextPath}/resources/image/images/main_viewericon.gif">
			</a> <a href="#"> <img
				src="${pageContext.request.contextPath}/resources/image/images/top_menu_logout.gif">
			</a>
		</div>
		<div class="topMiddleMenu">
			<ul>
				<li class="topMenuLi"><a class="menuLink" href="openMailRead.do">전자메일</a></li>
				<li>|</li>
				<li role="presentation" class="topMenuLi"><a class="menuLink"
					href="#">웹하드</a>
					<ul class="submenu">
						<li><a href="openIndividualHard.do" class="submenuLink">개인웹하드</a></li>
						<li><a href="openPublicHard.do" class="submenuLink">공용웹하드</a></li>
					</ul></li>
				<li>|</li>
				<li role="presentation" class="topMenuLi"><a class="menuLink"
					href="#">업무일지</a>
					<ul class="submenu">
						<li><a href="openJournalWrite.do" class="submenuLink">업무일지작성</a></li>
						<li><a href="openReportingJournal.do" class="submenuLink">보고한업무일지 </a></li>
						<li><a href="openReportedJournal.do" class="submenuLink">보고받은업무일지 </a></li>
						<li><a href="openReportLineSetting.do" class="submenuLink">보고선설정</a></li>
						<li><a href="openBusinessContact.do" class="submenuLink">업무연락</a></li>
					</ul></li>
				<li>|</li>
				<li role="presentation" class="topMenuLi"><a class="menuLink"
					href="#">주소록</a>
					<ul class="submenu">
						<li><a href="/openIndividualAddress.do" class="submenuLink">개인주소록</a></li>
						<li><a href="/openPublicAddress.do" class="submenuLink">공용주소록</a></li>
					</ul></li>
				<li>|</li>
				<li role="presentation" class="topMenuLi"><a class="menuLink"
					href="openBoardList.do" class="topMenuLi">게시판</a>
					<ul class="submenu">
						<li><a class="submenuLink">공지사항</a></li>
						<li><a class="submenuLink">기술관련</a></li>
						<li><a class="submenuLink">영업관련</a></li>
						<li><a class="submenuLink">회의실예약현황 </a></li>
						<li><a class="submenuLink">기타</a></li>
					</ul></li>
				<li>|</li>
				<li role="presentation" class="topMenuLi"><a class="menuLink"
					href="#">일정관리</a>
					<ul class="submenu">
						<li><a class="submenuLink">오늘일정(월 일)</a></li>
						<li><a class="submenuLink">일간일정</a></li>
						<li><a class="submenuLink">주간일정</a></li>
						<li><a class="submenuLink">월간일정</a></li>
					</ul></li>
				<li>|</li>
				<li role="presentation" class="topMenuLi"><a class="menuLink"
					href="#">전자결제</a></li>
				<li>|</li>
				<li role="presentation" class="topMenuLi"><a class="menuLink"
					href="#">직원연락처</a></li>
				<li>|</li>
				<li role="presentation" class="topMenuLi"><a class="menuLink"
					href="#">업무메뉴얼</a></li>
				<li>|</li>
				<li role="presentation" class="topMenuLi"><a class="menuLink"
					href="#">대량메일</a></li>
			</ul>
		</div>
	</nav>
</div>