<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<script type="text/javascript" charset="utf-8" src="resources/smarteditor2-master/workspace/js/service/HuskyEZCreator.js"></script>
</head>
<body>
    <form id="frm">
        <table style="width: 100%;">
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
                    <td>
                        ${bvo.idx}
                        <input type="hidden" id="idx" name="idx" value="${bvo.idx}">
                    </td>
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
                    <td colspan="3">
                        <input type="text" id="title" name="title" class="wdp_90" value="${bvo.title}"/>
                    </td>
                </tr>
                <tr>
                    <td colspan="4" class="view_text">
                        <textarea rows="15" cols="100" title="내용" id="contents" name="contents"></textarea>
                    </td>
                </tr>
            </tbody>
        </table>
    </form>
     
    <a href="#this" class="btn btn-info" id="list">목록으로</a>
    <a href="#this" class="btn btn-info" id="update">저장하기</a>
    <a href="#this" class="btn btn-info" id="delete">삭제하기</a>
     
    <script type="text/javascript">
        $(document).ready(function(){
            $("#list").on("click", function(e){ //목록으로 버튼
                e.preventDefault();
                fn_openBoardList();
            });
             
            $("#update").on("click", function(e){ //저장하기 버튼
                e.preventDefault();
                fn_updateBoard();
            });
             
            $("#delete").on("click", function(e){ //삭제하기 버튼
                e.preventDefault();
                fn_deleteBoard();
            });
        });
         
        function fn_openBoardList(){
			location.href="openBoardList.do";
        }
         
        function fn_updateBoard(){
	    	oEditors.getById["contents"].exec("UPDATE_CONTENTS_FIELD", []);
			location.href="updateBoard.do?idx=" + $("#idx").val() + "&title=" + $("#title").val() + "&contents=" + $("#contents").val();
        }
         
        function fn_deleteBoard(){
			location.href="deleteBoard.do?idx=" + $("#idx").val();
        }
        
		var oEditors = [];
        nhn.husky.EZCreator.createInIFrame({
            oAppRef: oEditors,
            elPlaceHolder: "contents", //textarea에서 지정한 id와 일치해야 합니다. 
            //SmartEditor2Skin.html 파일이 존재하는 경로
            sSkinURI: "resources/smarteditor2-master/workspace/SmartEditor2Skin.html",  
            htParams : {
                // 툴바 사용 여부 (true:사용/ false:사용하지 않음)
                bUseToolbar : true,             
                // 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음)
                bUseVerticalResizer : true,     
                // 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음)
                bUseModeChanger : true,         
                fOnBeforeUnload : function(){
                     
                }
            }, 
            fOnAppLoad : function(){
                //기존 저장된 내용의 text 내용을 에디터상에 뿌려주고자 할때 사용
                oEditors.getById["contents"].exec("PASTE_HTML", ["<![CDATA[${bvo.contents}]]>"]);
            },
            fCreator: "createSEditor2"
        });
    </script>
</body>
</html>