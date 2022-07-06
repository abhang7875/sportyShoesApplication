package com.ecommerce.service.impl;

import java.util.Comparator;
import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.ecommerce.entity.Category;
import com.ecommerce.repository.CategoryRepository;
import com.ecommerce.service.CategoryService;

@Service
public class CategoryServiceImpl implements CategoryService{

	private CategoryRepository categoryRepo;
	

	public CategoryServiceImpl(CategoryRepository categoryRepo) {
		super();
		this.categoryRepo = categoryRepo;
	}

	@Override
	public Category getCategoryById(long id) {
		Optional<Category> category =  categoryRepo.findById(id);
		if(category.isEmpty()) {
			return null;
		}
		return category.get();
	}

	@Override
	public void updateCategory(Category category) {
		categoryRepo.save(category);		
	}

	@Override
	public void deleteCategory(long id) {
		categoryRepo.deleteById(id);		
	}

	@Override
	public List<Category> getAllCategories() {
		List<Category> categories =  categoryRepo.findAll();
		categories.sort(new Comparator<Category>() {
			@Override
			public int compare(Category o1, Category o2) {
				return o1.getName().compareTo(o2.getName());
			}
		});
		return categories;
	}

	@Override
	public String getCategoriesDropDown(long categoryId) {
		return getCategoryById(categoryId).toString();
	}
	
}
