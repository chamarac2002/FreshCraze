package com.customer;

public class Customer {
	private int id;
	private String name;
	private String address;
	private String phone;
	private String nic;
	private String email;
	private String gender;
	private String password;
	
	public Customer(int id, String name, String address, String phone, String nic, String email, String gender, String password) {
		this.id = id;
		this.name = name;
		this.address = address;
		this.phone = phone;
		this.nic = nic;
		this.email = email;
		this.gender = gender;
		this.password = password;
	}

	public int getId() {
		return id;
	}

	public String getName() {
		return name;
	}

	public String getAddress() {
		return address;
	}

	public String getPhone() {
		return phone;
	}

	public String getNic() {
		return nic;
	}

	public String getEmail() {
		return email;
	}

	public String getGender() {
		return gender;
	}

	public String getPassword() {
		return password;
	}
	
}
