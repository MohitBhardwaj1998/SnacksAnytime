package com.spring.snacks.DaoImpl;

import java.util.List;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.snacks.Dao.SupplierDao;
import com.spring.snacks.model.Supplier;


@Repository("SupplierDaoImpl")
public class SupplierDaoImpl implements SupplierDao {

	@Autowired
	SessionFactory sessionFactory;

	public SupplierDaoImpl(SessionFactory sessionFactory) {
		super();
		this.sessionFactory = sessionFactory;
	}

	public void insertSupplier(Supplier supplier) {
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		session.saveOrUpdate(supplier);
		session.getTransaction().commit();

	}

	public List<Supplier> retreive() {
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		@SuppressWarnings("unchecked")
		List<Supplier> list = session.createQuery("from Supplier").list();
		session.getTransaction().commit();
		return list;

	}

	public Supplier findById(int sid) {
		Session session = sessionFactory.openSession();
		Supplier c = null;
		try {
			session.beginTransaction();
			c = session.get(Supplier.class, sid);
			session.getTransaction().commit();
		} catch (HibernateException e) {
			e.printStackTrace();
			session.getTransaction().rollback();
		}

		return c;
	
	}

	public void deleteSupplier(int sid) {
		// TODO Auto-generated method stub
		
	}

}