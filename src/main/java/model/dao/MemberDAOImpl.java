package model.dao;

import model.vo.MemberVO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import javax.annotation.Resource;

@Repository
public class MemberDAOImpl implements MemberDAO {
@Resource
private SqlSessionTemplate template;

@Override
public void join(MemberVO member) {
	template.insert("member.join", member);
}

	@Override
	public MemberVO login(MemberVO memberVO) {
		return template.selectOne("member.login", memberVO);
	}

}
