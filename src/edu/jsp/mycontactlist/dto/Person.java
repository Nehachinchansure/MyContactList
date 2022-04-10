package edu.jsp.mycontactlist.dto;

public class Person 
{
	private String name;
	private long phoneNumber;
	private String emailId;
	private String dob;
	
	
	public Person() {}

	public Person(String name, long phoneNumber, String emailId, String dob) {
		super();
		this.name = name;
		this.phoneNumber = phoneNumber;
		this.emailId = emailId;
		this.dob = dob;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public long getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(long phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getEmailId() {
		return emailId;
	}

	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	@Override
	public String toString() {
		return "Person [name=" + name + ", phoneNumber=" + phoneNumber + ", emailId=" + emailId + ", dob=" + dob + "]";
	}
	
	
	
	
}
