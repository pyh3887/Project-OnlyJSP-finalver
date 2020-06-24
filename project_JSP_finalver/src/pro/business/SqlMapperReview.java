package pro.business;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Select;

public interface SqlMapperReview {
	
	@Select("select review_no,gogek_id, re_cont,rdate,room_name from review join room on review.room_no = room.room_no")
	public List<ReviewDto> selectDataAll3();
	
	@Delete("delete from review where review_no=#{review_no}")
	public int delete(String no);
}
