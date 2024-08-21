package com.kh.board.model.vo;

public class Used {

	private int Used;
	private int BoardNo;
	private String modelName;
	private int price;
	private String modelStatus;
	private String tradingArea;
	private String tradingMethod;
	private String sellStatus;
	
	
	public Used() {}


	public Used(int used, int boardNo, String modelName, int price, String modelStatus, String tradingArea,
			String tradingMethod, String sellStatus) {
		super();
		Used = used;
		BoardNo = boardNo;
		this.modelName = modelName;
		this.price = price;
		this.modelStatus = modelStatus;
		this.tradingArea = tradingArea;
		this.tradingMethod = tradingMethod;
		this.sellStatus = sellStatus;
	}


	public int getUsed() {
		return Used;
	}


	public void setUsed(int used) {
		Used = used;
	}


	public int getBoardNo() {
		return BoardNo;
	}


	public void setBoardNo(int boardNo) {
		BoardNo = boardNo;
	}


	public String getModelName() {
		return modelName;
	}


	public void setModelName(String modelName) {
		this.modelName = modelName;
	}


	public int getPrice() {
		return price;
	}


	public void setPrice(int price) {
		this.price = price;
	}


	public String getModelStatus() {
		return modelStatus;
	}


	public void setModelStatus(String modelStatus) {
		this.modelStatus = modelStatus;
	}


	public String getTradingArea() {
		return tradingArea;
	}


	public void setTradingArea(String tradingArea) {
		this.tradingArea = tradingArea;
	}


	public String getTradingMethod() {
		return tradingMethod;
	}


	public void setTradingMethod(String tradingMethod) {
		this.tradingMethod = tradingMethod;
	}


	public String getSellStatus() {
		return sellStatus;
	}


	public void setSellStatus(String sellStatus) {
		this.sellStatus = sellStatus;
	}


	@Override
	public String toString() {
		return "Used [Used=" + Used + ", BoardNo=" + BoardNo + ", modelName=" + modelName + ", price=" + price
				+ ", modelStatus=" + modelStatus + ", tradingArea=" + tradingArea + ", tradingMethod=" + tradingMethod
				+ ", sellStatus=" + sellStatus + "]";
	}
	
	
}
