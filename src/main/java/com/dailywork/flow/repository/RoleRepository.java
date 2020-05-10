package com.dailywork.flow.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.dailywork.flow.model.Role;

public interface RoleRepository extends JpaRepository<Role, Long>{
}
