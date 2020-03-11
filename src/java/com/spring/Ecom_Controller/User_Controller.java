/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.Ecom_Controller;

import com.spring.Ecom_Entity.Customer_Entity;
import com.spring.Ecom_Interface.Category_interf;
import com.spring.Ecom_Interface.User_interf;
import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author HP
 */
@Controller
public class User_Controller {
    @Autowired
    Category_interf catedao;
    
    @Autowired
    User_interf usdao;
    
    @Autowired
    BCryptPasswordEncoder encoder;
    
    @RequestMapping("/")
    public String userindex(Model md)
    {
        md.addAttribute("list", catedao.getallcategory());
        return "/userpage/index";
    }
    
    @RequestMapping("/userlogin")
    public String userlogin(Model md){
         md.addAttribute("list", catedao.getallcategory());
         md.addAttribute("buy", false);
        return "/userpage/userlogin";
    }
   
    @RequestMapping("/usersignup")
    public String usersignup(Model md){
         md.addAttribute("list", catedao.getallcategory());
        return "/userpage/usersignup";
    }
    
    @RequestMapping("/registeruser")
    public String registeruser(@ModelAttribute Customer_Entity cuse,@RequestParam("name") String name, Model md){
        String cusname[]=name.split(" ");
        int i=cusname.length;
        if(i==2){
            cuse.setFirst_name(cusname[0]);
            cuse.setLast_name(cusname[1]);
        }else if(i==3){
             cuse.setFirst_name(cusname[0]);
            cuse.setLast_name(cusname[1]+cusname[2]);
        }
        String pass=encoder.encode(cuse.getPassword());
        cuse.setPassword(pass);
        if(usdao.registeruser(cuse)){
         md.addAttribute("msg", "Data register successfully");
         return "redirect:/userlogin";
        }
        else{
            md.addAttribute("msg", "Data registration failed");
            return "redirect:/usersignup";
        }
    }
    @RequestMapping("/_getonline")
    public String _getonline(
            @RequestParam("email") String email,
            @RequestParam("password") String password,
            @RequestParam("buy") boolean buy,
            HttpSession ses){
        if(usdao.getonline(email, password)!=null){
            ses.setAttribute("userlogin",usdao.getonline(email, password));
            if(buy){
                int id=Integer.parseInt(ses.getAttribute("product_id").toString());
                
                return "redirect:/product/buynow?id="+id;
            }
            else{
                return "redirect:/";
            }
        }
        else{
            
            return "redirect:/userlogin";
        }
    }
    
}
