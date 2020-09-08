package com.spring.snacks.model;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import org.springframework.stereotype.Component;
@Entity
@Component
public class Supplier
{
	
	@Id
	private String sid;
	
	private String sname;
	
	
	@OneToMany(targetEntity=Product.class, fetch=FetchType.EAGER, mappedBy="supplier")
	private Set<Product> product = new HashSet<Product>(0);
	public String getSid() {
		return sid;
	}
	public void setSid(String sid) {
		this.sid = sid;
	}
	public String getSname() {
		return sname;
	}
	public void setSname(String sname) {
		this.sname = sname;
	}
	public Set<Product> getProduct() {
		return product;
	}
	public void setProduct(Set<Product> product) {
		this.product = product;
	}
}