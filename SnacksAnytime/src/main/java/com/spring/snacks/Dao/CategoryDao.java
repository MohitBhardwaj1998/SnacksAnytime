package com.spring.snacks.Dao;
import java.util.List;
import java.util.Locale.Category;
public interface CategoryDao 
{
	public void insertCategory(Category category);
	public List<Category> retreive();
	public Category findById(int cid);
	public void deleteCategory(int cid);
	
	
}