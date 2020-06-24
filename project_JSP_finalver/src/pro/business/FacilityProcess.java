package pro.business;


import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import pro.business.AdminDto;
import pro.business.SqlMapper;
import pro.mybatis.SqlMapConfig;

public class FacilityProcess {
	
	private SqlSessionFactory factory = SqlMapConfig.getSqlSession();
	
	public FacilityDto faData() {
		SqlSession sqlSession = factory.openSession();
	
		FacilityDto dto = null;
		
		try {
			SqlMapper inter = (SqlMapper)sqlSession.getMapper(SqlMapper.class);
			dto = inter.faData();
			
		} catch (Exception e) {
			System.out.println("faData err: " + e);
		} finally {
			if (sqlSession != null)
				sqlSession.close();
		}
		return dto;
	}
	
	
}
