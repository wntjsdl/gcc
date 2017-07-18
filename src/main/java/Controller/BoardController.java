package Controller;

import model.service.BoardService;
import model.vo.BoardVO;
import org.json.simple.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

@Controller
public class BoardController {

	@Autowired
	@Resource
	private BoardService boardService;

	@RequestMapping(value = "openBoardList.do")
	public ModelAndView boardList() {
		ModelAndView mv = new ModelAndView("board_list");
		JSONArray boardListJson = boardService.findBoardList();
		mv.addObject("boardListJson", boardListJson);
		return mv;
	}

	@RequestMapping(value = "openBoardWrite.do")
	public ModelAndView openBoardWrite() throws Exception {
		ModelAndView mv = new ModelAndView("board_write");
		return mv;
	}

	@RequestMapping(value = "insertBoard.do")
	public String insertBoard(BoardVO bvo, HttpServletRequest req) throws Exception {
		bvo.setIp(req.getRemoteAddr());
		boardService.insertBoard(bvo);
		return "redirect:openBoardList.do";
	}

	@RequestMapping(value = "openBoardDetail.do")
	public ModelAndView openBoardDetail(String idx) throws Exception {
		int idx_int = Integer.parseInt(idx);
		ModelAndView mv = new ModelAndView("board_detail");
		BoardVO bvo = boardService.selectBoardDetail(idx_int);
		mv.addObject("bvo", bvo);
		return mv;
	}

	@RequestMapping(value = "onlyOpenBoardDetail.do")
	public ModelAndView onlyOpenBoardDetail(String idx) throws Exception {
		int idx_int = Integer.parseInt(idx);
		ModelAndView mv = new ModelAndView("board_detail");
		BoardVO bvo = boardService.onlySelectBoardDetail(idx_int);
		mv.addObject("bvo", bvo);
		return mv;
	}

	@RequestMapping(value = "openBoardUpdate.do")
	public ModelAndView openBoardUpdate(String idx) throws Exception {
		int idx_int = Integer.parseInt(idx);
		ModelAndView mv = new ModelAndView("board_update");
		BoardVO bvo = boardService.onlySelectBoardDetail(idx_int);
		mv.addObject("bvo", bvo);
		return mv;
	}

	@RequestMapping(value = "updateBoard.do")
	public ModelAndView updateBoard(BoardVO bvo) throws Exception {
		ModelAndView mv = new ModelAndView("redirect:onlyOpenBoardDetail.do");
		boardService.updateBoard(bvo);
		mv.addObject("idx", (int) bvo.getIdx());
		return mv;
	}

	@RequestMapping(value = "deleteBoard.do")
	public String deleteBoard(String idx) throws Exception {
		int idx_int = Integer.parseInt(idx);
		boardService.deleteBoard(idx_int);
		return "redirect:openBoardList.do";
	}

	@RequestMapping(value = "openBoardReply.do")
	public ModelAndView openBoardReply(String idx, String title) throws Exception {
		ModelAndView mv = new ModelAndView("board_reply");
		int idx_int = Integer.parseInt(idx);
		mv.addObject("idx", idx_int);
		mv.addObject("title", title);
		return mv;
	}

	@RequestMapping(value = "insertBoardReply.do")
	public String insertBoardReply(BoardVO bvo, HttpServletRequest req) throws Exception {
		bvo.setIp(req.getRemoteAddr());
		System.out.println(bvo.toString());
		boardService.insertBoardReply(bvo);
		return "redirect:openBoardList.do";
	}

	@RequestMapping(value = "openMailRead.do")
	public ModelAndView openMailRead() throws Exception {
		ModelAndView mv = new ModelAndView("mail/mail_read");
		return mv;
	}

	@RequestMapping(value = "openMailWrite.do")
	public ModelAndView openMailWrite() throws Exception {
		ModelAndView mv = new ModelAndView("mail/mail_write");
		return mv;
	}

	@RequestMapping(value = "openMailConfirm.do")
	public ModelAndView openMailConfirm() throws Exception {
		ModelAndView mv = new ModelAndView("mail/mail_confirm");
		return mv;
	}

	@RequestMapping(value = "openSkinSetting.do")
	public ModelAndView openSkinSetting() throws Exception {
		ModelAndView mv = new ModelAndView("mail/mail_setting/skin_setting");
		return mv;
	}

	@RequestMapping(value = "openOutSideMailSetting.do")
	public ModelAndView openOutsideMailSetting() throws Exception {
		ModelAndView mv = new ModelAndView("mail/mail_setting/outside_mail_setting");
		return mv;
	}

	@RequestMapping(value = "openUnsubscribeSetting.do")
	public ModelAndView openUnsubscribe() throws Exception {
		ModelAndView mv = new ModelAndView("mail/mail_setting/unsubscribe_setting");
		return mv;
	}
	
	@RequestMapping(value = "openClassifySetting.do")
	public ModelAndView openClassifySetting() throws Exception {
		ModelAndView mv = new ModelAndView("mail/mail_setting/classify_setting");
		return mv;
	}
	
	@RequestMapping(value = "openAutoResponseSetting.do")
	public ModelAndView openAutoResponseSetting() throws Exception {
		ModelAndView mv = new ModelAndView("mail/mail_setting/auto_response_setting");
		return mv;
	}
	
	@RequestMapping(value = "openForwardSetting.do")
	public ModelAndView openForwardSetting() throws Exception {
		ModelAndView mv = new ModelAndView("mail/mail_setting/forward_setting");
		return mv;
	}
	
	@RequestMapping(value = "openSignFileSetting.do")
	public ModelAndView openSignFileSetting() throws Exception {
		ModelAndView mv = new ModelAndView("mail/mail_setting/sign_file_setting");
		return mv;
	}
	
	@RequestMapping(value = "openBussCardSetting.do")
	public ModelAndView openBussCardSetting() throws Exception {
		ModelAndView mv = new ModelAndView("mail/mail_setting/buss_card_setting");
		return mv;
	}
	
	@RequestMapping(value = "openCharacterSetting.do")
	public ModelAndView openCharacterSetting() throws Exception {
		ModelAndView mv = new ModelAndView("mail/mail_setting/character_setting");
		return mv;
	}
	
	@RequestMapping(value = "openIndividualHard.do")
	public ModelAndView openIndividualHard() throws Exception {
		ModelAndView mv = new ModelAndView("hard/individual_hard");
		return mv;
	}
	
	@RequestMapping(value = "openPublicHard.do")
	public ModelAndView openPublicHard() throws Exception {
		ModelAndView mv = new ModelAndView("hard/public_hard");
		return mv;
	}
	
	@RequestMapping(value = "openJournalWrite.do")
	public ModelAndView openJournalWrite() throws Exception {
		ModelAndView mv = new ModelAndView("journal/journal_write");
		return mv;
	}

	@RequestMapping(value = "openReportingJournal.do")
	public ModelAndView openReportingJournal() throws Exception {
		ModelAndView mv = new ModelAndView("journal/reporting_journal");
		return mv;
	}
	
	@RequestMapping(value = "openReportedJournal.do")
	public ModelAndView openReportedJournal() throws Exception {
		ModelAndView mv = new ModelAndView("journal/reported_journal");
		return mv;
	}

	@RequestMapping(value = "openReportLineSetting.do")
	public ModelAndView openReportLineSetting() throws Exception {
		ModelAndView mv = new ModelAndView("journal/report_line_setting");
		return mv;
	}

	@RequestMapping(value = "openBusinessContact.do")
	public ModelAndView openBusinessContact() throws Exception {
		ModelAndView mv = new ModelAndView("journal/business_contact");
		return mv;
	}

	@RequestMapping(value = "openIndividualAddress.do")
	public ModelAndView openIndividualAddress() throws Exception {
		ModelAndView mv = new ModelAndView("address_book/individual_address");
		return mv;
	}

	@RequestMapping(value = "openPublicAddress.do")
	public ModelAndView openPublicAddress() throws Exception {
		ModelAndView mv = new ModelAndView("address_book/public_address");
		return mv;
	}

}
