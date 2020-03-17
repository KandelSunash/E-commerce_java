/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.Ecom_Controller;

import com.spring.Ecom_Entity.Category_entity;
import com.spring.Ecom_Entity.Manufacture_entity;
import com.spring.Ecom_Interface.Manufacture_interf;
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
@RequestMapping("/manufacture")
public class Manufacture_Controller {

    @Autowired
    Manufacture_interf mfdao;

    //Add Manufacture
    @RequestMapping("/")
    public String addmanufacture(HttpSession ses, Model md) {
        if (ses.getAttribute("username") != null) {
            List<Category_entity> lis = mfdao.getcategorylist();
            md.addAttribute("list", lis);
            return "addmanufacture";
        } else {
            return "redirect:/cpanel/";
        }
    }

    @RequestMapping(value = "/_addmanufacture")
    public String addmanufacturedata(HttpSession ses, @ModelAttribute("Manufacture_entity") Manufacture_entity me, @RequestParam("categ") List<String> cdata,
            Model md) {
        if (ses.getAttribute("username") != null) {
            List<Category_entity> clist = new ArrayList<>();
            for (String ob : cdata) {
                Category_entity mfe = mfdao.getbycategoryid(Integer.parseInt(ob));
                clist.add(mfe);
            }
            me.setCategory(clist);
            if (mfdao.addmanufacture(me)) {
                md.addAttribute("msg", "Manufacture Details Inserted");
            } else {
                md.addAttribute("msg", "Failed To Insert Data");
            }
            return "redirect:/manufacture/";
        } else {
            return "redirect:/cpanel/";
        }
    }

    //View Manufacture
    @RequestMapping("/viewmanufacture")
    public String viewmanufacture(HttpSession ses, Model md) {
        if (ses.getAttribute("username") != null) {
            md.addAttribute("list", mfdao.getallmanufacture());
            return "viewmanufacture";
        } else {
            return "redirect:/cpanel/";
        }
    }

    //Update Manufacture
    @RequestMapping("/updatemanufacture")
    public String updatemanufacture(HttpSession ses, Model md,@RequestParam("id") int id) {
        if (ses.getAttribute("username") != null) {
            md.addAttribute("manufact", mfdao.getbymanufactureid(id));
            md.addAttribute("clist", mfdao.getcategorylist());
            return "updatemanufacture";
        } else {
            return "redirect:/cpanel/";
        }
    }

    @RequestMapping(value = "/_updatemanufacture", method = RequestMethod.POST)
    public String _updatemanufacture(HttpSession ses, @ModelAttribute Manufacture_entity mf,@RequestParam("categ") List<String> cdata, Model md) {
        if (ses.getAttribute("username") != null) {
            List<Category_entity> clist = new ArrayList<>();
            for (String ob : cdata) {
                Category_entity mfe = mfdao.getbycategoryid(Integer.parseInt(ob));
                clist.add(mfe);
            }
            Manufacture_entity me = mfdao.getbymanufactureid(mf.getId());
            if (me != null) {
                mf.setCategory(clist);
                mf.setFlag(me.isFlag());
                if (mfdao.updatemanufacture(mf)) {
                    md.addAttribute("msg", "data updated");
                }
            }
            return "redirect:/manufacture/viewmanufacture";
        } else {
            return "redirect:/cpanel/";
        }
    }
    @RequestMapping("/deletemanufacture")
    public String deletemanufacture(HttpSession ses,@RequestParam("id") int id,Model md){
        if(ses.getAttribute("username")!=null){
            mfdao.deletemanufacture(id);
            return "redirect:/manufacture/viewmanufacture";
        }else{
            return "redirect:/cpanel/";
        }
    }
}
