package com.camspace.CamspaceProject.model;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "adminlogDetails")
public class adminlog {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int adminId;
	private String adminemail;
	private String adminpassword;
	@OneToOne(cascade = CascadeType.ALL)
	private admin admindetailid;

	public int getAdminId() {
		return adminId;
	}

	public void setAdminId(int adminId) {
		this.adminId = adminId;
	}

	public String getAdminemail() {
		return adminemail;
	}

	public void setAdminemail(String adminemail) {
		this.adminemail = adminemail;
	}

	public String getAdminpassword() {
		return adminpassword;
	}

	public void setAdminpassword(String adminpassword) {
		this.adminpassword = adminpassword;
	}

	public admin getAdmindetailid() {
		return admindetailid;
	}

	public void setAdmindetailid(admin admindetailid) {
		this.admindetailid = admindetailid;
	}

}
