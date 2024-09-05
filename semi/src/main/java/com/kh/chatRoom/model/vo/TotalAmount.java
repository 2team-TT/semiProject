package com.kh.chatRoom.model.vo;

public class TotalAmount {

	private int income;
	private int expenses;
	private int total;
	private String date;
	
	public TotalAmount() {}

	public TotalAmount(int income, int expenses, int total, String date) {
		super();
		this.income = income;
		this.expenses = expenses;
		this.total = total;
		this.date = date;
	}

	public int getIncome() {
		return income;
	}

	public void setIncome(int income) {
		this.income = income;
	}

	public int getExpenses() {
		return expenses;
	}

	public void setExpenses(int expenses) {
		this.expenses = expenses;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	@Override
	public String toString() {
		return "TotalAmount [income=" + income + ", expenses=" + expenses + ", total=" + total + ", date=" + date + "]";
	}


	
}
