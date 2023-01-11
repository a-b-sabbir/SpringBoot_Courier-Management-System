package com.serve.spring;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class cost_service {
   @Autowired
   cost_interface ci;
   
   public void addCost(cost c) {
      ci.save(c);
   }
   public void deleteCost(cost c) {
      ci.delete(c);
   }
   public void updateCost(cost c) {
      ci.save(c);
   }
   public List<cost> showCost(){
     return ci.findAll();
   }
   public cost showById(int id) {
      return ci.findById(id).get();   
  }

}
