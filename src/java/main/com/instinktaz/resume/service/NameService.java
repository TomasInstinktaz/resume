package com.instinktaz.resume.service;

/**
 * 
 * @author instinktaz
 * @see http://instinktaz.com
 */
public class NameService {

	public static NameService getInstance(){
		return new NameService();
	}

	public String convertName(String name) {
		return name.toUpperCase();
	}
}
