package com.spring.snacks.Dao;
import java.util.List;
import java.util.Locale.Category;

import com.spring.snacks.model.Product;

public interface ProductDao 
{
	public void insertProduct(Product product);
	public List<Product> retreive();
	public Product findById(int pid);
	public void deleteProduct(int pid);
	void insertCategory(Category c);
	
}