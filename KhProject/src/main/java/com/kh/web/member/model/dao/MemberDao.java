package com.kh.web.member.model.dao;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.kh.web.member.model.dto.MemberDto;
import com.kh.web.member.model.dto.UpdatePwdDto;

public class MemberDao {
	
	public int insertMember(SqlSession sqlSession, MemberDto member) {
		return sqlSession.insert("memberMapper.insertMember", member);
	}
	
	public MemberDto login(SqlSession sqlSession, MemberDto member) {
		return sqlSession.selectOne("memberMapper.login", member);
		// UNIQUE 제약 조건 때문에 한 행밖에 안나옴
	}
	
	public int updateMember(SqlSession sqlSession, Map<String, String> map) {
		return sqlSession.update("memberMapper.updateMember", map);
	}

	public MemberDto selectMember(SqlSession sqlSession, Long userNo) {
		return sqlSession.selectOne("memberMapper.selectMember", userNo);
	}
	
	public int updatePassword(SqlSession sqlSession, UpdatePwdDto upd) {
		return sqlSession.update("memberMapper.changePassword", upd);
	}
	
	public int deleteMember(SqlSession sqlSession, MemberDto member) {
		return sqlSession.update("memberMapper.deleteMember", member);
	}
}
