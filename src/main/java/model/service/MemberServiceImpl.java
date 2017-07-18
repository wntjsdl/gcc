package model.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import model.dao.MemberDAO;
import model.vo.MemberVO;

@Service
public class MemberServiceImpl implements MemberService {
@Resource
private MemberDAO memberDAO;

@Override
public void join(MemberVO member) {
		memberDAO.join(member);
	}
}
