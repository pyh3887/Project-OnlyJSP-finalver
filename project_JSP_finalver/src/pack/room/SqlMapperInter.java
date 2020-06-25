package pack.room;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import pack.room.LodgingDto;
import pro.business.ReserveBean;


public interface SqlMapperInter {

	@Select("select * from lodging where lodging_no = #{lodging_no}")
	public List<LodgingDto> selectLodg(LodgingFormBean bean);
	
	@Select("select * from room where lodging_no = #{lodging_no}")
	public List<RoomDto> selectRoom(LodgingFormBean bean);
	
	@Select("select * from room inner join lodging on room.lodging_no = lodging.lodging_no where room.lodging_no = #{lodging_no}")
	public List<RoomDto> selectLodData(LodgingFormBean no);
	
	@Select("select * from gogek where gogek_id = #{gogek_id}")
	public List<GogekDto> selectGogek(String id);
	
	@Select("select room_no from room where room_no = #{room_no}")
	public List<RoomDto> selectRoomtwo(int id);
	
	@Insert("insert into reserve(enter_date,out_date,gogek_id,room_no) values(#{enter_date} ,#{out_date} , #{id}, #{room_no})") 
	public int Updatero(pack.room.ReserveBean rbean);
	
	
	@Update("update gogek set gogek_money = #{gogek_money} where gogek_id = #{gogek_id}") 
	public int Updatego(GogekFormBean bean);

	
}
