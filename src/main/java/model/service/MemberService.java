package model.service;

import model.vo.MemberVO;

public interface MemberService {

	void join(MemberVO member);

    MemberVO login(MemberVO memberVO);
}
