package com.tiramisu.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.tiramisu.database.FactoryManager;

public class UrlsDAO {

	private SqlSessionFactory factory = FactoryManager.getSqlSessionFactory();

	public List<Urls> selectForType(String input) { // (임시 틀) 로직 결정시 수정 필요

		SqlSession session = factory.openSession(true);
		
		List<Urls> urls = session.selectList("selectForType",input);
		
		session.close();
		
		return urls;
	}
	
	public List<Urls> selectForAddr(Lodgings lod) { // (임시 틀) 로직 결정시 수정 필요

		SqlSession session = factory.openSession(true);
		
		List<Urls> urls = session.selectList("selectForAddr",lod);
		
		session.close();
		
		return urls;
	}
	
	public List<Urls> selectForSearch(Lodgings lod) { // (임시 틀) 로직 결정시 수정 필요

		SqlSession session = factory.openSession(true);
		
		List<Urls> urls = session.selectOne("selectForSearch",lod);
		
		session.close();
		
		return urls;
	}
	public Urls selectForDetail(int input) { // (임시 틀) 로직 결정시 수정 필요

		SqlSession session = factory.openSession(true);
		
		Urls urls = session.selectOne("selectForDetail",input);
		
		session.close();
		
		return urls;
	}
	
	public List<Urls> selectForRating() { // (임시 틀) 로직 결정시 수정 필요

		SqlSession session = factory.openSession(true);
		
		List<Urls> urls = session.selectList("selectForRatingUrl");
		
		session.close();
		
		return urls;
	}
	
}
