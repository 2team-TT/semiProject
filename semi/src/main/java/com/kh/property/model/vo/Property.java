package com.kh.property.model.vo;

/**
 * 
 * @author pwk
 * db에 있는 부동산 매물 테이블(PROPERTY), 매물 상세 테이블(PROPERTY_DETAIL), 매물 사진 테이블(PP_IMG) 가져옴
 * 
 */
public class Property {
	
	private int ppNo;				// PROPERTY, 해당 매물 기본키
	private String ppName;			// PROPERTY, 매물 이름(건물이름)
	private int type;				// PROPERTY, 태그번호(타입)?
	private String brokerage;		// PROPERTY, 중개사무소
										// 해당 컬럼은 NUMBER형이지만 String으로 사용
	private String ppPrice;			// PROPERTY, 해당 매물 가격
	private String ppLocation;		// PROPERTY, 해당 매물 위치
	private int count;				// PROPERTY, 조회수
	private String ppOption;		// PROPERTY, 해당 매물에 대한 옵션
	private String ppInfo;			// PROPERTY, 해당 매물 주변 옵션
	private String ppDate;			// PROPERTY, 해당 매물 등록일
									// * 중요!) 입주 가능일이 아님 *
	
	private int pdNo;				// PROPERTY_DETAIL, 해당 매물 상세정보 기본키
	private int cost;				// PROPERTY_DETAIL, 해당 매물 관리비
	private int floor;				// PROPERTY_DETAIL, 해당 매물 층
	private int pyeong;				// PROPERTY_DETAIL, 해당 매물 넓이(평)
	private int rooms;				// PROPERTY_DETAIL, 해당 매물 방의 개수
	private String direction;		// PROPERTY_DETAIL, 해당 매물 방향
	private String heating;			// PROPERTY_DETAIL, 해당 매물 난방
	private String elevator;		// PROPERTY_DETAIL, 해당 매물 엘리베이터유무
	private int households;			// PROPERTY_DETAIL, 해당 매물 총세대수
	private int parking;			// PROPERTY_DETAIL, 해당 매물 주차대수
	private String moveDate;		// PROPERTY_DETAIL, 입주가능일
	
	private int ppImgNo;			// PP_IMG, 해당 매물 사진 기본키
	private String originalName;	// PP_IMG, 해당 매물 사진 원본명
	private String changeName;		// PP_IMG, 해당 매물 사진 수정명
	private String filePath;		// PP_IMG, 해당 매물 사진 파일경로
	private String fileLevel;		// PP_IMG, 해당 매물 사진 타입
	private String uploadDate;		// PP_IMG, 해당 매물 사진 업로드일자
	
	private String status;			// PROPERTY, 매물 활성화 상태
	
	public Property() {}

	public Property(int ppNo, String ppName, int type, String brokerage, String ppPrice, String ppLocation, int count,
			String ppOption, String ppInfo, String ppDate, int pdNo, int cost, int floor, int rooms, int pyeong, String direction,
			String heating, String elevator, int households, int parking, String moveDate, int ppImgNo,
			String originalName, String changeName, String filePath, String fileLevel, String uploadDate,
			String status) {
		super();
		this.ppNo = ppNo;
		this.ppName = ppName;
		this.type = type;
		this.brokerage = brokerage;
		this.ppPrice = ppPrice;
		this.ppLocation = ppLocation;
		this.count = count;
		this.ppOption = ppOption;
		this.ppInfo = ppInfo;
		this.ppDate = ppDate;
		this.pdNo = pdNo;
		this.cost = cost;
		this.floor = floor;
		this.rooms = rooms;
		this.pyeong = pyeong;
		this.direction = direction;
		this.heating = heating;
		this.elevator = elevator;
		this.households = households;
		this.parking = parking;
		this.moveDate = moveDate;
		this.ppImgNo = ppImgNo;
		this.originalName = originalName;
		this.changeName = changeName;
		this.filePath = filePath;
		this.fileLevel = fileLevel;
		this.uploadDate = uploadDate;
		this.status = status;
	}
	
	
	
	public Property(int ppNo, String ppName, int type, String brokerage, String ppPrice, String ppLocation,
			String ppOption, String ppInfo, String ppDate, int pdNo, int cost, int floor, int pyeong, int rooms, int ppImgNo) {
		super();
		this.ppNo = ppNo;
		this.ppName = ppName;
		this.type = type;
		this.brokerage = brokerage;
		this.ppPrice = ppPrice;
		this.ppLocation = ppLocation;
		this.ppOption = ppOption;
		this.ppInfo = ppInfo;
		this.ppDate = ppDate;
		this.pdNo = pdNo;
		this.cost = cost;
		this.floor = floor;
		this.pyeong = pyeong;
		this.rooms = rooms;
		this.ppImgNo = ppImgNo;
	}
	
	

	public Property(int ppNo, String ppName, int type, String brokerage, String ppPrice, String ppLocation,
			String ppOption, String ppInfo, String ppDate, int pdNo, int cost, int floor, int pyeong, int rooms,
			String moveDate, int ppImgNo, String originalName, String changeName, String filePath) {
		super();
		this.ppNo = ppNo;
		this.ppName = ppName;
		this.type = type;
		this.brokerage = brokerage;
		this.ppPrice = ppPrice;
		this.ppLocation = ppLocation;
		this.ppOption = ppOption;
		this.ppInfo = ppInfo;
		this.ppDate = ppDate;
		this.pdNo = pdNo;
		this.cost = cost;
		this.floor = floor;
		this.pyeong = pyeong;
		this.rooms = rooms;
		this.moveDate = moveDate;
		this.ppImgNo = ppImgNo;
		this.originalName = originalName;
		this.changeName = changeName;
		this.filePath = filePath;
	}

	public int getPpNo() {
		return ppNo;
	}

	public void setPpNo(int ppNo) {
		this.ppNo = ppNo;
	}

	public String getPpName() {
		return ppName;
	}

	public void setPpName(String ppName) {
		this.ppName = ppName;
	}

	public int getType() {
		return type;
	}

	public void setType(int type) {
		this.type = type;
	}

	public String getBrokerage() {
		return brokerage;
	}

	public void setBrokerage(String brokerage) {
		this.brokerage = brokerage;
	}

	public String getPpPrice() {
		return ppPrice;
	}

	public void setPpPrice(String ppPrice) {
		this.ppPrice = ppPrice;
	}

	public String getPpLocation() {
		return ppLocation;
	}

	public void setPpLocation(String ppLocation) {
		this.ppLocation = ppLocation;
	}

	public int getCount() {
		return count;
	}

	public void setCount(int count) {
		this.count = count;
	}

	public String getPpOption() {
		return ppOption;
	}

	public void setPpOption(String ppOption) {
		this.ppOption = ppOption;
	}

	public String getPpInfo() {
		return ppInfo;
	}

	public void setPpInfo(String ppInfo) {
		this.ppInfo = ppInfo;
	}

	public String getPpDate() {
		return ppDate;
	}

	public void setPpDate(String ppDate) {
		this.ppDate = ppDate;
	}

	public int getPdNo() {
		return pdNo;
	}

	public void setPdNo(int pdNo) {
		this.pdNo = pdNo;
	}
	
	public int getCost() {
		return cost;
	}
	
	public void setCost(int cost) {
		this.cost = cost;
	}

	public int getFloor() {
		return floor;
	}

	public void setFloor(int floor) {
		this.floor = floor;
	}
	
	public int getPyeong() {
		return pyeong;
	}
	
	public void setPyeong(int pyeong) {
		this.pyeong = pyeong;
	}

	public int getRooms() {
		return rooms;
	}

	public void setRooms(int rooms) {
		this.rooms = rooms;
	}

	public String getDirection() {
		return direction;
	}

	public void setDirection(String direction) {
		this.direction = direction;
	}

	public String getHeating() {
		return heating;
	}

	public void setHeating(String heating) {
		this.heating = heating;
	}

	public String getElevator() {
		return elevator;
	}

	public void setElevator(String elevator) {
		this.elevator = elevator;
	}

	public int getHouseholds() {
		return households;
	}

	public void setHouseholds(int households) {
		this.households = households;
	}

	public int getParking() {
		return parking;
	}

	public void setParking(int parking) {
		this.parking = parking;
	}

	public String getMoveDate() {
		return moveDate;
	}

	public void setMoveDate(String moveDate) {
		this.moveDate = moveDate;
	}

	public int getPpImgNo() {
		return ppImgNo;
	}

	public void setPpImgNo(int ppImgNo) {
		this.ppImgNo = ppImgNo;
	}

	public String getOriginalName() {
		return originalName;
	}

	public void setOriginalName(String originalName) {
		this.originalName = originalName;
	}

	public String getChangeName() {
		return changeName;
	}

	public void setChangeName(String changeName) {
		this.changeName = changeName;
	}

	public String getFilePath() {
		return filePath;
	}

	public void setFilePath(String filePath) {
		this.filePath = filePath;
	}

	public String getFileLevel() {
		return fileLevel;
	}

	public void setFileLevel(String fileLevel) {
		this.fileLevel = fileLevel;
	}

	public String getUploadDate() {
		return uploadDate;
	}

	public void setUploadDate(String uploadDate) {
		this.uploadDate = uploadDate;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	@Override
	public String toString() {
		return "Property [ppNo=" + ppNo + ", ppName=" + ppName + ", type=" + type + ", brokerage=" + brokerage
				+ ", ppPrice=" + ppPrice + ", ppLocation=" + ppLocation + ", count=" + count + ", ppOption=" + ppOption
				+ ", ppInfo=" + ppInfo + ", ppDate=" + ppDate + ", pdNo=" + pdNo + ", cost=" + cost + ", floor=" + floor
				+ ", pyeong=" + pyeong + ", rooms=" + rooms + ", direction=" + direction + ", heating=" + heating
				+ ", elevator=" + elevator + ", households=" + households + ", parking=" + parking + ", moveDate="
				+ moveDate + ", ppImgNo=" + ppImgNo + ", originalName=" + originalName + ", changeName=" + changeName
				+ ", filePath=" + filePath + ", fileLevel=" + fileLevel + ", uploadDate=" + uploadDate + ", status="
				+ status + "]";
	}
}
