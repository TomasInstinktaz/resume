package com.instinktaz.resume.repository.storage;

import org.springframework.data.repository.CrudRepository;

import com.instinktaz.resume.entity.ProfileRestore;

/**
 * 
 * @author instinktaz
 * @see http://instinktaz.com
 */
public interface ProfileRestoreRepository extends CrudRepository<ProfileRestore, Long> {
	
	ProfileRestore findByToken(String token);
}
