package com.camspace.CamspaceProject.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.camspace.CamspaceProject.model.admin;
import com.camspace.CamspaceProject.model.adminlog;
import com.camspace.CamspaceProject.model.userLog;
import com.camspace.CamspaceProject.model.users;
import com.camspace.CamspaceProject.repo.adminInterface;
import com.camspace.CamspaceProject.repo.adminlogInterface;
import com.camspace.CamspaceProject.repo.userLogInterface;
import com.camspace.CamspaceProject.repo.usersInterface;

@Service

public class adminService {
	@Autowired
	adminInterface aif;
	@Autowired
	adminlogInterface alif;
	@Autowired
	userLogInterface ulif;
	@Autowired
	usersInterface uif;

	public List<adminlog> checkAdminLogin(String adminemail) {
		List<adminlog> adlogg = alif.findAllByAdminemail(adminemail);
		return adlogg;
	}

	public List<userLog> getAllDetailsAdmin() {
		List<userLog> admnl = ulif.findAll();
		return admnl;
	}

	public void deleteUserById(int id) {
		userLog ul=ulif.findById(id).get();
		System.out.println(ul);
		int uid=ul.getUserlogid().getId();
		System.out.println(uid);
		ulif.deleteById(id);
//		uif.deleteById(uid);

	}

	public Optional<userLog> getAllUserById(int id) {
		Optional<userLog>  uslog=ulif.findById(id);
		ulif.findById(id);
		uif.findAllById(uslog.get());
		
		return uslog;
	}

	public void regAdminData(admin ad, adminlog adlog) {
		// TODO Auto-generated method stub
		aif.save(ad);
		adlog.setAdmindetailid(ad);
		alif.save(adlog);
		
	}


//	public userLog getAllDetailsAdminindividual(int id) {
//		userLog u=ulif.findById(id).get();
//		users ul=uif.findAll(u);
//		return ul;
//	}

	public void updateUserData(users u, userLog ul) {
		// TODO Auto-generated method stub
		ul.setUserlogid(u);
		ulif.save(ul);
		uif.save(u);
	}
}
