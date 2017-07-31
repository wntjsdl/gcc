package model.service;

import model.dao.MemberDAO;
import model.vo.MemberVO;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class MemberServiceImpl implements MemberService {
@Resource
private MemberDAO memberDAO;

@Override
public void join(MemberVO member) {
		memberDAO.join(member);
	}

	@Override
	public MemberVO login(MemberVO memberVO) {
		return memberDAO.login(memberVO);
	}
}
