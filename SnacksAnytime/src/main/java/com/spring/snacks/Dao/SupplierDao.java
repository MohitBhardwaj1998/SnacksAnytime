package com.spring.snacks.Dao;
import java.util.List;

import com.spring.snacks.model.Supplier;

public interface SupplierDao 
{
	public void insertSupplier(Supplier supplier);
	public List<Supplier> retreive();
	public Supplier findById(int sid);
	public void deleteSupplier(int sid);
	
}