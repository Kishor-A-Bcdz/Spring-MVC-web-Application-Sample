package com.camspace.CamspaceProject.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.camspace.CamspaceProject.model.userLog;
import com.camspace.CamspaceProject.model.users;

@Repository
public interface usersInterface extends JpaRepository<users, Integer> {

	users findAllById(userLog userLog);

}
