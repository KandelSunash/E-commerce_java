/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.Ecom_Controller;

import com.spring.Ecom_Entity.Category_entity;
import com.spring.Ecom_Entity.Manufacture_entity;
import com.spring.Ecom_Entity.Sub_category_entity;
import com.spring.Ecom_Interface.Category_interf;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author HP
 */
@Controller
@RequestMapping("category")
public class Category_Controller {

    @Autowired
    Category_interf catdao;

    @RequestMapping("/")
    public String Addcategory(HttpSession ses) {
        if (ses.getAttribute("username") != null) {
            return "addcategory";
        } else {
            return "redirect:/";
        }
    }

    @RequestMapping("/addcategory")
    public String Addmanufacturecategory(HttpSession ses, Model md) {
        if (ses.getAttribute("username") != null) {
            md.addAttribute("list", catdao.getallmanufactureitems());
            return "addcategory_with_manufacture";
        } else {
            return "redirect:/";
        }
    }

    @RequestMapping("/_addcategorymanufacture")
    public String Addcategorymanufacture(HttpSession ses, @ModelAttribute Category_entity cate,@RequestParam("manufact") List<String> data, Model md) {
        if (ses.getAttribute("username") != null) {
           List<Manufacture_entity> mlist=new ArrayList<>();
            for (String ob : data) {
                Manufacture_entity mfe=catdao.getbymanufactureid(Integer.parseInt(ob));
                mlist.add(mfe);
            }
            cate.setManufacture(mlist);
            cate.setCreated_by(ses.getAttribute("username").toString());
            if (catdao.addcategory(cate)) {
                md.addAttribute("msg", "Data Inserted Successfully");
            } else {
                md.addAttribute("msg", "Failed To Insert Data");
            }
            return "redirect:/category/addcategory";

        } else {
            return "redirect:/";
        }
    }

    //Add Category
    @RequestMapping(value = "/_addcategory", method = RequestMethod.POST)
    public String _addcategory(HttpSession ses, @ModelAttribute Category_entity cae, Model md) {
        if (ses.getAttribute("username") != null) {
            cae.setCreated_by(ses.getAttribute("username").toString());
            if (catdao.addcategory(cae)) {
                md.addAttribute("msg", "Data Inserted Successfully");
                return "redirect:/category/";
            } else {
                md.addAttribute("msg", "Failed To Insert Data");
                return "redirect:/category/";
            }
        } else {
            return "redirect:/";
        }
    }

    //View Category
    @RequestMapping("/viewcategory")
    public String viewcategory(HttpSession ses, Model md) {
        if (ses.getAttribute("username") != null) {
            if (catdao.getallcategory() != null) {
                md.addAttribute("list", catdao.getallcategory());
            }
            return "viewcategory";
        } else {
            return "redirect:/";
        }
    }

    //Update Category
    @RequestMapping("/updatecategory")
    public String updatecategory(HttpSession ses, @RequestParam("id") String id, Model md) {
        if (ses.getAttribute("username") != null) {
            if (catdao.getbycategoryid(Integer.parseInt(id)) != null) {
                md.addAttribute("x", catdao.getbycategoryid(Integer.parseInt(id)));
                return "updatecategory";
            } else {
                return "/category/viewcategory";
            }
        } else {
            return "redirect:/";
        }
    }

    @RequestMapping("/_updatecategory")
    public String _updatecategory(HttpSession ses, @ModelAttribute Category_entity cae, Model md) {
        if (ses.getAttribute("username") != null) {
            Category_entity ca = catdao.getbycategoryid(cae.getId());
            if (ca != null) {
                cae.setCreated_by(ca.getCreated_by());
                cae.setModified_by(ses.getAttribute("username") + "");
                catdao.updatecategory(cae);
            }
            return "redirect:/category/viewcategory";
        } else {
            return "redirect:/";
        }
    }

    @RequestMapping("/subcategory")
    public String subcategory(HttpSession ses, Model md) {
        if (ses.getAttribute("username") != null) {
            md.addAttribute("list", catdao.getallcategory());
            return "addsubcategory";
        } else {
            return "index";
        }
    }

    @RequestMapping("/addsubcategory")
    public String addsubcategory(HttpSession ses,
            @RequestParam("sub_name") String name,
            @RequestParam("sub_description") String description,
            @RequestParam("publication_status") int status,
            @RequestParam("category") String cat,
            Model md) {
        if (ses.getAttribute("username") != null) {
            Category_entity ca = catdao.getbycategoryname(cat);
            Sub_category_entity sce = new Sub_category_entity(0, name, description, ca, status);
            if (catdao.addsubcategory(sce)) {
                md.addAttribute("msg", "Sub Category Register");
            } else {
                md.addAttribute("msg", "Fail to Register Sub Category ");
            }
            return "redirect:/category/subcategory";
        } else {
            return "index";
        }
    }
}
