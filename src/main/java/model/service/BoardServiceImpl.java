package model.service;

import javax.annotation.Resource;

import org.json.simple.JSONArray;
import org.springframework.stereotype.Service;

import model.dao.BoardDAO;
import model.vo.BoardVO;

@Service
public class BoardServiceImpl implements BoardService {

	@Resource
	private BoardDAO boardDAO;

	@Override
	public JSONArray findBoardList() {
		return boardDAO.findBoardList();
	}

	@Override
	public void insertBoard(BoardVO bvo) {
		boardDAO.insertBoard(bvo);
	}

	@Override
	public BoardVO selectBoardDetail(int idx) {
		boardDAO.hitUp(idx);
		return boardDAO.selectBoardDetail(idx);
	}

	@Override
	public BoardVO onlySelectBoardDetail(int idx) {
		return boardDAO.selectBoardDetail(idx);
	}

	@Override
	public void updateBoard(BoardVO bvo) {
		boardDAO.updateBoard(bvo);
	}

	@Override
	public void deleteBoard(int idx) {
		boardDAO.deleteBoard(idx);
	}

	@Override
	public void insertBoardReply(BoardVO bvo) {
		BoardVO p_bvo = boardDAO.getBoardInfoByIdx(bvo.getIdx());
		bvo.setGseq(p_bvo.getGseq());
		bvo.setLev(p_bvo.getLev());
		bvo.setLev(bvo.getLev()+1);
		boardDAO.insertBoardReply(bvo);
	}
	
	
}
