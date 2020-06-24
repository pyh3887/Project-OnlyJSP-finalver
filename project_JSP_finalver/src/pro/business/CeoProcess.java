package pro.business;


import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import pro.business.CeoDto;
import pro.business.SqlMapper;
import pro.mybatis.SqlMapConfig;

public class CeoProcess {
	
	private SqlSessionFactory factory = SqlMapConfig.getSqlSession();
	
	public CeoDto ceoData(String id) {
		SqlSession sqlSession = factory.openSession();
	
		CeoDto dto = null;
		
		try {
			SqlMapper inter = (SqlMapper)sqlSession.getMapper(SqlMapper.class);
			dto = inter.ceoData(id);
			
		} catch (Exception e) {
			System.out.println("adminData err: " + e);
		} finally {
			if (sqlSession != null)
				sqlSession.close();
		}
		return dto;
	}
	
	
}
