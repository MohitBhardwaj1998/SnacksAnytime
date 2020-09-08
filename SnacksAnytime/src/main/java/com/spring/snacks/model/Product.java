package com.spring.snacks.model;
import java.util.List;
import java.util.Locale.Category;
import java.util.function.Supplier;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Transient;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;
@Component
@Entity
public class Product 
{
	@Id
	private String pid;
	private String pname;
	
	private String description;
	private Float price;
	
	private int stock;
	
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="cid")
	private Category category;
	
	@SuppressWarnings("rawtypes")
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="sid")
	private Supplier<List> supplier;
	
	
	@Transient// it will not be persisted in DB
	MultipartFile image;
    private String imageName;
	public String getPid() {
		return pid;
	}
	public void setPid(String pid) {
		this.pid = pid;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public Float getPrice() {
		return price;
	}
	public void setPrice(Float price) {
		this.price = price;
	}
	public int getStock() {
		return stock;
	}
	public void setStock(int stock) {
		this.stock = stock;
	}
	public Category getCategory() {
		return category;
	}
	public void setCategory(Category category) {
		this.category = category;
	}
	@SuppressWarnings("rawtypes")
	public Supplier<List> getSupplier() {
		return supplier;
	}
	@SuppressWarnings("rawtypes")
	public void setSupplier(Supplier<List> supplier) {
		this.supplier = supplier;
	}
	public MultipartFile getImage() {
		return image;
	}
	public void setImage(MultipartFile image) {
		this.image = image;
	}
	public String getImageName() {
		return imageName;
	}
	public void setImageName(String imageName) {
		this.imageName = imageName;
	}
	public void setCategory(Product findById) {
		// TODO Auto-generated method stub
		
	}
}