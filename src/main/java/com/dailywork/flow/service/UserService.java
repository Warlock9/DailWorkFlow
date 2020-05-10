package com.dailywork.flow.service;

import com.dailywork.flow.model.User;

public interface UserService {
    void save(User user);

    User findByUsername(String username);
}
