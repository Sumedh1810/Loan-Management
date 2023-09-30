package entity;

public class homeLoanForm {
	String cifAccountNo;
	String firstName;
	String middleName;
	String lastName;
	String pan;
	String spouseName;
	String gender;
	String aadhaar;
	String drivingLicense;
	String residentialAddress;
	String poaHolderName;
	String poaHolderContact;
	String requestLoanAmount;
	public homeLoanForm() {
		super();
	}
	public homeLoanForm(String cifAccountNo, String firstName, String middleName, String lastName, String pan,
			String spouseName, String gender, String aadhaar, String drivingLicense, String residentialAddress,
			String poaHolderName, String poaHolderContact, String requestLoanAmount) {
		super();
		this.cifAccountNo = cifAccountNo;
		this.firstName = firstName;
		this.middleName = middleName;
		this.lastName = lastName;
		this.pan = pan;
		this.spouseName = spouseName;
		this.gender = gender;
		this.aadhaar = aadhaar;
		this.drivingLicense = drivingLicense;
		this.residentialAddress = residentialAddress;
		this.poaHolderName = poaHolderName;
		this.poaHolderContact = poaHolderContact;
		this.requestLoanAmount = requestLoanAmount;
	}
	public String getCifAccountNo() {
		return cifAccountNo;
	}
	public void setCifAccountNo(String cifAccountNo) {
		this.cifAccountNo = cifAccountNo;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getMiddleName() {
		return middleName;
	}
	public void setMiddleName(String middleName) {
		this.middleName = middleName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getPan() {
		return pan;
	}
	public void setPan(String pan) {
		this.pan = pan;
	}
	public String getSpouseName() {
		return spouseName;
	}
	public void setSpouseName(String spouseName) {
		this.spouseName = spouseName;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getAadhaar() {
		return aadhaar;
	}
	public void setAadhaar(String aadhaar) {
		this.aadhaar = aadhaar;
	}
	public String getDrivingLicense() {
		return drivingLicense;
	}
	public void setDrivingLicense(String drivingLicense) {
		this.drivingLicense = drivingLicense;
	}
	public String getResidentialAddress() {
		return residentialAddress;
	}
	public void setResidentialAddress(String residentialAddress) {
		this.residentialAddress = residentialAddress;
	}
	public String getPoaHolderName() {
		return poaHolderName;
	}
	public void setPoaHolderName(String poaHolderName) {
		this.poaHolderName = poaHolderName;
	}
	public String getPoaHolderContact() {
		return poaHolderContact;
	}
	public void setPoaHolderContact(String poaHolderContact) {
		this.poaHolderContact = poaHolderContact;
	}
	public String getRequestLoanAmount() {
		return requestLoanAmount;
	}
	public void setRequestLoanAmount(String requestLoanAmount) {
		this.requestLoanAmount = requestLoanAmount;
	}
	
	
}
