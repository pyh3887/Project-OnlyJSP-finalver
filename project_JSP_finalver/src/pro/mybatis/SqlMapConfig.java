package pro.mybatis;

import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import pro.business.SqlMapper;

public class SqlMapConfig {
	public static SqlSessionFactory sqlSession; 
	
	static {
		String source = "pro/mybatis/Configuration.xml";
		
		try {
			Reader reader = Resources.getResourceAsReader(source); 
			sqlSession = new SqlSessionFactoryBuilder().build(reader); 
			reader.close();
			
			
			
			Class[] mappers = {SqlMapper.class};
			for(Class m:mappers) {
				sqlSession.getConfiguration().addMapper(m);
				
			}
		}catch (Exception e) {
			System.out.println("SqlMapConfig err");
			e.printStackTrace();
		}
	}
	
	public static SqlSessionFactory getSqlSession() { 
		return sqlSession;
	}
}
