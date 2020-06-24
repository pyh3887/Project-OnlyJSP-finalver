package pack.room;

public class RoomDto {
	private String room_name, room_price, room_img, cont1, cont2;
	private int room_no, lodging_no, roomcnt;
	
	public String getCont1() {
		return cont1;
	}

	public void setCont1(String cont1) {
		this.cont1 = cont1;
	}

	public String getCont2() {
		return cont2;
	}

	public void setCont2(String cont2) {
		this.cont2 = cont2;
	}

	public int getRoomcnt() {
		return roomcnt;
	}

	public void setRoomcnt(int roomcnt) {
		this.roomcnt = roomcnt;
	}

	public int getRoom_no() {
		return room_no;
	}

	public void setRoom_no(int room_no) {
		this.room_no = room_no;
	}

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

	public String getRoom_img() {
		return room_img;
	}

	public void setRoom_img(String room_img) {
		this.room_img = room_img;
	}

	public int getLodging_no() {
		return lodging_no;
	}

	public void setLodging_no(int lodging_no) {
		this.lodging_no = lodging_no;
	}
	
}
