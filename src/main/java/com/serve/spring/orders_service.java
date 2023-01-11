package com.serve.spring;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;

@Service
public class orders_service {
   @Autowired
   orders_interface oi;
   
   public void addOrders(orders o) {
      oi.save(o);
   }
   public void updOrders(orders o) {
      oi.save(o);
   }
   public List<orders> showOrders(){
      return oi.findAll(Sort.by("serial").descending());
   }
   public orders showById(int id) {
      return oi.findById(id).get();   
  }
   public int getReve() {
      return oi.getRev();
   }

}
