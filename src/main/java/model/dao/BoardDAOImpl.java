package model.dao;

import java.util.List;

import javax.annotation.Resource;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.vo.BoardVO;

@Repository
public class BoardDAOImpl implements BoardDAO {

	@Autowired
	@Resource
	private SqlSessionTemplate template;

	@SuppressWarnings("unchecked")
	@Override
	public JSONArray findBoardList() {
		List<BoardVO> boardList = template.selectList("board.findBoardList");
		
		JSONObject jObject = new JSONObject();
		JSONArray jArray = new JSONArray();
		for (BoardVO boardVO : boardList)
		{
		     JSONObject boardJSON = new JSONObject();
		     boardJSON.put("idx", boardVO.getIdx());
		     boardJSON.put("title", boardVO.getTitle());
		     boardJSON.put("hit_cnt", boardVO.getHit_cnt());
		     boardJSON.put("crea_date", boardVO.getCrea_date());
		     jArray.add(boardJSON);
		}
//		jObject.put("BoardList", jArray);
		return jArray;
	}

	@Override
	public void insertBoard(BoardVO bvo) {
		template.insert("board.insertBoard", bvo);
	}

	@Override
	public BoardVO selectBoardDetail(int idx) {
		return template.selectOne("board.selectBoardDetail", idx);
	}

	@Override
	public void hitUp(int idx) {
		template.update("board.hitUp", idx);
	}

	@Override
	public void updateBoard(BoardVO bvo) {
		template.update("board.updateBoard", bvo);
	}

	@Override
	public void deleteBoard(int idx) {
		template.delete("board.deleteBoard", idx);
	}

	@Override
	public BoardVO getBoardInfoByIdx(int idx) {
		return template.selectOne("board.getBoardInfoByIdx", idx);
	}

	/*@Override
	public void updateIdx(int idx) {
		template.selectOne("board.updateIdxSequence");
		template.selectOne("board.updateGidxSequence");
	}*/

	@Override
	public void insertBoardReply(BoardVO bvo) {
		template.insert("board.insertBoardReply", bvo);
	}
	
	
	/**
	* List<VO> 형태의 데이터를 넘겨주면 json 형태로 리턴하는 메소드
	* @param data
	* @return
	* @throws Exception 
	public static <VO> String toJson(List<BoardVO> data) throws Exception{
	JSONArray jsonArray = new JSONArray();
	for(BoardVO bvo : data){
	jsonArray.put(toMap(bvo));
	}
	return jsonArray.toString();
	}
	*/
}
