package com.spring.snacks.Controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import com.spring.snacks.DaoImpl.CategoryDaoImpl;
import com.spring.snacks.DaoImpl.ProductDaoImpl;
import com.spring.snacks.DaoImpl.SupplierDaoImpl;
import com.spring.snacks.DaoImpl.UserDaoImpl;
import com.spring.snacks.model.Product;
@Controller
public class cartController 
{
   @Autowired
   UserDaoImpl userDaoImpl;
   
   @Autowired
   SupplierDaoImpl supplierDaoImpl;
   
   @Autowired
   CategoryDaoImpl categoryDaoImpl;
   
   @Autowired
   ProductDaoImpl productDaoImpl;
   
   @ModelAttribute
	public void addAttributes(Model m)
	{
		m.addAttribute("catList", categoryDaoImpl.retreive());
		m.addAttribute("satList", supplierDaoImpl.retreive());
		m.addAttribute("prodList", productDaoImpl.retreive());
		System.out.println(m);
	}
   
   @RequestMapping(value="/productCustList")
   public ModelAndView productCustList(@RequestParam("cid")int cid)
   {
	   ModelAndView mv = new ModelAndView();
	   mv.addObject("productList", productDaoImpl.getProdById(cid));
	   mv.setViewName("productCustomerList");
	   System.out.println(mv);
	   return mv;
	   
   }
   
   @RequestMapping("/productAdminList")
   public ModelAndView productAdminList()
   {
   
   	ModelAndView mav = new ModelAndView();
   	mav.addObject("productList", productDaoImpl.retreive());
   	mav.setViewName("productAdminList");
   	return mav;
   }
   
   @RequestMapping(value="/prodDetails/{pid}")
   public ModelAndView prodDetails(@PathVariable("pid")int pid)
   {
	   ModelAndView mv = new ModelAndView();
	   Product p = productDaoImpl.findById(pid);
	   mv.addObject("product", p);
	   mv.setViewName("prodDetails");
	   return mv;
   }
	 
}
