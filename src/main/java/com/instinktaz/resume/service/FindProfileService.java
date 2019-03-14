package com.instinktaz.resume.service;

import com.instinktaz.resume.entity.Profile;

/**
 * 
 * @author instinktaz
 * @see http://instinktaz.com
 */
public interface FindProfileService {

	Profile findByUid(String uid);
}
