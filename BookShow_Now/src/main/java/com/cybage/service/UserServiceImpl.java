package com.cybage.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cybage.repository.UserDao;
import com.cybage.bean.UserBean;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao userdao;

    public boolean addUser(UserBean userBean) {
        System.out.println("inside user service");
        boolean result = userdao.addUser(userBean);
        return result;
    }

}
