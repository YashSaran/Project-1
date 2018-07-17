package com.shoppingBackend.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

public class Address {


private int id;	
private String streetname1;
private String streetname2;

private String pincode;
private String City;
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getStreetname1() {
	return streetname1;
}
public void setStreetname1(String streetname1) {
	this.streetname1 = streetname1;
}
public String getStreetname2() {
	return streetname2;
}
public void setStreetname2(String streetname2) {
	this.streetname2 = streetname2;
}
public String getPincode() {
	return pincode;
}
public void setPincode(String pincode) {
	this.pincode = pincode;
}
public String getCity() {
	return City;
}
public void setCity(String city) {
	City = city;
}
public String getState() {
	return State;
}
public void setState(String state) {
	State = state;
}
public String getCountry() {
	return Country;
}
public void setCountry(String country) {
	Country = country;
}
private String State;
private String Country;
}
