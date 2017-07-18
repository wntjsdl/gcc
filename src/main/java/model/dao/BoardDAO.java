package model.dao;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import model.vo.BoardVO;

public interface BoardDAO {

	JSONArray findBoardList();

	void insertBoard(BoardVO bvo);

	BoardVO selectBoardDetail(int idx);

	void hitUp(int idx);

	void updateBoard(BoardVO bvo);

	void deleteBoard(int idx);

	BoardVO getBoardInfoByIdx(int idx);

//	void updateIdx(int idx);

	void insertBoardReply(BoardVO bvo);

}
