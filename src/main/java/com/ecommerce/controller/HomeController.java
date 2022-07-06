package com.ecommerce.controller;


import java.util.HashMap;
import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;

import javax.servlet.http.HttpServletRequest;

import com.ecommerce.entity.*;
import com.ecommerce.service.*;
 
@Controller
public class HomeController {

	@Autowired
	private CategoryService categoryService; 

	@Autowired
	private ProductService productService; 
	
	  @GetMapping({"/","/home"})
	    public String home(ModelMap map,  HttpServletRequest request) 
	    {
			List<Product> list = productService.getAllProducts();
			
			// use MAP to map the category names to product rows
			 HashMap<Long, String> mapCats = new HashMap<Long, String>();
			  for(Product product: list) {
				  Category category = categoryService.getCategoryById(product.getCategoryId());
				  if (category != null)
					  mapCats.put(product.getID(), category.getName());
			  }
			  
			map.addAttribute("list", list);
			map.addAttribute("mapCats", mapCats);
		    map.addAttribute("pageTitle", "SPORTY SHOES - HOMEPAGE");
	        return "index"; 
	    }	
	  
	  
}
