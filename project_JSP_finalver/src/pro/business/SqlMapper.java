package pro.business;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

public interface SqlMapper {
	@Select("select * from gogek where gogek_id =#{gogek_id}")
	public List<GogekDto> selectDataAll(String id);
	
	@Select("select * from gogek")
	public List<GogekDto> selectDataAll2();
	
	@Select("select * from gogek where gogek_id=#{gogek_id}")
	public GogekDto selectDataPart(String id);
	
	@Insert("insert into gogek values(#{gogek_id}, #{gogek_passwd}, #{gogek_name}, #{gogek_tel},#{gogek_money})")
	public int insertData(GogekFormBean bean);
	
	@Update("update gogek set gogek_name=#{gogek_name}, gogek_tel=#{gogek_tel} where gogek_id=#{gogek_id}")
	public int updateData(GogekFormBean bean);
	
	@Select("select enter_date, out_date, gogek_id, reserve.room_no, room_name, room_price from reserve inner join room on reserve.room_no = room.room_no where gogek_id =#{gogek_id}")
	public List<ReserveDto> selectReservePart(String id);
	
	@Delete("delete from gogek where gogek_id=#{gogek_id}")
	public int delete(String id);
	
	@Select("select * from admin where admin_id=#{admin_id}")
	public AdminDto adminData(String id);
	
	@Select("select * from ceo where ceo_id=#{ceo_id}")
	public CeoDto ceoData(String id);
	
	@Select("select * from facility")
	public FacilityDto faData();
	
	
}
