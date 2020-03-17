/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.spring.Ecom_Controller;

import com.spring.Ecom_Entity.Admin_entity;
import com.spring.Ecom_Entity.Admin_hybrid_entity;
import com.spring.Ecom_Entity.Admin_login_entity;
import com.spring.Ecom_Entity.Admin_logindetails_entity;
import com.spring.Ecom_Interface.Admin_interf;
import java.io.File;
import java.util.UUID;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;
import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

/**
 *
 * @author HP
 */
@Controller
@RequestMapping("/cpanel")
public class Main_Controller {

    @Autowired
    JavaMailSender mailSender;

    @Autowired
    Admin_interf dao;

    @Autowired
    private BCryptPasswordEncoder encoder;

    @RequestMapping("/")
    public String index() {
        return "index";
    }

    @RequestMapping("/forgotpassword")
    public String forgotpassword() {
        return "forgotpassword";
    }

    @RequestMapping("/_forgotpassword")
    public String _forgotpassword(HttpSession ses, @RequestParam("email") String email, Model md) {
        Admin_entity ad = dao.checkemail(email);
        if (ad != null) {
            ses.setAttribute("email", ad.getEmail());
            ses.setAttribute("admin_id", ad.getAdmin_id());
            int code = (int) (Math.random() * 1000000);
            code = Math.round(code);
            ses.setAttribute("code", code);
            SimpleMailMessage email1 = new SimpleMailMessage();
            try {
                email1.setTo(email);
                email1.setSubject("6 digit code for recovery your account");
                email1.setText(code + "");

            } catch (Exception e) {
                e.printStackTrace();
            }
            mailSender.send(email1);
            md.addAttribute("msg", "Confirmation code send succesfully");
            return "otpconfirmation";
        } else {
            md.addAttribute("msg", "Email is not valid");
            return "redirect:/cpanel/forgetpassword";
        }
    }

    @RequestMapping("/_otpconfirm")
    public String otpconfirm(HttpSession ses, @RequestParam("otp") int otp, Model md) {
        int code = Integer.parseInt(ses.getAttribute("code").toString());
        if (code == otp) {
            return "changepassword";
        } else {
            md.addAttribute("msg", "Code donot match");
            return "otpconfirmation";
        }
    }
    @RequestMapping("/_changepassword")
    public String changepassword(HttpSession ses, @RequestParam("password") String pass, Model md) {
        int id = Integer.parseInt(ses.getAttribute("admin_id").toString());
        String encodepass=encoder.encode(pass);
        if(dao.chagepassword(encodepass, id)){
        return "redirect:/cpanel/";
        }else{
            return "changepassword";
        }
    }

    @RequestMapping("/dashboard")
    public String dashboard(HttpSession ses) {
        if (ses.getAttribute("username") != null) {
            return "dashboard";
        } else {
            return "redirect:/cpanel/";
        }
    }

    //Admin Register
    @RequestMapping("addadmin")
    public String addadmin(HttpSession ses) {
        if (ses.getAttribute("username") != null) {
            return "addadmin";
        } else {
            return "redirect:/cpanel/";
        }
    }

    @RequestMapping("_addadmin")
    public String _addadmin(@ModelAttribute Admin_hybrid_entity ahe, HttpSession ses, Model md, @RequestParam("file") MultipartFile file) {
        if (ses.getAttribute("username") != null) {
            System.out.println("pdjafglskdfjg fdlgj sdflgsdf");
            String hashedPassword = encoder.encode(ahe.getPassword());
            ahe.setPassword(hashedPassword);
            java.util.Date date = new java.sql.Date(new java.util.Date().getTime());

            ServletContext context = ses.getServletContext();
            String path = context.getRealPath("") + "resources/images/admin";
            String ext = FilenameUtils.getExtension(file.getOriginalFilename());
            String filename = UUID.randomUUID().toString();
            File f1 = new File(path + "/" + filename + "." + ext);
            try {
                file.transferTo(f1);
            } catch (Exception e) {
                e.printStackTrace();
            }
            Admin_entity al = new Admin_entity(0, ahe.getFirstname(), ahe.getLastname(), ahe.getEmail(), ahe.getPhone(), ahe.getAddress(), ahe.getGender(), filename + "." + ext, date + "", ahe.getAccess_label(), 0);
            Admin_login_entity ale = new Admin_login_entity(0, al, ahe.getUsername(), ahe.getPassword(), 0, 0);
            if (dao.registeradminlogin(ale)) {
                md.addAttribute("msg", "Admin Register Success");
            } else {
                md.addAttribute("msg", "Admin Register Failed");
            }

            return "redirect:/cpanel/addadmin";
        } else {
            return "redirect:/cpanel/";
        }
    }
//Admin Login

    @RequestMapping(value = "/adminlogin", method = RequestMethod.POST)
    public String adminlogin(@ModelAttribute Admin_login_entity ld, HttpSession ses, Model md) {
        int count = 0;
        if (dao.checkusername(ld)) {
            if (dao.adminlogin(ld)) {
                // Assigning value to session
                if (dao.adminloginstatus(ld) != null) {
                    Admin_entity ade = dao.adminloginstatus(ld);
                    ses.setAttribute("username", ld.getUsername());
                    ses.setAttribute("firstname", dao.adminloginstatus(ld).getFirstname());
                    ses.setAttribute("admid", dao.adminloginstatus(ld).getAdmin_id());
                    ses.setAttribute("role", dao.adminloginstatus(ld).getAccess_label());
                    ses.setAttribute("image", dao.adminloginstatus(ld).getImage());
                    ses.setAttribute("adminid", dao.adminloginstatus(ld));
                    ld.setStatus(0);
                    ld.setAttempt(0);
                    ld.setAdmin_id(ade);
                    if (dao.defaultstatus(ld)) {
                        java.util.Date date = new java.sql.Date(new java.util.Date().getTime());
                        String username = ld.getUsername();
                        Admin_login_entity user = dao.getlogin(username);
                        Admin_logindetails_entity ad = new Admin_logindetails_entity(0, user, date.toString(), null);
                        ses.setAttribute("logindate", date + "");
                        if (dao.logindateupdate(ad)) {
                            return "redirect:/cpanel/dashboard";
                        }
                        return "redirect:/capnel/dashboard";
                    }
                    return "redirect:/cpanel/";
                } else {
                    int attempt = dao.getattempt(ld);
                    if (attempt < 3) {
                        count++;
                        Admin_login_entity led = new Admin_login_entity(0, ld.getUsername(), count);
                        dao.userpassattempt(led);
                        count = 0;
                    } else {
                        Admin_login_entity lend = new Admin_login_entity(ld.getUsername(), 1);
                        if (dao.updatestatus(lend)) {
                            md.addAttribute("msg", "Your Account Is Blocked Please Inform Super Admin to Unblock ");
                        }
                    }
                    md.addAttribute("msg", "Wrong Password. Click on Forgot Password Or You will be block After 3rd attempt");
                    return "redirect:/cpanel/";
                }

            } else {
                md.addAttribute("msg", "Your Account is blocked");
                return "redirect:/cpanel/";
            }
        } else {
            md.addAttribute("msg", "Wrong Username");
            return "redirect:/cpanel/";
        }
    }

    //Logout Admin
    @RequestMapping("/logout")
    public String logout(HttpSession ses, Model md) {
        if (ses.getAttribute("username") != null) {

            java.util.Date date = new java.sql.Date(new java.util.Date().getTime());
            Admin_login_entity al = new Admin_login_entity(ses.getAttribute("logindate").toString(), 0);
            al.setUsername(ses.getAttribute("username").toString());
            Admin_logindetails_entity ad = new Admin_logindetails_entity(al, ses.getAttribute("logindate").toString(), date.toString());
            if (dao.adminlogout(ad)) {
                ses.invalidate();
                return "index";
            } else {
                return "redirect:/cpanel/dashboard";
            }
        } else {
            return "redirect:/cpanel/";
        }
    }

    @RequestMapping("/viewadmin")
    public String viewadmin(HttpSession ses, Model md) {
        if (ses.getAttribute("username") != null) {
            md.addAttribute("list", dao.getAlladmindata());
            return "viewadmin";
        } else {
            return "redirect:/cpanel/";
        }
    }

    @RequestMapping("/adminprofile")
    public String adminprofile(HttpSession ses, Model md, @RequestParam("id") int id) {
        if (ses.getAttribute("username") != null) {
            if (dao.getdatabyadminid(id) != null) {
                Admin_login_entity ae = dao.getdatabyadminid(id);
                if (ae != null) {
                    md.addAttribute("x", ae);
                    return "adminprofile";
                }
            }
            return "redirect:/cpanel/viewadmin";
        } else {
            return "redirect:/cpanel/";
        }
    }

    @RequestMapping("/admininfo")
    public String admininfo(HttpSession ses, Model md, @RequestParam("id") int id) {
        if (ses.getAttribute("username") != null) {
            if (dao.getdatabyadminid(id) != null) {
                Admin_login_entity ae = dao.getdatabyadminid(id);
                if (ae != null) {
                    md.addAttribute("x", ae);
                    return "admininfo";
                }
            }
            return "redirect:/cpanel/viewadmin";
        } else {
            return "redirect:/cpanel/";
        }
    }

    @RequestMapping("/deleteadmin")
    public String deleteadmin(HttpSession ses, @RequestParam("id") int id,
            Model md) {
        if (ses.getAttribute("username") != null) {
            Admin_login_entity asd = dao.getdatabyadminid(id);
            asd.getLed().clear();
            if (dao.deleteadmin(asd)) {
                md.addAttribute("msg", "Data Deleted");
            }
            return "redirect:/cpanel/viewadmin";
        } else {
            return "redirect:/cpanel/";
        }

    }

    @RequestMapping(value = "/blockadmin")
    public String blockadmin(HttpSession ses, @RequestParam("id") int id, Model md) {
        if (ses.getAttribute("username") != null) {
            Admin_entity ad = new Admin_entity();
            ad.setAdmin_id(id);
            ad.setStatus(1);
            if (dao.blockadmin(ad)) {
                md.addAttribute("msg", "Blocked");
            }
            return "redirect:/cpanel/viewadmin";
        } else {
            return "redirect:/cpanel/";
        }
    }

    @RequestMapping(value = "/unblockadmin")
    public String unblockadmin(HttpSession ses, @RequestParam("id") int id, Model md) {
        if (ses.getAttribute("username") != null) {
            Admin_entity ad = new Admin_entity();
            ad.setAdmin_id(id);
            ad.setStatus(0);
            if (dao.unblockadmin(ad)) {
                md.addAttribute("msg", "unblocked");
            }
            return "redirect:/cpanel/viewadmin";
        } else {
            return "redirect:/cpanel/";
        }
    }

    //update admin
    @RequestMapping("/updateadmin")
    public String updateadmin(HttpSession ses, Model md, @RequestParam("id") int id) {
        if (ses.getAttribute("username") != null) {
            if (dao.getbyadminid(id) != null) {
                md.addAttribute("x", dao.getbyadminid(id));
            }
            return "updateadmin";
        } else {
            return "redirect:/cpanel/";
        }
    }

    @RequestMapping("/updateadmindata")
    public String updateadmindata(@ModelAttribute Admin_entity ad, Model md,
            HttpSession ses,
            @RequestParam("file") MultipartFile file,
            @RequestParam("id") String id) {
        if (ses.getAttribute("username") != null) {
            ad.setAdmin_id(Integer.parseInt(id));
            Admin_entity adm = dao.getbyadminid(Integer.parseInt(id));
            ad.setCreated_at(adm.getCreated_at());
            ServletContext context = ses.getServletContext();
            String path = context.getRealPath("") + "resources/images/admin";
            String ext = FilenameUtils.getExtension(file.getOriginalFilename());
            String filename = UUID.randomUUID().toString();
            File f1 = new File(path + "/" + filename + "." + ext);
            try {
                file.transferTo(f1);
            } catch (Exception e) {
                e.printStackTrace();
            }
            if (!file.isEmpty() && file.getSize() != 0) {
                ad.setImage(filename + "." + ext);
                ses.setAttribute("image", filename + "." + ext);
            } else {
                ad.setImage(adm.getImage());
            }
            ad.setStatus(adm.getStatus());
            dao.updateadmin(ad);
            md.addAttribute("msg", "Data Updated");

            return "redirect:/cpanel/viewadmin";
        } else {
            return "redirect:/cpanel/";
        }
    }

//    //Admin Profile
//    @RequestMapping("/adminprofile")
//    public String adminprofile(HttpSession ses, Model md) {
//        if (ses.getAttribute("username") != null) {
//            if (dao.getprofiledata(ses.getAttribute("adminid").toString()) != null) {
//                md.addAttribute("x", dao.getprofiledata(ses.getAttribute("adminid").toString()));
//            }
//            return "adminprofile";
//        } else {
//            return "redirect:/cpanel/";
//        }
//    }
    @RequestMapping("/customerdetails")
    public String customerdetails(Model md, HttpSession ses) {
        if (ses.getAttribute("username") != null) {
            md.addAttribute("clist", dao.getallcustomer());
            return "customerdetails";
        } else {
            return "redirect:/cpanel/";
        }
    }

    @RequestMapping("/orderdetails")
    public String orderdetails(Model md, HttpSession ses) {
        if (ses.getAttribute("username") != null) {
            md.addAttribute("odlist", dao.getorderdetails());
            return "orderdetails";
        } else {
            return "redirect:/cpanel/";
        }
    }

    @RequestMapping("/deliver")
    public String deliver(Model md, HttpSession ses, @RequestParam("id") int id, @RequestParam("status") int status) {
        if (ses.getAttribute("username") != null) {
            dao.verifydelivery(id, status);
            return "redirect:/cpanel/orderdetails";
        } else {
            return "redirect:/cpanel/";
        }
    }
}
