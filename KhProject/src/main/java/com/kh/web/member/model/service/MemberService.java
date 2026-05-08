package com.kh.web.member.model.service;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.kh.web.common.Template;
import com.kh.web.member.model.dao.MemberDao;
import com.kh.web.member.model.dto.MemberDto;
import com.kh.web.member.model.dto.UpdatePwdDto;

public class MemberService {
	
	private MemberDao md = new MemberDao();
	
	//validate <- 한번 다시 보는 것두 4:11
	
	//일단은 생략하고 CRUD 집중
	
	
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
		//로그인 처리 -> DAO로 전달값을 전달해서 SELECT 해보기 ->  결과값 반환
		// 전통적이 session 방식 로그인은 조회된 행의 정보를 객체의 필드에 담아서 변환
		// validate(member); 비즈니스 로직 ~ 이번엔 생략합니다
		
		SqlSession sqlSession = Template.getSqlSession();
		
		MemberDto loginMember = md.login(sqlSession, member);
		
		sqlSession.close();
		
		return loginMember;
		
		//뭔가 
		// 좋은 방식 전통적인 방식 계속 현장에서 쓰인다 != 좋은 방식이다
	}
	
	public MemberDto updateMember(Map<String, String> map) {
		MemberDto userInfo = null;
		SqlSession sqlSession = Template.getSqlSession();
		
		int result = md.updateMember(sqlSession, map);
		
		if(result > 0) {
			
			sqlSession.commit();
			userInfo  = md.selectMember(sqlSession, Long.parseLong(map.get("userNo")));
			// 이걸 commit이전에 쓰면 update 이전이라 안되지 않을까?
			// 근데 commit중에 예외가 일어날 수 있다? 뭐징
		}
		
		sqlSession.close();
		
		return userInfo;
	}
		

	public int updatePassword(UpdatePwdDto upd) {
		
		SqlSession sqlSession = Template.getSqlSession();
		
		int result =md.updatePassword(sqlSession, upd);
		
		if(result >0) {
			sqlSession.commit();
		}
		
		sqlSession.close();
		return result;
		
	}
	
	public int deleteMember(MemberDto member) {
		
		SqlSession session = Template.getSqlSession();
		
		int result =  md.deleteMember(session, member);
		
		if(result > 0) {
			session.commit();
		}
		
		session.close();
		
		return result;
	}
		
		


	
}

	

