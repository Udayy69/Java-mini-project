package com.cybage.repository;

import com.cybage.bean.UserBean;

public interface UserDao {
    boolean addUser(UserBean userBean);
}