<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>

    <script type="text/javascript">

		var datagrid;
		var SBGridProperties;
		var grid_data = ${boardListJson};

  	 	
        $(document).ready(function(){
            $("#write").on("click", function(e){ //글쓰기 버튼
                e.preventDefault();
                fn_openBoardWrite();
            });
             
			var SBGridProperties = {};
			SBGridProperties.parentid = 'SBGridArea';
			SBGridProperties.id = 'datagrid';
			SBGridProperties.jsonref = 'grid_data';
			SBGridProperties.backcoloralternate = '#f4f4f4';
			SBGridProperties.rowheight = 25;
			SBGridProperties.emptyrecords = '조회된 자료가 존재하지 않습니다.';//레코드가 없을경우 출력되는 메시지
			SBGridProperties.width = '100%';
			SBGridProperties.height = '450px';
            SBGridProperties.allowselection=false;
//             SBGridProperties.paging={'type' : 'all' , 'count' : 10 , 'size' : 5};
//          SBGridProperties.explorerbar = 'sort';
			SBGridProperties.columns = [
				{caption : ['글 번호'],		ref : 'idx',		width : 90,		type : 'output',	style : 'text-align:center'},
				{caption : ['제목'],		ref : 'title',		width : 400,	type : 'output',	style : 'text-align:center'},
				{caption : ['조회수'],		ref : 'hit_cnt',	width : 200,	type : 'output',	style : 'text-align:center'},
				{caption : ['작성일'],		ref : 'crea_date',	width : 200,	type : 'output',	style : 'text-align:center'},
			];

			datagrid = _SBGrid.create(SBGridProperties);

			datagrid.refresh();
	
			datagrid.addEventListener("onrowchanged","eventProcess","","");
// 			datagrid.addEventListener("oncolchanged","eventProcess","","");	
        });
        
        function fn_openBoardWrite(){
        	location.href="openBoardWrite.do";
        }
		
		function eventProcess(event)
		{
			var nRow = datagrid.getMouseRow();
			if(nRow >= 1){
				var idx = datagrid.getCellData(nRow, 0);
				location.href="openBoardDetail.do?idx=" + idx;
			}
		} 

    </script>
</head>
<body>
    <h2>게시판 목록</h2>
    <%-- <table class="board_list">
        <colgroup>
            <col width="10%"/>
            <col width="*"/>
            <col width="15%"/>
            <col width="20%"/>
        </colgroup>
        <thead>
            <tr>
                <th scope="col">글번호</th>
                <th scope="col">제목</th>
                <th scope="col">조회수</th>
                <th scope="col">작성일</th>
            </tr>
        </thead>
        <tbody>
            <c:choose>
                <c:when test="${fn:length(list) > 0}">
                    <c:forEach items="${list }" var="row">
                        <tr>
                            <td>${row.IDX }</td>
                            <td class="title">
                                <a href="#this" id="title">${row.TITLE }</a>
                                <input type="hidden" id="IDX" value="${row.IDX }">
                            </td>
                            <td>${row.HIT_CNT }</td>
                            <td>${row.CREA_DTM }</td>
                        </tr>
                    </c:forEach>
                </c:when>
                <c:otherwise>
                    <tr>
                        <td colspan="4">조회된 결과가 없습니다.</td>
                    </tr>
                </c:otherwise>
            </c:choose>
        </tbody>
    </table> --%>
    <br><br><br>
    <div id="SBGridArea" style="width:850px; height:400px; background-color:yellow;"></div>
    <br/>
    <a href="#this" class="btn btn-info" id="write">글쓰기</a>
     
</body>
</html>