package com.example.demo.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.model.ServiceRequest;
import com.example.demo.repository.ServiceRequestRepository;

@Service
public class ServiceRequestService {
	
	@Autowired
	ServiceRequestRepository srp;
	
	public String saveRequest(ServiceRequest request) {
		srp.save(request);
		return "Request saved Sucessfully";
	}
}
