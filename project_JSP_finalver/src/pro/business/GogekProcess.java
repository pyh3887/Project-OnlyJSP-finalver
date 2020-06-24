package pro.business;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import pro.business.GogekDto;
import pro.business.SqlMapper;
import pro.mybatis.SqlMapConfig;

public class GogekProcess {
	
	private SqlSessionFactory factory = SqlMapConfig.getSqlSession();
	
	public List<GogekDto> selectDataAll(String id) {
		SqlSession sqlSession = factory.openSession();
		List<GogekDto> list = null;
		try {
			SqlMapper inter = (SqlMapper)sqlSession.getMapper(SqlMapper.class);
			list = inter.selectDataAll(id);
		} catch (Exception e) {
			System.out.println("selectDataAll err: " + e);
		} finally {
			if (sqlSession != null)
				sqlSession.close();
		}
		return list;
	}
	
	public List<GogekDto> selectDataAll2() {
		SqlSession sqlSession = factory.openSession();
		List<GogekDto> list = null;
		try {
			SqlMapper inter = (SqlMapper)sqlSession.getMapper(SqlMapper.class);
			list = inter.selectDataAll2();
		} catch (Exception e) {
			System.out.println("selectDataAll err: " + e);
		} finally {
			if (sqlSession != null)
				sqlSession.close();
		}
		return list;
	}
	
	public GogekDto selectDataPart(String id) {
		SqlSession sqlSession = factory.openSession();
	
		GogekDto dto = null;
		
		try {
			SqlMapper inter = (SqlMapper)sqlSession.getMapper(SqlMapper.class);
			dto = inter.selectDataPart(id);
			
		} catch (Exception e) {
			System.out.println("selectDataPart err: " + e);
		} finally {
			if (sqlSession != null)
				sqlSession.close();
		}
		return dto;
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
			//비밀번호 비교 후 수정여부 판단
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
	
	public boolean delete(String id) {
		boolean b = false;
		SqlSession sqlSession = factory.openSession();
		try {
			SqlMapper inter = (SqlMapper)sqlSession.getMapper(SqlMapper.class);
			int cou = inter.delete(id);
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
