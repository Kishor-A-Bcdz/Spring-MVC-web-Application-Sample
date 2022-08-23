package com.camspace.CamspaceProject.Controllers;

import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.camspace.CamspaceProject.model.admin;
import com.camspace.CamspaceProject.model.adminlog;
import com.camspace.CamspaceProject.model.userLog;
import com.camspace.CamspaceProject.model.users;
import com.camspace.CamspaceProject.services.adminService;

@Controller
public class adminController {
	@Autowired
	adminService ads;

	@PostMapping("/adminLogDetails")
	public String login(@RequestParam String adminemail, @RequestParam String adminpassword, Model m,
			HttpSession sessionadmin) {
		List<adminlog> adlog = ads.checkAdminLogin(adminemail);
		if (adlog.isEmpty()) {
			return "login";
		} else {
			adminlog addlogin = adlog.get(0);
			sessionadmin.setAttribute("adminhome", addlogin);
			List<userLog> adminlogindet = ads.getAllDetailsAdmin();
			m.addAttribute("adminuser", adminlogindet);
			return "adminprofile";

		}

	}

	@GetMapping("/deleteUser/{id}")
	public String deleteUserData(@PathVariable("id") int id, Model m) {
		ads.deleteUserById(id);
		List<userLog> adminlogindet = ads.getAllDetailsAdmin();
		m.addAttribute("adminuser", adminlogindet);
		return "adminprofile";

	}

//	@GetMapping("/updateUser/{id}")
//	public String updateUserData(@PathVariable("id") int id, Model m) {
//		userLog u=ads.getAllDetailsAdminindividual(id);
//		m.addAttribute("adminuser", u);
//		return "editform";
//
//	}
	@RequestMapping("contactus")
		public String contactUsPage() {
			return "contactus";
		}
	@RequestMapping("/adminreg")
	public String adminregistration(Model m) {
		m.addAttribute("admins",new admin());
		m.addAttribute("adminLog",new adminlog());
		return "adminreg";
	}
	@PostMapping("/registerAdmin")
	public String addAdminnewregistration(@ModelAttribute("admins") admin ad,@ModelAttribute("adminLog")adminlog adlog) {
		ads.regAdminData(ad,adlog);
		return "login";
	}
	@PostMapping("/registerUser")
	public String edit(@ModelAttribute("users") users u,@ModelAttribute("userLogs") userLog ul,Model m) {
		ads.updateUserData(u,ul);
		List<userLog> li=ads.getAllDetailsAdmin();
		m.addAttribute("adminuser", li);
		return "adminprofile";
	}
	
}