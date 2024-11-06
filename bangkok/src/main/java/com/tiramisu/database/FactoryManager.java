package com.tiramisu.database;

import java.io.InputStream;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class FactoryManager {
	// SQL문 DB로 보내주는 통로 여는 메소드 수정 X
	// 프로그램이 시작되자 마자 DBCP 생성
		private static SqlSessionFactory  sqlSessionFactory;
		
		// { } : 초기화 블럭
		//		 생성자 사용시에 실행
		
		// static { } : static 초기화 블럭
		//				static 변수/메소드가 메모리에 등록된 직후 실행
		static {
			try {
				// ctrl+shift+o
				String resource = "com/tiramisu/database/config.xml";
				InputStream inputStream = Resources.getResourceAsStream(resource);
				sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
			} catch (Exception e) {
				e.printStackTrace(); //에러 메세지 출력
			}
		}

		public static SqlSessionFactory getSqlSessionFactory() {
			return sqlSessionFactory;
		
		}
}
