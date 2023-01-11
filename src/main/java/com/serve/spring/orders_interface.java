package com.serve.spring;



import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
@Repository
public interface orders_interface extends JpaRepository<orders, Integer>{
   @Query(value="SELECT max(serial) FROM orders", nativeQuery= true)
   public int getRev();
   @Query("select u From orders u WHERE u.serial=?1")
   public List<orders> getOrder(Integer name);
   @Query("select u From orders u WHERE u.source_area=?1 or u.destination_area=?1")
   public List<orders> getSourceArea(String source);
}
