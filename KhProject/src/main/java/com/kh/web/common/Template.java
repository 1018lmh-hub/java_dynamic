package com.kh.web.common;

import java.io.IOException;
import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class Template {
	
	public static SqlSession getSqlSession() {
		SqlSession sqlSession = null;
		
		String config = "/mybatis-config.xml";
		// /는 모든 src폴더의 최상위 의미(여기선 classes 이거 열지 말기 이게 
		//12:48 설명 듣기)
		
		try {
			InputStream stream = Resources.getResourceAsStream(config);
			sqlSession = new SqlSessionFactoryBuilder().build(stream).openSession();
		}catch(IOException e) {
			e.printStackTrace();
		}
		return sqlSession;
	}

}
