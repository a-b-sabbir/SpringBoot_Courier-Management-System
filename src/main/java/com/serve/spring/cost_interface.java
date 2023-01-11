package com.serve.spring;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
@Repository
public interface cost_interface extends JpaRepository<cost, Integer>{

}
