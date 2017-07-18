package model.dao;

import javax.annotation.Resource;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import model.vo.MemberVO;

@Repository
public class MemberDAOImpl implements MemberDAO {
@Resource
private SqlSessionTemplate template;

@Override
public void join(MemberVO member) {
	template.insert("member.join", member);
}

}
