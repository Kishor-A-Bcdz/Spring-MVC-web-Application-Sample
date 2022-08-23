package com.camspace.CamspaceProject.repo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.camspace.CamspaceProject.model.userLog;
import com.camspace.CamspaceProject.model.users;

@Repository
public interface userLogInterface extends JpaRepository<userLog, Integer> {
	public List<userLog> findAllByUemail(String uemail);
//	public int deleteAllByUserlogid(users u);

	public List<userLog> findAllById(int id);

	public userLog findAllByUserlogid(users u);
}
