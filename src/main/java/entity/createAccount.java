package entity;

public class createAccount {
	private String accName;
	private int accNo;
	private String mobNo;
	private String aadharNo;
	private String panNo;
	private String address;
	private String email;
	private float accBal;
	private String date;
	private String password;
	public createAccount(String accName, int accNo, String mobNo, String aadharNo, String panNo, String address,
			String email, float accBal, String date, String password) {
		super();
		this.accName = accName;
		this.accNo = accNo;
		this.mobNo = mobNo;
		this.aadharNo = aadharNo;
		this.panNo = panNo;
		this.address = address;
		this.email = email;
		this.accBal = accBal;
		this.date = date;
		this.password = password;
	}
	public String getAccName() {
		return accName;
	}
	public void setAccName(String accName) {
		this.accName = accName;
	}
	public int getAccNo() {
		return accNo;
	}
	public void setAccNo(int accNo) {
		this.accNo = accNo;
	}
	public String getMobNo() {
		return mobNo;
	}
	public void setMobNo(String mobNo) {
		this.mobNo = mobNo;
	}
	public String getAadharNo() {
		return aadharNo;
	}
	public void setAadharNo(String aadharNo) {
		this.aadharNo = aadharNo;
	}
	public String getPanNo() {
		return panNo;
	}
	public void setPanNo(String panNo) {
		this.panNo = panNo;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public float getAccBal() {
		return accBal;
	}
	public void setAccBal(float accBal) {
		this.accBal = accBal;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
}
