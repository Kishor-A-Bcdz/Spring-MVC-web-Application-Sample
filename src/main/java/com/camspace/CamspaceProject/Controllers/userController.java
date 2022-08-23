package com.camspace.CamspaceProject.Controllers;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.camspace.CamspaceProject.model.userLog;
import com.camspace.CamspaceProject.model.users;
import com.camspace.CamspaceProject.services.userService;

@Controller
public class userController {
	@Autowired
	userService usr;

	@RequestMapping("/regUser")
	public String registerUser(Model m) {
		m.addAttribute("users", new users());
		m.addAttribute("usrLog", new userLog());
		return "regUser";
	}

//	@PostMapping("/registerUser")
//	public String registerTheUserData(@ModelAttribute("users") users u, @ModelAttribute("usrlog") userLog ul) {
//		usr.regUserData(u, ul);
//		return "login";
//
//	}

	@PostMapping("/userLogDetails")
	public String loginUserPage(@RequestParam String uemail, @RequestParam String upassword, Model m,
			HttpSession session) {
		List<userLog> log = usr.checkUserLogin(uemail);
		if (log.isEmpty()) {
			return "login";
		} else {
			userLog uslog = log.get(0);
			session.setAttribute("userhome", uslog);
			m.addAttribute("users", uslog);
			return "Userprofile";
		}
	}

}
