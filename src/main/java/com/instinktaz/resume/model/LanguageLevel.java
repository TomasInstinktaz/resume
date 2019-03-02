package com.instinktaz.resume.model;

/**
 * 
 * @author instinktaz
 * @see http://instinktaz.com
 */
public enum LanguageLevel {

	BEGINNER,
	
	ELEMENTARY,
	
	PRE_INTERMEDIATE,
	
	INTERMEDIATE,
	
	UPPER_INTERMEDIATE,
	
	ADVANCED,
	
	PROFICIENCY;
	
	public String getDbValue(){
		return name().toLowerCase();
	}
}