package com.serve.spring;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class manager_controller {

   String branch_name = "Farmgate";
   @Autowired
   manager_service ms;

   @Autowired
   manager_interface mi;

   @Autowired
   cost_service cs;
   
   @Autowired
   orders_service os;
   
   @Autowired
   orders_interface oi;
   
   @RequestMapping(value = "/home")
   public String home() {
      return "home";
   }
   
   @RequestMapping(value = "/registration")
   public String reg() {
      return "reg";
   }

   @RequestMapping(value = "/save", method = RequestMethod.POST)
   public String save(@ModelAttribute registration reg, Model m) {
      ms.addManager(reg);
      List<registration> st = ms.showManager();
      m.addAttribute("st", st);
      return "admin_manager_list";
   }

   @RequestMapping(value = "/login")
   public String loginf(Model m) {
      List<registration> ct = ms.showManager();
      m.addAttribute("ct", ct);
      return "login";
   }

   @RequestMapping("/check")
   public String check(@ModelAttribute orders ord, @RequestParam("id") int id, @RequestParam("pass") String pass, @RequestParam("role") String role, @RequestParam("branch_name") String branch_name,
         Model m) {
      registration user = mi.findByIdAndPass(id, pass);

      if (user != null) {
         List<registration> st = ms.showManager();
         m.addAttribute("st", st);
         
         this.branch_name = branch_name;
         
         List<orders> orderlist = oi.getSourceArea(branch_name);
         m.addAttribute("ol", orderlist);
         
         for (registration rg : st) {

            if (rg.id.equals(id) && role.equals(rg.designation)) {
               if (role.equals("manager")) {
                     
                  
                  if(rg.branch_name.equals(branch_name)) 
                     m.addAttribute("sb", branch_name);
                  return "order_list";
               } else {
                  return "admin_manager_list";
               }
            }
         }

         return "login";

//         if(role.equals("manager")) {
//            return "manager_list";
//         }else {
//            return "admin_home";
//         }

      } else {
         m.addAttribute("error", "User ID or Password is incorrect!");
         return "login";
      }
   }
   
   //manager
   @RequestMapping("/selectedOrderLists")
   public String selectedOrder(@RequestParam("branch_name") String branch_name, Model m) {
      List<orders> orderlist = oi.getSourceArea(branch_name);
      m.addAttribute("ol", orderlist);
      return "order_list";
   }
   
   //manager
   @RequestMapping("/list")
   public String list(Model m) {
      List<registration> st = ms.showManager();
      m.addAttribute("st", st);
      return "manager_list";
   }
   
   //admin
   @RequestMapping("/admin_manager_list")
   public String admin_manager_list(Model m) {
      List<registration> admin_manager_list = ms.showManager();
      m.addAttribute("st", admin_manager_list);
      return "admin_manager_list";
   }
   
   //manager
   @RequestMapping("/searchManager")
   public String search(@RequestParam String nam, Model m) {
      List<registration> search = mi.getUserByName(nam);
      m.addAttribute("st", search);
      return "manager_list";
   }
   
   //admin
   @RequestMapping("/AdminSearchManager")
   public String SearchManager(@RequestParam String nam, Model m) {
      List<registration> search = mi.getUserByName(nam);
      m.addAttribute("st", search);
      return "admin_manager_list";
   }
   
   //manager
   @RequestMapping("/searchOrder")
   public String searchOrder(@RequestParam Integer ord, Model m) {
      List<orders> search = oi.getOrder(ord);
      m.addAttribute("ol", search);
      return "order_list";
   }

   //admin
   @RequestMapping(value = "/update")
   public String update(@Param("id") Integer id, Model model) {
      registration s = ms.showById(id);
      model.addAttribute("s", s);
      return "update";
   }

   
   @RequestMapping(value = "/delete")
   public String deleteManager(@Param("id") int id, Model model) {
      registration s = ms.showById(id);
      ms.deleteManager(s);
      model.addAttribute("st", ms.showManager());
      List<registration> st = ms.showManager();
      model.addAttribute("st", st);
      return "manager_list";
   }

   //default
   @RequestMapping(value = "/ShowCostList")
   public String ShowCostList(@ModelAttribute cost cost, Model m) {
      List<cost> sc = cs.showCost();
      m.addAttribute("sc", sc);
      return "showCost";
   }
   
   //admin
   @RequestMapping(value = "/cost")
   public String cost(Model m) {
      List<registration> showCostList = ms.showManager();
      m.addAttribute("st", showCostList);
      return "addCost";
   }

   //admin
   @RequestMapping(value = "/addCost")
   public String AddCost(@ModelAttribute cost cost, Model m) {
      cs.addCost(cost);
      List<cost> sc = cs.showCost();
      m.addAttribute("sc", sc);
      return "showCost";
   }
   
   //admin
   @RequestMapping(value = "/delCost")
   public String delCost(@ModelAttribute cost cost, Model m) {
      cs.deleteCost(cost);
      List<cost> sc = cs.showCost();
      m.addAttribute("sc", sc);
      return "showCost";
   }
   
   //admin
   @RequestMapping(value = "/updCost")
   public String updCost(@ModelAttribute cost cost, @Param("id") Integer id, Model model) {
      cost s = cs.showById(id);
      model.addAttribute("s", s);
      return "updateCost";
   }


//   @RequestMapping(value = "/show")
//   public String show(@ModelAttribute registration reg, Model m) {
//      List<registration> show = ms.showManager();
//      m.addAttribute("st", show);
//      return "addCost";
//   }

   //user
   @RequestMapping(value = "/addorder")
   public String addorder(Model m) {
      List<cost> ct = cs.showCost();
      m.addAttribute("ct", ct);
      return "order";
   }

  //user
   @RequestMapping(value="/checkcost")
   public String checkCost(@ModelAttribute orders ord, @RequestParam("source_area") String source_area, @RequestParam("destination_area")
   String destination_area, Model m) {
      List<cost> costlist = cs.showCost();
      for (cost co : costlist) {
         if(source_area.equals(co.source_area) && destination_area.equals(co.destination_area)) {
            m.addAttribute("cost", co.cost);
         }
      }
      m.addAttribute("sa", source_area);
      m.addAttribute("da", destination_area);

//      orders ol = os.showById(sl);
//      m.addAttribute("orr",ol);
       return "order_final";
   }
   
   //user
   @PostMapping("/confirmOrder")
   public String confirm(@ModelAttribute orders ord, Model m) {
      os.addOrders(ord);
      Integer sl = os.getReve();      
      m.addAttribute("sl", sl);
      m.addAttribute("ord", ord);
      return "confirmOrder";
   }
   
   @RequestMapping("/orderlist")
   public String orderlist( Model m) {
      List<orders> orderlist = oi.getSourceArea(branch_name);
      m.addAttribute("ol", orderlist);
      return "order_list";
   }
   
   @RequestMapping("/approve")
   public String GetApproved(@RequestParam Integer serial, Model m) {
      orders order = os.showById(serial);
      order.setStatus("Approved");
      os.updOrders(order);
      List<orders> orderlist = oi.getSourceArea(branch_name);
      m.addAttribute("ol", orderlist);
      return "order_list";
   }
   
}
