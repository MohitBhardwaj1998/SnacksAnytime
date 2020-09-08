package com.spring.snacks.DaoImpl;
import java.util.List;
import java.util.Locale.Category;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.snacks.Dao.ProductDao;
import com.spring.snacks.model.Product;
@Repository("ProductDaoImpl")
public class ProductDaoImpl implements ProductDao
{
	@Autowired
	SessionFactory sessionFactory;
	
	public ProductDaoImpl(SessionFactory sessionFactory)
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
	public List<Product> getProdById(int cid)
	 {
		 Session session= sessionFactory.openSession();
		List<Product> products =null; ;
		session.beginTransaction();
		products=session.createQuery("from Product where cid="+cid).list();
			 session.getTransaction().commit();
			 return products;
		 
	 }
	
	public Product findById(int pid)
	{
		Session session = sessionFactory.openSession();
		Product c = null;
		try
		{
			session.beginTransaction();
			c= session.get(Product.class,pid);
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

	public void insertCategory(Category c) {
		// TODO Auto-generated method stub
		
	}

	public void insertProduct(Product product) {
		// TODO Auto-generated method stub
		
	}

	public Product findById(int pid) {
		// TODO Auto-generated method stub
		return null;
	}

	public void insertCategory(Category c) {
		// TODO Auto-generated method stub
		
	}
	
}