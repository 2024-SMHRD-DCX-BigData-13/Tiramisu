package com.tiramisu.model;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.tiramisu.database.FactoryManager;

public class LodgingsDAO {

	private SqlSessionFactory factory = FactoryManager.getSqlSessionFactory();

	public Lodgings selectForDesc(String input) { // (임시 틀) 로직 결정시 수정 필요

		SqlSession session = factory.openSession(true);
		Lodgings lods = session.selectOne("selectForDesc", input);
		session.close();
		return lods;
	}

	public List<Lodgings> selectForSearch(String lod) { // (임시 틀) 로직 결정시 수정 필요

		SqlSession session = factory.openSession(true);
		List<Lodgings> lods = session.selectList("selectForSearchLods", lod);
		session.close();
		return lods;
	}

	public List<Lodgings> selectForDetail(int lodId) { // (임시 틀) 로직 결정시 수정 필요

		SqlSession session = factory.openSession(true);
		List<Lodgings> lods = session.selectList("selectForDetailLods", lodId);
		session.close();
		return lods;
	}

	public List<Lodgings> selectForRating() {
		SqlSession session = factory.openSession(true);
		List<Lodgings> lods = session.selectList("selectForRatingLod");
		session.close();
		return lods;
	}
}
