package com.sample.web.member.model.dao;

import org.apache.ibatis.session.SqlSession;

import com.sample.web.member.model.dto.MemberDto;

public class MemberDao {
	
	public int insertMember(SqlSession sqlSession, MemberDto member) {
		return sqlSession.insert("memberMapper.insertMember", member);
	}
	
	public MemberDto login(SqlSession sqlSession, MemberDto member) {
		return sqlSession.selectOne("memberMapper.login", member);
	}
	
	public int deleteMember(SqlSession sqlSession, MemberDto member) {
		return sqlSession.update("memberMapper.deleteMember", member);
	}
}