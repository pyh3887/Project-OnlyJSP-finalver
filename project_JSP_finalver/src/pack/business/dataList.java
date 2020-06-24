package pack.business;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import pack.mybatis.SqlMapConfig;

public class dataList {
	
	private SqlSessionFactory factory = SqlMapConfig.getSqlSession();
	
	
	public List<mainListDto> selectallist() {
		SqlSession sqlSession = factory.openSession();
		List<mainListDto> list = null;
		
		
		try {
			SqlMapperInter inter = (SqlMapperInter) sqlSession.getMapper(SqlMapperInter.class);

		
			list = inter.selectalllist();		
			
		} catch (Exception e) {
			System.out.println("selectdata err : " + e);

		} finally {
			if (sqlSession != null)
				sqlSession.close();
		}
		return list;

	}
	
	public List<mainListDto> selectDataPart(String search) {
		SqlSession sqlSession = factory.openSession();
		List<mainListDto> list = null;
		
		
		try {
			SqlMapperInter inter = (SqlMapperInter) sqlSession.getMapper(SqlMapperInter.class);

		
			list = inter.selectmainList(search);			
			
		} catch (Exception e) {
			System.out.println("selectdata err : " + e);

		} finally {
			if (sqlSession != null)
				sqlSession.close();
		}
		return list;

	}
	
	public List<mainListDto> selectMotellist() {
		SqlSession sqlSession = factory.openSession();
		List<mainListDto> list = null;
		
		
		try {
			SqlMapperInter inter = (SqlMapperInter) sqlSession.getMapper(SqlMapperInter.class);

		
			list = inter.selectMotellist();		
			
		} catch (Exception e) {
			System.out.println("selectdata err : " + e);

		} finally {
			if (sqlSession != null)
				sqlSession.close();
		}
		return list;

	}
	public List<mainListDto> selecthotellist() {
		SqlSession sqlSession = factory.openSession();
		List<mainListDto> list = null;
		
		
		try {
			SqlMapperInter inter = (SqlMapperInter) sqlSession.getMapper(SqlMapperInter.class);

		
			list = inter.selecthotellist();		
			
		} catch (Exception e) {
			System.out.println("selectdata err : " + e);

		} finally {
			if (sqlSession != null)
				sqlSession.close();
		}
		return list;

	}
	public List<mainListDto> selectguestlist() {
		SqlSession sqlSession = factory.openSession();
		List<mainListDto> list = null;
		
		
		try {
			SqlMapperInter inter = (SqlMapperInter) sqlSession.getMapper(SqlMapperInter.class);


			list = inter.selectguestlist();			
			
		} catch (Exception e) {
			System.out.println("selectdata err : " + e);

		} finally {
			if (sqlSession != null)
				sqlSession.close();
		}
		return list;

	}
	
	public List<mainListDto> selectpensionlist() {
		SqlSession sqlSession = factory.openSession();
		List<mainListDto> list = null;
		
		
		try {
			SqlMapperInter inter = (SqlMapperInter) sqlSession.getMapper(SqlMapperInter.class);
		
			list = inter.selectpensionlist();		
			
		} catch (Exception e) {
			System.out.println("selectdata err : " + e);

		} finally {
			if (sqlSession != null)
				sqlSession.close();
		}
		return list;

	}
	
	
	
	public List<mainListDto> partlist(typeBean bean) {
		SqlSession sqlSession = factory.openSession();
		List<mainListDto> list = null;
		
		
		
		try {
			SqlMapperInter inter = (SqlMapperInter) sqlSession.getMapper(SqlMapperInter.class);

		
			list = inter.partlist(bean);		
		
			
		} catch (Exception e) {
			System.out.println("selectdata err : " + e);

		} finally {
			if (sqlSession != null)
				sqlSession.close();
		}
		return list;

	}
	
	
	public List<mainListDto> hotellist(String search,String no) {
		SqlSession sqlSession = factory.openSession();
		List<mainListDto> list = null;
		
		
		try {
			SqlMapperInter inter = (SqlMapperInter) sqlSession.getMapper(SqlMapperInter.class);

		
			list = inter.selectalllist();		
			
		} catch (Exception e) {
			System.out.println("selectdata err : " + e);

		} finally {
			if (sqlSession != null)
				sqlSession.close();
		}
		return list;

	}
	
	
	public List<mainListDto> guestlist(String search,String no) {
		SqlSession sqlSession = factory.openSession();
		List<mainListDto> list = null;
		
		
		try {
			SqlMapperInter inter = (SqlMapperInter) sqlSession.getMapper(SqlMapperInter.class);

		
			list = inter.selectalllist();		
			
		} catch (Exception e) {
			System.out.println("selectdata err : " + e);

		} finally {
			if (sqlSession != null)
				sqlSession.close();
		}
		return list;

	}
	
	
	public List<mainListDto> pensionlist(String search,String no) {
		SqlSession sqlSession = factory.openSession();
		List<mainListDto> list = null;
		
		
		try {
			SqlMapperInter inter = (SqlMapperInter) sqlSession.getMapper(SqlMapperInter.class);

		
			list = inter.selectalllist();		
			
		} catch (Exception e) {
			System.out.println("selectdata err : " + e);

		} finally {
			if (sqlSession != null)
				sqlSession.close();
		}
		return list;

	}
	
	
	
	
}
