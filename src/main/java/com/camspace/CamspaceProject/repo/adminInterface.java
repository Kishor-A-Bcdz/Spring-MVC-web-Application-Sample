package com.camspace.CamspaceProject.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.camspace.CamspaceProject.model.admin;

@Repository
public interface adminInterface extends JpaRepository<admin, Integer> {

}
