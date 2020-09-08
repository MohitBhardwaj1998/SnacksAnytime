package com.spring.snacks.DaoImpl;
import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.snacks.Dao.ProductDao;
import com.spring.snacks.model.Product;

@Repository("ProductDaoImpl")
public class CategoryDaoImpl implements ProductDao
{
	@Autowired
	SessionFactory sessionFactory;
	private Object Category;
	
	public CategoryDaoImpl(SessionFactory sessionFactory)
	{
		super();
		this.sessionFactory = sessionFactory;
	}
	
	public void insertProduct(Product Product)
	{
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		session.saveOrUpdate(Product);
		session.getTransaction().commit();
		
	}
	
	public List<Product> retreive()
	{
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		List<Product> list = session.createQuery("from Product").list();
		session.getTransaction().commit();
		return list;
		
	}
	
	public Product findById(int cid)
	{
		Session session = sessionFactory.openSession();
		Product c = null;
		try
		{
			session.beginTransaction();
			c= session.get(Product.class,cid);
			session.getTransaction().commit();
		}
		catch(HibernateException e)
		{
			e.printStackTrace();
			session.getTransaction().rollback();
		}
		
		return c;
	}

	public void deleteProduct(int pid) {
		// TODO Auto-generated method stub
		
	}
public void insertCategory(com.spring.snacks.model.Category c) {
		// TODO Auto-generated method stub

		Session session = sessionFactory.openSession();
		session.beginTransaction();
		session.saveOrUpdate(Category);
		session.getTransaction().commit();
		
	}

public void insertCategory(java.util.Locale.Category c) {
	// TODO Auto-generated method stub
	
}

	
}