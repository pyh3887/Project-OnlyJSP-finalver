package pro.business;

public class ReserveDto {
	private String reserve_no, enter_date, out_date, gogek_id, room_no;
	private String room_name, room_price;

	public String getRoom_name() {
		return room_name;
	}

	public void setRoom_name(String room_name) {
		this.room_name = room_name;
	}

	public String getRoom_price() {
		return room_price;
	}

	public void setRoom_price(String room_price) {
		this.room_price = room_price;
	}

	public String getReserve_no() {
		return reserve_no;
	}

	public void setReserve_no(String reserve_no) {
		this.reserve_no = reserve_no;
	}

	public String getEnter_date() {
		return enter_date;
	}

	public void setEnter_date(String enter_date) {
		this.enter_date = enter_date;
	}

	public String getOut_date() {
		return out_date;
	}

	public void setOut_date(String out_date) {
		this.out_date = out_date;
	}

	public String getGogek_id() {
		return gogek_id;
	}

	public void setGogek_id(String gogek_id) {
		this.gogek_id = gogek_id;
	}

	public String getRoom_no() {
		return room_no;
	}

	public void setRoom_no(String room_no) {
		this.room_no = room_no;
	}

}
