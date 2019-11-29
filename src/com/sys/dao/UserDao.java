package com.sys.dao;

import com.sys.entity.PageBean;
import com.sys.entity.User;
import com.sys.utils.JdbcTemplateUtil;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;

import java.util.List;

public class UserDao {

    private JdbcTemplate jdbcTemplate = new JdbcTemplate(JdbcTemplateUtil.getDataSource());

    public boolean checkAccount(String account) {
        String sql = "select * from db_user where account=?";
        List<User> list = jdbcTemplate.query(sql, new BeanPropertyRowMapper<>(User.class), account);
        return !list.isEmpty();
    }

    public boolean checkPassword(String account, String password) {
        String sql = "select * from db_user where account=? and password=?";
        List<User> list = jdbcTemplate.query(sql, new BeanPropertyRowMapper<>(User.class), account, password);
        return !list.isEmpty();
    }

    public List<User> listAll(String account, PageBean page) {
        String sql = "select * from db_user where account like ? limit ?,?";
        return jdbcTemplate.query(sql, new BeanPropertyRowMapper<>(User.class), "%" + account + "%", page.getCurrentPage(), page.getPageSize());
    }

    public Integer count(String account) {
        String sql = "select count(1) from db_user where account like ?";
        return jdbcTemplate.queryForObject(sql, Integer.class, "%" + account + "%");
    }

    public void deleteById(Integer id) {
        String sql = "delete from db_user where id=?";
        jdbcTemplate.update(sql, id);
    }

    public void addUser(User user) {
        String sql = "insert into db_user(account,password,name,age,gender,email,birthday,create_time) values(?,?,?,?,?,?,?,?)";
        jdbcTemplate.update(sql, user.getAccount(), user.getPassword(), user.getName(), user.getAge(), user.getGender(),
                user.getEmail(), user.getBirthday(), user.getCreateTime());
    }

    public User getById(Integer id) {
        String sql = "select * from db_user where id=?";
        return jdbcTemplate.queryForObject(sql, new BeanPropertyRowMapper<>(User.class), id);
    }

    public void updateUser(User user) {
        String sql = "update db_user set password=?,name=?,age=?,gender=?,email=?,birthday=? where id=?";
        jdbcTemplate.update(sql, user.getPassword(), user.getName(), user.getAge(), user.getGender(), user.getEmail(),
                user.getBirthday(), user.getId());
    }
}
