package com.serve.spring;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
//import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
@Repository
public interface manager_interface extends JpaRepository<registration, Integer>{
   registration findByIdAndPass(int id,String pass);
   @Query("select u From registration u WHERE u.m_name =?1 or u.branch_name=?1")// search 2 field
   public List<registration> getUserByName(String name);
   @Query("select u From registration u WHERE u.branch_name =?1")
   public List<registration> getBranch(String branch_name);

}
