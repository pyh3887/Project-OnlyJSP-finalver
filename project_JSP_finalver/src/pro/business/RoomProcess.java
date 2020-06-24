package pro.business;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import pro.business.LodgingDto;
import pro.business.SqlMapperLodging;
import pro.mybatisl.SqlMapConfig;

public class RoomProcess {
	
	private SqlSessionFactory factory = SqlMapConfig.getSqlSession();
	
	public boolean insert(RoomFormBean bean) {
		boolean b = false;
		SqlSession sqlSession = factory.openSession();

		try {
			SqlMapperLodging inter = (SqlMapperLodging)sqlSession.getMapper(SqlMapperLodging.class);
			if(inter.insert(bean) > 0) b = true;
			sqlSession.commit();
		} catch (Exception e) {
			System.out.println("insertData err: " + e);
			sqlSession.rollback();
		} finally {
			if (sqlSession != null)
				sqlSession.close();
		}
		return b;
	}
	
	public LodgingDto selectData(String id) {
		SqlSession sqlSession = factory.openSession();
	
		LodgingDto dto = null;
		
		try {
			SqlMapperLodging inter = (SqlMapperLodging)sqlSession.getMapper(SqlMapperLodging.class);
			dto = inter.selectData(id);  
			
		} catch (Exception e) {
			System.out.println("selectDataPart err: " + e);
		} finally {
			if (sqlSession != null)
				sqlSession.close();
		}
		return dto;
	}
}
