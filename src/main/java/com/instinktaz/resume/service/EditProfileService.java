package com.instinktaz.resume.service;

import java.util.List;

import com.instinktaz.resume.entity.Profile;
import com.instinktaz.resume.entity.Skill;
import com.instinktaz.resume.entity.SkillCategory;
import com.instinktaz.resume.form.SignUpForm;

/**
 * 
 * @author instinktaz
 * @see http://instinktaz.com
 */
public interface EditProfileService {

	Profile createNewProfile(SignUpForm signUpForm);

	List<Skill> listSkills(long idProfile);

	List<SkillCategory> listSkillCategories();

	void updateSkills(long idProfile, List<Skill> skills);
}
