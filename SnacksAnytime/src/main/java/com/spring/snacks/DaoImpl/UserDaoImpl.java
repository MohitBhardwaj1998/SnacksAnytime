package com.spring.snacks.DaoImpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.snacks.Dao.UserDao;
import com.spring.snacks.model.Customer;

@Repository("userDaoImpl")
public class UserDaoImpl implements UserDao{
	@Autowired
	SessionFactory sessionFactory;
	public UserDaoImpl(SessionFactory sessionFactory)
	{
		super();
		this.sessionFactory = sessionFactory;
	}

	public void insertUser(Customer customer) {
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		session.saveOrUpdate(customer);
		session.getTransaction().commit();
	}

	public List<Customer> getUser() {
		// TODO Auto-generated method stub
		return null;
	}

}
