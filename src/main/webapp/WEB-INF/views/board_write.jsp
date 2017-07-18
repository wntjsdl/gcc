<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<script type="text/javascript" charset="utf-8" src="resources/smarteditor2-master/workspace/js/service/HuskyEZCreator.js"></script>
</head>
	<body>
	    <form id="insert" action="insertBoard.do" method="post">
	        <table style="width: 100%;">
	            <caption>게시글 작성</caption>
	                <tr>
	                    <th scope="row">제목</th>
	                    <td>
	                    	<select id="gnum" style="width: 75px;">
	                    		<option>-</option>
	                    		<option value="1">(공지)</option>
	                    		<option value="2">(질문)</option>
	                    		<option value="3">(보물)</option>
	                    		<option value="4">(영업)</option>
	                    		<option value="5">(소식)</option>
	                    		<option value="6">(회의)</option>
	                    		<option value="7">(유머)</option>
	                    		<option value="8">(기타)</option>
	                    	</select>
	                    </td>
	                    <td><input type="text" id="title" name="title" class="wdp_90"></input></td>
	                </tr>
	                <tr>
	                	<th>
	                		E-Mail
	                	</th>
	                	<td colspan="2">
	                		<input type="text" name="email" id="email"/>
	                	</td>
	                </tr>
	                <tr>
	                    <td colspan="3">
	                        <textarea rows="15" cols="100" title="내용" id="contents" name="contents"></textarea>
	                    </td>
	                </tr>
	                <!-- <tr>
	                	<td>
	                		첨부파일: <input type="file" class="file" id="file"/>
	                	</td>
	                </tr> -->
	        </table>
	         
	        <a href="#this" class="btn btn-info" id="write" >작성하기</a>
	        <a href="#this" class="btn btn-info" id="list" >목록으로</a>
	    </form>
	     
	    <script type="text/javascript" charset="utf-8">
		    $(document).ready(function(){
		        $("#list").on("click", function(e){ //목록으로 버튼
		            e.preventDefault();
		            fn_openBoardList();
		        });
		         
		        $("#write").on("click", function(e){ //작성하기 버튼
		            e.preventDefault();
			    	oEditors.getById["contents"].exec("UPDATE_CONTENTS_FIELD", []);
		            $("#insert").submit();
		        });
		    });
		     
		    function fn_openBoardList(){
	            location.href="openBoardList.do";
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
	            /* fOnAppLoad : function(){
	                //기존 저장된 내용의 text 내용을 에디터상에 뿌려주고자 할때 사용
	                oEditors.getById["CONTENTS"].exec("PASTE_HTML", ["기존 DB에 저장된 내용을 에디터에 적용할 문구"]);
	            }, */
	            fCreator: "createSEditor2"
	        });
		</script>
	</body>
</html>
