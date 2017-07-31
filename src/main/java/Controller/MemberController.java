package Controller;

import model.service.MemberService;
import model.vo.MemberVO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

@Controller
public class MemberController {

	@Resource @SuppressWarnings("SpringJavaAutowiringInspection")
	private MemberService memberService;
	
	@RequestMapping(value = "index.do")
	public String index() {
		return "empty/index";
	}
	
	@RequestMapping(value = "home.do")
	public String login_form() {
		return "home";
	}
	
	@RequestMapping(value = "join_form.do")
	public String join_form() {
		return "join_form";
	}

	@RequestMapping(value = "join.do", method = RequestMethod.POST)
	public String join(MemberVO member) {
		System.out.println("id: " + member.getId() + ", password: " + member.getPassword());
		memberService.join(member);
		return "redirect:index.do";
	}

	@RequestMapping(value = "login.do", method = RequestMethod.POST)
	public String login(HttpSession session, MemberVO memberVO){
		MemberVO mvo = memberService.login(memberVO);
		if(mvo == null)
			return "empty/login_fail";
		else {
			session.setAttribute("mvo", mvo);
			return "redirect:home.do";
		}
	}

	@RequestMapping("logout.do")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:index.do";
	}
}
