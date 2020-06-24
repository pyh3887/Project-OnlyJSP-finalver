package pro.business;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import pro.business.GogekDto;
import pro.business.SqlMapper;
import pro.mybatis.SqlMapConfig;

public class ReserveProcess {
	
	private SqlSessionFactory factory = SqlMapConfig.getSqlSession();
	
	
	public List<ReserveDto> selectReservePart(String id) {
		SqlSession sqlSession = factory.openSession();
	
		List<ReserveDto> list = null;
		
		try {
			SqlMapper inter = (SqlMapper)sqlSession.getMapper(SqlMapper.class);
			list = inter.selectReservePart(id);
			
		} catch (Exception e) {
			System.out.println("selectReservePart err: " + e);
		} finally {
			if (sqlSession != null)
				sqlSession.close();
		}
		return list;
	}
	
	public boolean insertData(GogekFormBean bean) {
		boolean b = false;
		SqlSession sqlSession = factory.openSession();
		try {
			SqlMapper inter = (SqlMapper)sqlSession.getMapper(SqlMapper.class);
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
	
	public boolean updateData(GogekFormBean bean) {
		boolean b = false;
		SqlSession sqlSession = factory.openSession();
		bean.setColname("id");
		try {
			
			SqlMapper inter = (SqlMapper)sqlSession.getMapper(SqlMapper.class);
			
			GogekDto dto = inter.selectDataPart(bean.getGogek_id());
			
			if(dto.getGogek_passwd().equalsIgnoreCase(bean.getGogek_passwd())) {
				if(inter.updateData(bean) > 0) {
					b = true;
					sqlSession.commit();
				}
			}
		} catch (Exception e) {
			System.out.println("updateData err: " + e);
			sqlSession.rollback();
		} finally {
			if (sqlSession != null)
				sqlSession.close();
		}
		return b;
	}
	

	
}
