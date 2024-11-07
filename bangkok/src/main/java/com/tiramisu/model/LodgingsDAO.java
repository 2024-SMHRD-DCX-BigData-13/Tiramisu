package com.tiramisu.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.tiramisu.database.FactoryManager;

public class LodgingsDAO {
	
	private SqlSessionFactory factory
	= FactoryManager.getSqlSessionFactory();
	
	public List<Lodgings> search(String input) { // (임시 틀) 로직 결정시 수정 필요
		
		SqlSession session = factory.openSession( true );
		List<Lodgings> lods =  session.selectList("search", '%'+input+'%');
		
		return lods;
	}
	
	
	
}
