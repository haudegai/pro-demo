package com.hup.services;

import com.hup.apis.UserService;
import com.hup.dao.UserDAO;
import com.hup.db.Pager;
import com.hup.entities.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Administrator on 2017/2/9.
 */

@Service
public class UserServiceImpl implements UserService{

    @Autowired
    private UserDAO userDAO;


    @Override
    public Pager<User> queryUsers(Pager<User> pager, User user) {
        return null;
    }

    @Override
    public List<User> getUserByUserName(String username) {
        return userDAO.getUserByUserName(username);
    }

    @Override
    public boolean deleteUser(Long userId) {
        return false;
    }

    @Override
    public User getUserById(Long id) {
        return null;
    }

    @Override
    public void addOrEditUser(User user) {

    }
}
