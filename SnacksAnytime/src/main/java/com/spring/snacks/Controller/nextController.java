package com.spring.snacks.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class nextController 
{
	@RequestMapping("/login")
	public String goTologin()
	{
		return "login";
	}

}
