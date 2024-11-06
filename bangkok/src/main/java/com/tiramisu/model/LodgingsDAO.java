package com.tiramisu.model;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.tiramisu.database.FactoryManager;

public class LodgingsDAO {
	
	private SqlSessionFactory factory
	= FactoryManager.getSqlSessionFactory();
	
	public int logicName() { // (임시 틀) 로직 결정시 수정 필요
		
		SqlSession session = factory.openSession( true );

		return 0;
	}
	
	
	
}
