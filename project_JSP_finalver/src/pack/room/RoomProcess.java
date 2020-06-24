package pack.room;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import pack.room.LodgingDto;
import pack.room.SqlMapperInter;
import pack.mybatis2.SqlMapConfig;

public class RoomProcess {
	private SqlSessionFactory factory = SqlMapConfig.getSqlSession();
	
	public List<LodgingDto> selectLodg(LodgingFormBean bean) {
		SqlSession sqlSession = factory.openSession();
		List<LodgingDto> list = null;
		
		try {
			SqlMapperInter inter = (SqlMapperInter)sqlSession.getMapper(SqlMapperInter.class);
			list = inter.selectLodg(bean);
		} catch (Exception e) {
			System.out.println("selectLodg err : " + e);
		} finally {
			if(sqlSession != null) { sqlSession.close(); }
		}
		
		return list;
		
	}
	
	public List<RoomDto> selectRoom(LodgingFormBean bean) {
		SqlSession sqlSession = factory.openSession();
		List<RoomDto> list = null;
		
		try {
			SqlMapperInter inter = (SqlMapperInter)sqlSession.getMapper(SqlMapperInter.class);
			list = inter.selectRoom(bean);
		} catch (Exception e) {
			System.out.println("selectRoom err : " + e);
		} finally {
			if(sqlSession != null) { sqlSession.close(); }
		}
		
		return list;
		
	}
	
	public List<RoomDto> selectLodData(LodgingFormBean no) {
		SqlSession sqlSession = factory.openSession();
		List<RoomDto> dto = null;
		try {
			SqlMapperInter inter = (SqlMapperInter)sqlSession.getMapper(SqlMapperInter.class);
			dto = inter.selectLodData(no);
		} catch (Exception e) {
			System.out.println("selectLodData err : " + e);
		} finally {
			if(sqlSession != null) { sqlSession.close(); }
		}
		
		return dto;
	}
	
	public boolean Updatego(GogekFormBean bean) {
		boolean b = false;
		SqlSession sqlSession = factory.openSession();
		bean.setGogek_id("id");
		
		try {
			SqlMapperInter inter = (SqlMapperInter)sqlSession.getMapper(SqlMapperInter.class);
				
			// 비밀번호 비교 후 수정여부를 판단
			GogekDto dto = (GogekDto)inter.selectGogek(bean.getGogek_id());
			
			if(dto.getGogek_passwd().equalsIgnoreCase(bean.getGogek_passwd())) {
				if(inter.Updatego(bean) > 0) {
					b = true;
					sqlSession.commit();
				}
			}
			
			
		} catch (Exception e) {
			System.out.println("upData err : " + e);
			sqlSession.rollback();
		} finally {
			if(sqlSession != null) { sqlSession.close(); }
		}
		
		return b;
	}
	
	public boolean Updategro() {
		boolean b = false;
		SqlSession sqlSession = factory.openSession();
		
		
		try {
			SqlMapperInter inter = (SqlMapperInter)sqlSession.getMapper(SqlMapperInter.class);
			
			
				if(inter.Updatero(4) > 0) {
					b = true;
					sqlSession.commit();
				
			}
			
			
		} catch (Exception e) {
			System.out.println("Updategro err : " + e);
			sqlSession.rollback();
		} finally {
			if(sqlSession != null) { sqlSession.close(); }
		}
		
		return b;
	}
	
}
