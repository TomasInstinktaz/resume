package com.instinktaz.resume.model;

/**
 * 
 * @author instinktaz
 * @see http://instinktaz.com
 */
public enum LanguageType {

	ALL,

	SPOKEN,

	WRITING;
	
	public String getDbValue() {
		return name();
	}

	public LanguageType getReverseType() {
		if (this == SPOKEN) {
			return WRITING;
		} else if (this == WRITING) {
			return SPOKEN;
		} else {
			throw new IllegalArgumentException(this+" does not have reverse type");
		}
	}
}
