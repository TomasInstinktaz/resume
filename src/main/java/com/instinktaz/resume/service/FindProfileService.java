package com.instinktaz.resume.service;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import com.instinktaz.resume.entity.Profile;

/**
 * 
 * @author instinktaz
 * @see http://instinktaz.com
 */
public interface FindProfileService {

	Profile findByUid(String uid);
	
	Page<Profile> findAll(Pageable pageable);
}
