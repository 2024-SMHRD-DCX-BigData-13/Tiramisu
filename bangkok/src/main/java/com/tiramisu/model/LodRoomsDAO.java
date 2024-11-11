package com.tiramisu.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.tiramisu.database.FactoryManager;

public class LodRoomsDAO {

	private SqlSessionFactory factory = FactoryManager.getSqlSessionFactory();

	public List<LodRooms> selectForDetail(String input) { // (임시 틀) 로직 결정시 수정 필요

		SqlSession session = factory.openSession(true);
		List<LodRooms> rooms = session.selectList("selectForDetail",input);
		session.close();
		return rooms;
	}

}
