package com.kh.web.member.model.dao;

import org.apache.ibatis.session.SqlSession;

import com.kh.web.member.model.dto.MemberDto;

public class MemberDao {
	
	public int insertMember(SqlSession sqlSession, MemberDto member) {
		return sqlSession.insert("memberMapper.insertMember", member);
	}
	
	public MemberDto login(SqlSession sqlSession, MemberDto member) {
		return sqlSession.selectOne("memberMapper.login", member);
		// UNIQUE 제약 조건 때문에 한 행밖에 안나옴
	}

}
