package pro.business;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import pro.business.LodgingDto;
import pro.business.SqlMapperLodging;
import pro.mybatisl.SqlMapConfig;

public class LodgingProcess {
	
	private SqlSessionFactory factory = SqlMapConfig.getSqlSession();
	
	
	public List<LodgingDto> selectDataAll() {
		SqlSession sqlSession = factory.openSession();
	
		List<LodgingDto> list = null;
		
		try {
			
			SqlMapperLodging inter = (SqlMapperLodging)sqlSession.getMapper(SqlMapperLodging.class);
			list = inter.selectDataAll(); 
			 
		} catch (Exception e) {
			System.out.println("selectDataAll err: " + e);
		} finally {
			if (sqlSession != null)
				sqlSession.close();
		}
		return list;
	}
	
	
	public boolean delete(String no) {
		boolean b = false;
		SqlSession sqlSession = factory.openSession();
		try {
			SqlMapperLodging inter = (SqlMapperLodging)sqlSession.getMapper(SqlMapperLodging.class);
			int cou = inter.delete(no);
			if(cou > 0) b = true;
			sqlSession.commit();
		} catch (Exception e) {
			System.out.println("delete err: " + e);
			sqlSession.rollback();
		} finally {
			if (sqlSession != null)
				sqlSession.close();
		}
		return b;
	}
	public boolean insertData(LodgingFormBean bean) {
		boolean b = false;
		SqlSession sqlSession = factory.openSession();
		System.out.println(bean.getLodging_name());
		try {
			SqlMapperLodging inter = (SqlMapperLodging)sqlSession.getMapper(SqlMapperLodging.class);
			if(inter.insertData(bean) > 0) b = true;
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
	
	public boolean selectCEO(String id) {
		boolean b = false;
		SqlSession sqlSession = factory.openSession();
		LodgingDto dto = null;
	
		
		try {
			SqlMapperLodging inter = (SqlMapperLodging)sqlSession.getMapper(SqlMapperLodging.class);
			
			dto = inter.selectCEO(id);
			
			if(dto == null) {
				 b = true;
			 }
			
		} catch (Exception e) {
			System.out.println("selectDataPart err: " + e);
		} finally {
			if (sqlSession != null)
				sqlSession.close();
		}
		return b;
	}
}
