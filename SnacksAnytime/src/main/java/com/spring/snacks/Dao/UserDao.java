package com.spring.snacks.Dao;
import java.util.List;

import com.spring.snacks.model.Customer;
public interface UserDao {
   public void insertUser(Customer customer);
	public List<Customer> getUser();
}
