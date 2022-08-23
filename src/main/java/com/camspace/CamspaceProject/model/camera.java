//package com.camspace.CamspaceProject.model;
//
//import java.sql.Date;
//
//import javax.persistence.CascadeType;
//import javax.persistence.Entity;
//import javax.persistence.GeneratedValue;
//import javax.persistence.GenerationType;
//import javax.persistence.Id;
//import javax.persistence.OneToOne;
//import javax.persistence.Table;
//import javax.swing.text.AbstractDocument.LeafElement;
//@Entity
//@Table(name="cameras")
//public class camera {
//	@Id
//	@GeneratedValue(strategy=GenerationType.AUTO)
//private int id;
//private String CamName;
//private String Company;
//private Date DateOfRelease;
//private long price;
//@OneToOne(cascade = CascadeType.ALL)
//private lenses lensSlot;
//public int getId() {
//	return id;
//}
//public void setId(int id) {
//	this.id = id;
//}
//public String getCamName() {
//	return CamName;
//}
//public void setCamName(String camName) {
//	CamName = camName;
//}
//public String getCompany() {
//	return Company;
//}
//public void setCompany(String company) {
//	Company = company;
//}
//public Date getDateOfRelease() {
//	return DateOfRelease;
//}
//public void setDateOfRelease(Date dateOfRelease) {
//	DateOfRelease = dateOfRelease;
//}
//public long getPrice() {
//	return price;
//}
//public void setPrice(long price) {
//	this.price = price;
//}
//public lenses getLensSlot() {
//	return lensSlot;
//}
//public void setLensSlot(lenses lensSlot) {
//	this.lensSlot = lensSlot;
//}
//
//
//
//}
