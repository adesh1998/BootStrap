package com.cognizant.ormlearn.service.exception;

public class CountryNotFoundException extends Exception {
    String s1;
	public CountryNotFoundException(String s2){
		s1=s2;
	}
	public String tostring() {
		return ("MyException Occurred: "+s1) ;
	}

}
