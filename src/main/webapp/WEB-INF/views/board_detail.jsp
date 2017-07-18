<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
</head>
<body>
    <table class="board_view">
        <colgroup>
            <col width="15%"/>
            <col width="35%"/>
            <col width="15%"/>
            <col width="35%"/>
        </colgroup>
        <caption>게시글 상세</caption>
        <tbody>
            <tr>
                <th scope="row">글 번호</th>
                <td>${bvo.idx}</td>
                <th scope="row">조회수</th>
                <td>${bvo.hit_cnt}</td>
            </tr>
            <tr>
                <th scope="row">작성자</th>
                <td>${bvo.ip}</td>
                <th scope="row">작성시간</th>
                <td>${bvo.crea_date}</td>
            </tr>
            <tr>
                <th scope="row">제목</th>
                <td colspan="3">${bvo.title}</td>
            </tr>
            <tr>
                <td colspan="4" height="200px">${bvo.contents}</td>
            </tr>
        </tbody>
    </table>
     
    <a href="#this" class="btn btn-info" id="list">목록으로</a>
    <a href="#this" class="btn btn-info" id="update">수정하기</a>
    <a href="#this" class="btn btn-info" id="reply">답글달기</a>
     
    <script type="text/javascript">
        $(document).ready(function(){
            $("#list").on("click", function(e){ //목록으로 버튼
                e.preventDefault();
                fn_openBoardList();
            });
             
            $("#update").on("click", function(e){
                e.preventDefault();
                fn_openBoardUpdate();
            });
             
            $("#reply").on("click", function(e){
                e.preventDefault();
                fn_openBoardReply();
            });
        });
         
        function fn_openBoardList(){
            location.href="openBoardList.do";
        }
         
        function fn_openBoardUpdate(){
            var idx = "${bvo.idx}";
            location.href="openBoardUpdate.do?idx=" + idx;
        }

        function fn_openBoardReply(){
            var idx = "${bvo.idx}";
            var title = "${bvo.title}";
			location.href="openBoardReply.do?idx=" + idx + "&title=" + title;
        }
    </script>
</body>
</html>