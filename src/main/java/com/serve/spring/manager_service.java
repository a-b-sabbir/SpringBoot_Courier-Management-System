package com.serve.spring;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class manager_service {
	@Autowired
	private manager_interface mi;
	
	public void addManager(registration r) {
		mi.save(r);
	}
	public void updateManager(registration r) {
		mi.save(r);
	}
	public void deleteManager(registration r) {
		mi.delete(r);
	}
	
	public List<registration> showManager(){
		return mi.findAll();
	}
	public registration showById(int id) {
		return mi.findById(id).get();	
	}
}
