package pack.business;

import java.util.List;

import org.apache.ibatis.annotations.Select;


public interface SqlMapperInter {
	
	
	
	@Select("select lodging_no,lodging_name,lodging_loc,lodging_img from lodging where lodging_name like concat('%',#{search},'%') or lodging_loc like concat('%',#{search},'%')")
	public List<mainListDto> selectmainList(String search);	
	
	@Select("select lodging_no,lodging_name,lodging_loc,lodging_img from lodging where facility_no = 1")
	public List<mainListDto> selectMotellist();	
	
	@Select("select lodging_no,lodging_name,lodging_loc,lodging_img from lodging where facility_no = 2")
	public List<mainListDto> selecthotellist();	
	
	@Select("select lodging_no,lodging_name,lodging_loc,lodging_img from lodging where facility_no = 3")
	public List<mainListDto> selectguestlist();
	
	@Select("select lodging_no,lodging_name,lodging_loc,lodging_img from lodging where facility_no = 4")
	public List<mainListDto> selectpensionlist();	
	
	@Select("select lodging_no,lodging_name,lodging_loc,lodging_img from lodging")
	public List<mainListDto> selectalllist();
	
	
	
	@Select("select lodging_no,lodging_name,lodging_loc,lodging_img from lodging where facility_no = #{sleep_place} and lodging_name like concat('%',#{partsearch},'%')")
	public List<mainListDto> partlist(typeBean bean);



}
