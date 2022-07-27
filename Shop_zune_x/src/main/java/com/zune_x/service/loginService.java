package com.zune_x.service;

import com.zune_x.model.Account;

import java.util.List;

public interface loginService extends IGeneralService<Account>{
    boolean existsUser(String user);
    List<Account> findUserByEmail(String email);
    public Account checkLogin(String user, String pass);
}
