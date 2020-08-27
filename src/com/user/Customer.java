package com.user;

import java.util.Date;

public class Customer {
	private String firstName;
	private String lastName;
	private String phoneNumber;
	private String email;
	private String price;
	private Date dateOfPurchase;
	private Car carPurchased;

	public Customer() {
	
	}
	
	public Customer(String firstName, String lastName, String phoneNumber,String email, Date dateOfPurchase, Car carPurchased) {
		this.firstName = firstName;
		this.lastName = lastName;
		this.phoneNumber= phoneNumber;
		this.email = email;
		this.dateOfPurchase = dateOfPurchase;
		this.carPurchased = carPurchased;
		
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}


	public String toString() {
		return firstName + "," + lastName + " (" + phoneNumber.substring(0, 3) + ")-" + phoneNumber.substring(3, 6)
				+ "-" + phoneNumber.substring(6) + "," + email + "\n";
	}

	public Car getCarPurchased() {
		return carPurchased;
	}

	public void setCarPurchased(Car carPurchased) {
		this.carPurchased = carPurchased;
	}

	public Date getDateOfPurchase() {
		return dateOfPurchase;
	}

	public void setDateOfPurchase(Date dateOfPurchase) {
		this.dateOfPurchase = dateOfPurchase;
	}

}
