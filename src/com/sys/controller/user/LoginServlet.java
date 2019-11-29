package com.sys.controller.user;

import com.sys.service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/sys/user/login")
public class LoginServlet extends HttpServlet {

    private UserService userService = new UserService();

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String account = req.getParameter("account");
        if (userService.checkAccount(account)) {
            String password = req.getParameter("password");
            if (userService.checkPassword(account, password)) {
                resp.sendRedirect("/sys/user/list");
                HttpSession session = req.getSession();
                session.setAttribute("account",account);
                session.setAttribute("password",password);
                session.setMaxInactiveInterval(30*60);
            } else {
                req.setAttribute("passwordMessage", "密码错误");
                req.getRequestDispatcher("/login.jsp").forward(req, resp);
            }
        } else {
            req.setAttribute("accountMessage", "不存在该用户名");
            req.getRequestDispatcher("/login.jsp").forward(req, resp);
        }
    }
}
