package com.user;

import java.time.LocalDate;

public class Car {

	private String make;
	private String model;
	private int year;
	private double mileage;
	private double price;
	private String vinNum;
	private String description;
	private String pictures;
//	private String dateInInventory;
	private double discountPrice;
	private String buyNow;
	private LocalDate dateInInventory;
	private String specifications;
	


	private boolean sold;

	public Car(String make, String model, int year, double mileage, String vinNum, double price, String dateInInventory,
			String description, String pictures) {
		this.make = make;
		this.model = model;
		this.vinNum = vinNum;
		this.description = description;
		this.pictures = pictures;
		this.year = year;
		this.mileage = mileage;
		this.price = price;
		//this.dateInInventory = dateInInventory;
	}
	
	public Car(String make, String model, int year, double mileage, String vinNum, double price, String pictures) {
		this.make = make;
		this.model = model;
		this.vinNum = vinNum;
		this.pictures = pictures;
		this.year = year;
		this.mileage = mileage;
		this.price = price;
	}

	public Car() {

	}

	public boolean newCar(String make, String model, int year, double mileage, String vinNum, String sold,
			String description, String pictures) {

		return true;

	}

	
	public String getMake() {
		return make;
	}

	public void setMake(String make) {
		this.make = make;
	}

	public String getModel() {
		return model;
	}

	public void setModel(String model) {
		this.model = model;
	}

	public int getYear() {
		return year;
	}

	public void setYear(int year) {
		this.year = year;
	}

	public double getMileage() {
		return mileage;
	}

	public void setMileage(double mileage) {
		this.mileage = mileage;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getPictures() {
		return pictures;
	}

	public void setPictures(String pictures) {
		this.pictures = pictures;
	}

	public String getVinNum() {
		return vinNum;
	}

	public void setVinNum(String vinNum) {
		this.vinNum = vinNum;
	}

	public boolean isSold() {
		return sold;
	}

	public void setSold(boolean sold) {
		this.sold = sold;
	}

//	public String getDateInInventory() {
//		return dateInInventory;
//	}
//
//	public void setDateInInventory(String dateInInventory) {
//		this.dateInInventory = dateInInventory;
//	}

	public double getDiscountPrice() {
		return discountPrice;
	}

	public void setDiscountPrice(double discountPrice) {
		this.discountPrice = discountPrice;
	}
	
	public String getBuyNow() {
		return buyNow;
	}

	public void setBuyNow(String buyNow) {
		this.buyNow = buyNow;
	}

	public String getSpecifications() {
		return specifications;
	}

	public void setSpecifications(String specifications) {
		this.specifications = specifications;
	}

	public LocalDate getDateInInventory() {
		return dateInInventory;
	}

	public void setDateInInventory(LocalDate dateInInventory) {
		this.dateInInventory = dateInInventory;
	}

	
}
