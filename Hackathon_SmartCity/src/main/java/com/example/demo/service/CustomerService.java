package com.example.demo.service;

import com.example.demo.model.Customer;

public interface CustomerService {
	public String customerRegistration(Customer customer);
	public Customer checkCustomerLogin(String email,String password);
	public String updateCustomer(Customer customer);
	public Customer getCustomerById(int id);
	public void usdeleteRequest(Long id);
	

}
