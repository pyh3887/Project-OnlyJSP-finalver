package pack.room;

import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import pack.room.LodgingDto;


public interface SqlMapperInter {

	@Select("select * from lodging where lodging_no = #{lodging_no}")
	public List<LodgingDto> selectLodg(LodgingFormBean bean);
	
	@Select("select * from room where lodging_no = #{lodging_no}")
	public List<RoomDto> selectRoom(LodgingFormBean bean);
	
	@Select("select cont1, cont2 from room inner join lodging on room.lodging_no = lodging.lodging_no where room.lodging_no = #{lodging_no}")
	public List<RoomDto> selectLodData(LodgingFormBean no);
	
	@Select("select * from gogek where gogek_id = #{gogek_id}")
	public List<GogekDto> selectGogek(String id);
	
	@Select("select room_no from room where room_no = #{room_no}")
	public List<RoomDto> selectRoomtwo(int id);
	
	@Update("update room set readcnt = readcnt+1  where room_no = #{room_no}") 
	public int Updatero(int room_no);
	
	@Update("update gogek set gogek_money = #{gogek_money} where gogek_id = #{gogek_id}") 
	public int Updatego(GogekFormBean bean);

	
}
