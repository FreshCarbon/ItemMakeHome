package kr.co.imh.domain;

public class PointDTO {
	private int ptCode;
	private String orderNum;
	private String UserId;
	private int ptCost;
	private String ptStart;
	private String ptExpire;
	private String grade;
	private int ptRate;
	
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	public int getPtRate() {
		return ptRate;
	}
	public void setPtRate(int ptRate) {
		this.ptRate = ptRate;
	}
	public int getPtCode() {
		return ptCode;
	}
	public void setPtCode(int ptCode) {
		this.ptCode = ptCode;
	}
	public String getOrderNum() {
		return orderNum;
	}
	public void setOrderNum(String orderNum) {
		this.orderNum = orderNum;
	}
	public String getUserId() {
		return UserId;
	}
	public void setUserId(String userId) {
		UserId = userId;
	}
	public int getPtCost() {
		return ptCost;
	}
	public void setPtCost(int ptCost) {
		this.ptCost = ptCost;
	}
	
	public String getPtStart() {
		return ptStart;
	}
	public void setPtStart(String ptStart) {
		this.ptStart = ptStart;
	}
	public String getPtExpire() {
		return ptExpire;
	}
	public void setPtExpire(String ptExpire) {
		this.ptExpire = ptExpire;
	}
	
	
}

