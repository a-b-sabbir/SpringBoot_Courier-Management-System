package com.serve.spring;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class orders {
   @Id
   @GeneratedValue
   Integer serial;
   String status;
   String s_name;
   String s_address;
   String s_phone;
   String s_email;
   String s_branch_division;
   String s_branch_city;
   String s_branch_name;
   String source_area;
   String r_name;
   String r_address;
   String r_phone;
   String r_email;
   String r_branch_division;
   String r_branch_city;
   String r_branch_name;
   String destination_area;
   Integer cost;
   Integer pickup_charge;
   Integer total_cost;
   public orders() {
      super();
   }
   public orders(Integer serial, String status, String s_name, String s_address, String s_phone, String s_email,
         String s_branch_division, String s_branch_city, String s_branch_name, String source_area, String r_name,
         String r_address, String r_phone, String r_email, String r_branch_division, String r_branch_city,
         String r_branch_name, String destination_area, Integer cost, Integer pickup_charge, Integer total_cost) {
      super();
      this.serial = serial;
      this.status = status;
      this.s_name = s_name;
      this.s_address = s_address;
      this.s_phone = s_phone;
      this.s_email = s_email;
      this.s_branch_division = s_branch_division;
      this.s_branch_city = s_branch_city;
      this.s_branch_name = s_branch_name;
      this.source_area = source_area;
      this.r_name = r_name;
      this.r_address = r_address;
      this.r_phone = r_phone;
      this.r_email = r_email;
      this.r_branch_division = r_branch_division;
      this.r_branch_city = r_branch_city;
      this.r_branch_name = r_branch_name;
      this.destination_area = destination_area;
      this.cost = cost;
      this.pickup_charge = pickup_charge;
      this.total_cost = total_cost;
   }
   public Integer getSerial() {
      return serial;
   }
   public void setSerial(Integer serial) {
      this.serial = serial;
   }
   public String getStatus() {
      return status;
   }
   public void setStatus(String status) {
      this.status = status;
   }
   public String getS_name() {
      return s_name;
   }
   public void setS_name(String s_name) {
      this.s_name = s_name;
   }
   public String getS_address() {
      return s_address;
   }
   public void setS_address(String s_address) {
      this.s_address = s_address;
   }
   public String getS_phone() {
      return s_phone;
   }
   public void setS_phone(String s_phone) {
      this.s_phone = s_phone;
   }
   public String getS_email() {
      return s_email;
   }
   public void setS_email(String s_email) {
      this.s_email = s_email;
   }
   public String getS_branch_division() {
      return s_branch_division;
   }
   public void setS_branch_division(String s_branch_division) {
      this.s_branch_division = s_branch_division;
   }
   public String getS_branch_city() {
      return s_branch_city;
   }
   public void setS_branch_city(String s_branch_city) {
      this.s_branch_city = s_branch_city;
   }
   public String getS_branch_name() {
      return s_branch_name;
   }
   public void setS_branch_name(String s_branch_name) {
      this.s_branch_name = s_branch_name;
   }
   public String getSource_area() {
      return source_area;
   }
   public void setSource_area(String source_area) {
      this.source_area = source_area;
   }
   public String getR_name() {
      return r_name;
   }
   public void setR_name(String r_name) {
      this.r_name = r_name;
   }
   public String getR_address() {
      return r_address;
   }
   public void setR_address(String r_address) {
      this.r_address = r_address;
   }
   public String getR_phone() {
      return r_phone;
   }
   public void setR_phone(String r_phone) {
      this.r_phone = r_phone;
   }
   public String getR_email() {
      return r_email;
   }
   public void setR_email(String r_email) {
      this.r_email = r_email;
   }
   public String getR_branch_division() {
      return r_branch_division;
   }
   public void setR_branch_division(String r_branch_division) {
      this.r_branch_division = r_branch_division;
   }
   public String getR_branch_city() {
      return r_branch_city;
   }
   public void setR_branch_city(String r_branch_city) {
      this.r_branch_city = r_branch_city;
   }
   public String getR_branch_name() {
      return r_branch_name;
   }
   public void setR_branch_name(String r_branch_name) {
      this.r_branch_name = r_branch_name;
   }
   public String getDestination_area() {
      return destination_area;
   }
   public void setDestination_area(String destination_area) {
      this.destination_area = destination_area;
   }
   public Integer getCost() {
      return cost;
   }
   public void setCost(Integer cost) {
      this.cost = cost;
   }
   public Integer getPickup_charge() {
      return pickup_charge;
   }
   public void setPickup_charge(Integer pickup_charge) {
      this.pickup_charge = pickup_charge;
   }
   public Integer getTotal_cost() {
      return total_cost;
   }
   public void setTotal_cost(Integer total_cost) {
      this.total_cost = total_cost;
   }
   @Override
   public String toString() {
      return "orders [serial=" + serial + ", status=" + status + ", s_name=" + s_name + ", s_address=" + s_address
            + ", s_phone=" + s_phone + ", s_email=" + s_email + ", s_branch_division=" + s_branch_division
            + ", s_branch_city=" + s_branch_city + ", s_branch_name=" + s_branch_name + ", source_area=" + source_area
            + ", r_name=" + r_name + ", r_address=" + r_address + ", r_phone=" + r_phone + ", r_email=" + r_email
            + ", r_branch_division=" + r_branch_division + ", r_branch_city=" + r_branch_city + ", r_branch_name="
            + r_branch_name + ", destination_area=" + destination_area + ", cost=" + cost + ", pickup_charge="
            + pickup_charge + ", total_cost=" + total_cost + "]";
   }
  
   
}