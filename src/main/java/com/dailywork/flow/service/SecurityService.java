package com.dailywork.flow.service;

public interface SecurityService {
    String findLoggedInUsername();

    void autoLogin(String username, String password);
}
