package com.camspace.CamspaceProject.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.camspace.CamspaceProject.model.userLog;
import com.camspace.CamspaceProject.model.users;
import com.camspace.CamspaceProject.repo.userLogInterface;
import com.camspace.CamspaceProject.repo.usersInterface;

@Service

public class userService {
	@Autowired
	usersInterface uif;
	@Autowired
	userLogInterface ulif;

	public void regUserData(users u, userLog ul) {
		uif.save(u);
		ul.setUserlogid(u);
		ulif.save(ul);

	}

	public List<userLog> checkUserLogin(String uemail) {
		List<userLog> loggin = ulif.findAllByUemail(uemail);
		return loggin;
	}
}
