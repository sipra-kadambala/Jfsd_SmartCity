package com.example.demo.controller;

import java.net.http.HttpRequest;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.demo.model.Admin;
import com.example.demo.model.Customer;
import com.example.demo.model.ServiceRequest;
import com.example.demo.service.AdminService;

import jakarta.servlet.http.HttpServletRequest;

@Controller
public class AdminController {
	
	@Autowired
	private AdminService adminser;
	
	@GetMapping("/adminLogin")
	public ModelAndView home()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("adminLogin");
		return mv;
	}
	

	@GetMapping("/adminHome")
	public ModelAndView adminHome()
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("adminHome");
		Long count	=adminser.customercount();
		mv.addObject("count", count);
		Long requestcount	=adminser.requestcount();
		mv.addObject("requestcount", requestcount);
		return mv;
	}
	@PostMapping("checkAdminLogin")
	public ModelAndView checkAdminLogin(HttpServletRequest request)
	{
		ModelAndView mv= new ModelAndView();	
		String username=request.getParameter("username");
		String password =request.getParameter("password");
		
		Admin admin=adminser.checkAdminLogin(username, password);
		
		if(admin!=null)
		{
			mv.setViewName("adminHome");
			
		Long count	=adminser.customercount();
		mv.addObject("count", count);
		Long requestcount	=adminser.requestcount();
		mv.addObject("requestcount", requestcount);
		
			
		}
		else
		{
			mv.setViewName("adminLogin");
			mv.addObject("msg","Login Failed");
		}
		
		return mv;
	}
	
	@GetMapping("ViewAllCustomers")
	public ModelAndView ViewAllCustomers()
	{
		ModelAndView mv= new ModelAndView();
		mv.setViewName("ViewAllCustomers");
		List<Customer> customer =adminser.viewAllCustomer();
		mv.addObject("customerlist", customer);
		Long count	=adminser.customercount();
		mv.addObject("count", count);
		return mv;
	}
	
	
	@GetMapping("viewrequest")
	public ModelAndView viewrequest()
	{
		ModelAndView mv= new ModelAndView();
		mv.setViewName("viewrequest");
		List<ServiceRequest> servicerequest =adminser.viewRequest();
		mv.addObject("requestlist", servicerequest);
		Long count	=adminser.requestcount();
		mv.addObject("requestcount", count);
		return mv;
	}
	
	// deleteing the request "deleteRequest/${request.id}"
	
	@PostMapping("deleteRequest/{id}")
	public ModelAndView deleteRequest(@PathVariable Long id, RedirectAttributes redirectAttributes) {
	    adminser.deleteRequestById(id);
	    redirectAttributes.addFlashAttribute("message", "Service request deleted successfully.");
	    return new ModelAndView("redirect:/viewrequest");
	}


	
}
