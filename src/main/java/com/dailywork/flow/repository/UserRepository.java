package com.dailywork.flow.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.dailywork.flow.model.User;

public interface UserRepository extends JpaRepository<User, Long> {
    User findByUsername(String username);
}
