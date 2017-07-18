package model.service;

import org.json.simple.JSONArray;

import model.vo.BoardVO;

public interface BoardService {

	JSONArray findBoardList();

	void insertBoard(BoardVO bvo);

	BoardVO selectBoardDetail(int idx);

	BoardVO onlySelectBoardDetail(int idx);

	void updateBoard(BoardVO bvo);

	void deleteBoard(int idx);

	void insertBoardReply(BoardVO bvo);

}
