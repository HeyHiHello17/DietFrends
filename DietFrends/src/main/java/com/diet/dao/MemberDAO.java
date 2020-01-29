package com.diet.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.diet.dto.MemberDTO;

@Repository
public class MemberDAO {
	
	private static final String namespaceMember = "MemberMapper";
	@Autowired
	private SqlSession sqlSession;
	
	//[로그인 구현]
	public MemberDTO login(String id) {
		return sqlSession.selectOne(namespaceMember+".login", id);
	}

}
