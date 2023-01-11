package com.serve.spring;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class cost {
   @Id
   @GeneratedValue
   int id;
   String source_area;
   String destination_area;
   String types;
   int cost;
   public int getId() {
      return id;
   }
   public void setId(int id) {
      this.id = id;
   }
   public String getSource_area() {
      return source_area;
   }
   public void setSource_area(String source_area) {
      this.source_area = source_area;
   }
   public String getDestination_area() {
      return destination_area;
   }
   public void setDestination_area(String destination_area) {
      this.destination_area = destination_area;
   }
   public String getTypes() {
      return types;
   }
   public void setTypes(String types) {
      this.types = types;
   }
   public int getCost() {
      return cost;
   }
   public void setCost(int cost) {
      this.cost = cost;
   }
   
      
}
