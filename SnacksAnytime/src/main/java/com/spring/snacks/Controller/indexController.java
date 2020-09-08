package com.spring.snacks.Controller;

import java.io.BufferedOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import com.spring.snacks.DaoImpl.UserDaoImpl;
import com.spring.snacks.model.Customer;
import com.spring.snacks.model.Product;
import com.spring.snacks.model.Supplier;
import com.daoImpl.CategoryDaoImpl;
import com.daoImpl.ProductDaoImpl;
import com.daoImpl.SupplierDaoImpl;
import com.spring.snacks.DaoImpl.*;
import com.spring.snacks.model.Category;


@Controller
public class indexController {

	@Autowired
	UserDaoImpl userDaoImpl;
	
	@RequestMapping("/")
	public String index() {
		return "index";
	}
	
	@RequestMapping("/index")
	public String snacks() {
		return "index";
	}
	@RequestMapping("/home")
	public String home() {
		return "index";
	}

	@RequestMapping(value="/log",method=RequestMethod.POST)
	public String log(@RequestParam("uname") String name,@RequestParam("upass") String pass ) {		
		List<Customer> customers=userDaoImpl.getUser();
		
		for(int i=0;i<customers.size();i++) {
			if(customers.get(i).getName().equals(name) && customers.get(i).getPass().equals(pass))
				return "menu";
		}

		
		return "index";
	}

	@Autowired
	UserDaoImpl userDaoImpl;
	
	
	@RequestMapping(value="/saveregister", method=RequestMethod.POST)
	public ModelAndView saveUser(@ModelAttribute("user")Customer customer, BindingResult res)
	{
		ModelAndView mv = new ModelAndView();
		customer.setRole("ROLE_USER");
		userDaoImpl.insertUser(customer);
		mv.setViewName("index");
		return mv;
	}
	
	@RequestMapping("/admin/adding")
	public String addPage()
	{
		return "admin";
	}
	
	@Autowired
	CategoryDaoImpl categoryDaoImpl;
	
	@RequestMapping(value="/admin/saveCat", method=RequestMethod.POST)
	public ModelAndView saveCat(@RequestParam("cid")int cid, @RequestParam("cname")String cname)
	{
		ModelAndView mv = new ModelAndView();
		Category c = new Category();
		c.setCid(cid);
		c.setCname(cname);
		(categoryDaoImpl).insertCategory(c);
		mv.setViewName("redirect:/admin/adding");
		return mv;
		
	}
	@Autowired
	SupplierDaoImpl supplierDaoImpl;
	@RequestMapping(value="/admin/saveSupp", method=RequestMethod.POST)
	public ModelAndView saveSupp(@RequestParam("sid")String sid, @RequestParam("sname")String sname)
	{
		ModelAndView mv = new ModelAndView();
		Supplier c = new Supplier();
		c.setSid(sid);
		c.setSname(sname);
		supplierDaoImpl.insertSupplier(c);
		mv.setViewName("redirect:/admin/adding");
		return mv;
		
	}
	
	@Autowired
	ProductDaoImpl productDaoImpl;
	@SuppressWarnings("rawtypes")
	@RequestMapping(value="/admin/saveProd", method=RequestMethod.POST)
	public String saveProduct(HttpServletRequest request,@RequestParam("file")MultipartFile file)
	{
		Product p = new  Product();
		p.setPname(request.getParameter("pName"));// Product Name text box will pass value here
		p.setPrice(Float.parseFloat(request.getParameter("pPrice")));// Product Price text box will pass value here
		p.setDescription(request.getParameter("pDescription"));// Product Description text box will pass value here
		p.setStock(Integer.parseInt(request.getParameter("pStock")));// Product stock text box will pass value here
		p.setCategory(categoryDaoImpl.findById(Integer.parseInt(request.getParameter("pCategory"))));// Product Catgeory text box will pass value here
		p.setSupplier((java.util.function.Supplier) supplierDaoImpl.findById(Integer.parseInt(request.getParameter("pSupplier"))));// Product Supplier text box will pass value here
		
		String filepath = request.getSession().getServletContext().getRealPath("/");
		String filename = file.getOriginalFilename();
		
		p.setImageName(filename);
		
		productDaoImpl.insertProduct(p);// CRUD operation ends here
		
		//Next lines are written to display image path in console
		
		try
		{
			byte imagebyte[] = file.getBytes();
			BufferedOutputStream fos = new BufferedOutputStream(new FileOutputStream(filepath+"/resources/"+filename));
			fos.write(imagebyte);
			fos.close();
			
		}catch(IOException e)
		{
			e.printStackTrace();
		}
		return "index";
	}
	@ModelAttribute
	public void addAttributes(Model m)
	{
		m.addAttribute("catList", categoryDaoImpl.retreive());
		m.addAttribute("satList", supplierDaoImpl.retreive());
	}
	
	@RequestMapping("/deleteProduct/{pid}")
	public String deleteProd(@PathVariable("pid")int pid)
	{
		productDaoImpl.deleteProduct(pid);
		return "index";
	}
}
	@RequestMapping("/login")
	public String Login() {
		return "login";
	}
	@RequestMapping("/signup")
	public String register() {
		return "signup";
	}
	@RequestMapping("/menu")
	public String menu() {
		return "menu";
	}
	@RequestMapping(value="/Signup",method=RequestMethod.POST)
    public String signup(@ModelAttribute("user") Customer customer,Model model) {
	userDaoImpl.insertUser(customer);
		return "menu";
	}
	
}
