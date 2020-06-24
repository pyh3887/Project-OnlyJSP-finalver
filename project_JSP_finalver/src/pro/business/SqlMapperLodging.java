package pro.business;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Select;

public interface SqlMapperLodging {
	@Select("select * from lodging")
	public List<LodgingDto> selectDataAll();
	
	@Delete("delete from lodging where lodging_no=#{lodging_no}")
	public int delete(String no);
	
	@Insert("insert into lodging values(#{lodging_no},#{lodging_name},#{lodging_loc},#{lodging_img},#{ceo_id}, #{facility_no})")
	@Options(useGeneratedKeys = true, keyProperty = "lodging_no")
	public int insertData(LodgingFormBean bean);
	
	@Select("select * from lodging where ceo_id=#{ceo_id}")
	public LodgingDto selectData(String id);
	
	@Insert("insert into room values(#{room_no},#{room_name},#{room_price},#{room_img},#{cont1}, #{cont2 },#{readcnt},#{lodging_no})")
	@Options(useGeneratedKeys = true, keyProperty = "room_no")
	public int insert(RoomFormBean bean);
	
	@Select("select * from lodging where ceo_id = #{ceo_id}")
	public LodgingDto selectCEO(String ceo_id);
	
	
}