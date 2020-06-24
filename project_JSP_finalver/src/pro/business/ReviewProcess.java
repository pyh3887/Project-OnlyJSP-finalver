package pro.business;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;


import pro.business.SqlMapperReview;
import pro.mybatisr.SqlMapConfig;

public class ReviewProcess {
	
	private SqlSessionFactory factory = SqlMapConfig.getSqlSession();
	
	
	public List<ReviewDto> selectDataAll3() {
		SqlSession sqlSession = factory.openSession();
	
		List<ReviewDto> list = null;
		
		try {
			SqlMapperReview inter = (SqlMapperReview)sqlSession.getMapper(SqlMapperReview.class);
			list = inter.selectDataAll3();
			 
		} catch (Exception e) {
			System.out.println("selectDataAll3 err: " + e);
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
			SqlMapperReview inter = (SqlMapperReview)sqlSession.getMapper(SqlMapperReview.class);
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

	
}
