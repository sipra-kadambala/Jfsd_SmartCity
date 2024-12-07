package com.example.demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.model.Customer;
import com.example.demo.repository.CustomerRepository;
import com.example.demo.repository.ServiceRequestRepository;

@Service
public class CustomerServiceImpl implements CustomerService{

	@Autowired
	private CustomerRepository customerRepo;
	
	@Autowired
	private ServiceRequestRepository srr;
	
	public String customerRegistration(Customer customer)
	{
		customerRepo.save(customer);
		return "Customer Registered Sucessfully";
	}

	@Override
	public Customer checkCustomerLogin(String email, String password) {
		return customerRepo.checkCustomerLogin(email, password);
	}

	@Override
	 public String updateCustomer(Customer customer) {
        if (customerRepo.existsById(customer.getId())) {
            customerRepo.save(customer);
            return "Customer details updated successfully!";
        }
        return "Customer not found!";
    }

	public Customer getCustomerById(int id) {
        return customerRepo.findById(id)
            .orElse(null); // Returns the Customer if found, otherwise null
    }

	@Override
	public void usdeleteRequest(Long id) {
		srr.deleteById(id);
		
	}
	
	
	
	
}
