package com.sample.web.member.model.service;

import org.apache.ibatis.session.SqlSession;

import com.sample.web.common.Template;
import com.sample.web.member.model.dao.MemberDao;
import com.sample.web.member.model.dto.MemberDto;

public class MemberService {
	
	private MemberDao md = new MemberDao();
	
	
	public int insertMember(MemberDto member) {
	
		SqlSession sqlSession = Template.getSqlSession();
		
		int result = md.insertMember(sqlSession, member);
		if(result > 0) {
			sqlSession.commit();
		}
		sqlSession.close();
		return result;
	}
	
	public MemberDto login(MemberDto member) {
		
		
		SqlSession sqlSession = Template.getSqlSession();
		
		MemberDto loginMember = md.login(sqlSession, member);
		
		sqlSession.close();
		
		return loginMember;
		
		
		
	}
	

	

}


	

	

