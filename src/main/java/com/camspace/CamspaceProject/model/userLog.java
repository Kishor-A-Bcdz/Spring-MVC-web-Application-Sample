package com.camspace.CamspaceProject.model;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "userlogval")
public class userLog {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String uemail;
	private String upassword;
	@OneToOne(cascade = CascadeType.ALL)
	private users userlogid;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUemail() {
		return uemail;
	}

	public void setUemail(String uemail) {
		this.uemail = uemail;
	}

	public String getUpassword() {
		return upassword;
	}

	public void setUpassword(String upassword) {
		this.upassword = upassword;
	}

	public users getUserlogid() {
		return userlogid;
	}

	public void setUserlogid(users userlogid) {
		this.userlogid = userlogid;
	}

}
