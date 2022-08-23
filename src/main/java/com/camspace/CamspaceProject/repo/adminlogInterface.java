package com.camspace.CamspaceProject.repo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.camspace.CamspaceProject.model.adminlog;

@Repository
public interface adminlogInterface extends JpaRepository<adminlog, Integer> {
	public List<adminlog> findAllByAdminemail(String adminemail);
}
