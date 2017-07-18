package Controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import model.service.MemberService;
import model.vo.MemberVO;

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
		return "redirect:login_form.do";
	}
}
