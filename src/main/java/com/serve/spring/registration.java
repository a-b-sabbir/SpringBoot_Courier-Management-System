package com.serve.spring;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
@Entity
public class registration {
	@Id
	@GeneratedValue
	Integer id;
	String designation;
	String m_name;
	String userId;
	String address;
	Long phone;
	String email;
	String pass;
	Long nid;
	String gender;
	String branch_name;
	String branch_city;
	String branch_division;
	
   public registration() {
      super();
   }

   public registration(Integer id, String designation, String m_name, String userId, String address, Long phone,
         String email, String pass, Long nid, String gender, String branch_name, String branch_city,
         String branch_division) {
      super();
      this.id = id;
      this.designation = designation;
      this.m_name = m_name;
      this.userId = userId;
      this.address = address;
      this.phone = phone;
      this.email = email;
      this.pass = pass;
      this.nid = nid;
      this.gender = gender;
      this.branch_name = branch_name;
      this.branch_city = branch_city;
      this.branch_division = branch_division;
   }

   public Integer getId() {
      return id;
   }

   public void setId(Integer id) {
      this.id = id;
   }

   public String getDesignation() {
      return designation;
   }

   public void setDesignation(String designation) {
      this.designation = designation;
   }

   public String getM_name() {
      return m_name;
   }

   public void setM_name(String m_name) {
      this.m_name = m_name;
   }

   public String getUserId() {
      return userId;
   }

   public void setUserId(String userId) {
      this.userId = userId;
   }

   public String getAddress() {
      return address;
   }

   public void setAddress(String address) {
      this.address = address;
   }

   public Long getPhone() {
      return phone;
   }

   public void setPhone(Long phone) {
      this.phone = phone;
   }

   public String getEmail() {
      return email;
   }

   public void setEmail(String email) {
      this.email = email;
   }

   public String getPass() {
      return pass;
   }

   public void setPass(String pass) {
      this.pass = pass;
   }

   public Long getNid() {
      return nid;
   }

   public void setNid(Long nid) {
      this.nid = nid;
   }

   public String getGender() {
      return gender;
   }

   public void setGender(String gender) {
      this.gender = gender;
   }

   public String getBranch_name() {
      return branch_name;
   }

   public void setBranch_name(String branch_name) {
      this.branch_name = branch_name;
   }

   public String getBranch_city() {
      return branch_city;
   }

   public void setBranch_city(String branch_city) {
      this.branch_city = branch_city;
   }

   public String getBranch_division() {
      return branch_division;
   }

   public void setBranch_division(String branch_division) {
      this.branch_division = branch_division;
   }


   
   
	

}
