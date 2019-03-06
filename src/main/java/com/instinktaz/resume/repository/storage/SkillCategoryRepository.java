package com.instinktaz.resume.repository.storage;

import java.util.List;

import org.springframework.data.domain.Sort;
import org.springframework.data.repository.RepositoryDefinition;

import com.instinktaz.resume.entity.SkillCategory;

/**
 * 
 * @author instinktaz
 * @see http://instinktaz.com
 */
@RepositoryDefinition(domainClass=SkillCategory.class, idClass=Long.class)
public interface SkillCategoryRepository {

	List<SkillCategory> findAll(Sort sort);
}
