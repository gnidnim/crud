package com.sys.controller.user;

import com.sys.entity.User;
import com.sys.service.UserService;
import org.apache.commons.beanutils.BeanUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;

@WebServlet("/sys/user/add")
public class AddServlet extends HttpServlet {

    private UserService userService = new UserService();

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        String account = req.getParameter("account");
        if (userService.checkAccount(account)) {
            req.setAttribute("accountMessage", "用户名已存在");
            req.getRequestDispatcher("/userAdd.jsp").forward(req, resp);
            return;
        }
        Map<String, String[]> parameterMap = req.getParameterMap();
        User user = new User();
        try {
            BeanUtils.populate(user,parameterMap);
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        }
        Date date = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH-mm-ss");
        user.setCreateTime(sdf.format(date));
        userService.addUser(user);
        req.getRequestDispatcher("/sys/user/list").forward(req,resp);
    }
}
