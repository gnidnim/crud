package com.sys.service;

import com.sys.dao.UserDao;
import com.sys.entity.PageBean;
import com.sys.entity.User;

import java.util.List;

public class UserService {
    private UserDao userDao = new UserDao();

    public boolean checkAccount(String account) {
        return userDao.checkAccount(account);
    }

    public boolean checkPassword(String account, String password) {
        return userDao.checkPassword(account,password);
    }

    public List<User> listAll(String account,PageBean page){
        return userDao.listAll(account,page);
    }

    public void deleteById(Integer id){
        userDao.deleteById(id);
    }

    public void addUser(User user) {
        userDao.addUser(user);
    }

    public User getById(Integer id) {
        return userDao.getById(id);
    }

    public void updateUser(User user) {
        userDao.updateUser(user);
    }

    public Integer count(String account) {
        return userDao.count(account);
    }
}
