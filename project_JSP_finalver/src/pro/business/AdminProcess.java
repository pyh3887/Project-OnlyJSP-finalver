package pro.business;


import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import pro.business.AdminDto;
import pro.business.SqlMapper;
import pro.mybatis.SqlMapConfig;

public class AdminProcess {
	
	private SqlSessionFactory factory = SqlMapConfig.getSqlSession();
	
	public AdminDto adminData(String id) {
		SqlSession sqlSession = factory.openSession();
	
		AdminDto dto = null;
		
		try {
			SqlMapper inter = (SqlMapper)sqlSession.getMapper(SqlMapper.class);
			dto = inter.adminData(id);
			
		} catch (Exception e) {
			System.out.println("adminData err: " + e);
		} finally {
			if (sqlSession != null)
				sqlSession.close();
		}
		return dto;
	}
	
	
}
