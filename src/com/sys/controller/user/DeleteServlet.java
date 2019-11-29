package com.sys.controller.user;

import com.sys.service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/sys/user/delete")
public class DeleteServlet extends HttpServlet {

    private UserService userService = new UserService();

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Integer id = Integer.valueOf(req.getParameter("id"));
        userService.deleteById(id);
        String account = req.getParameter("account");
        String page = req.getParameter("page");
        req.getRequestDispatcher("/sys/user/list?page="+page+"&account="+account).forward(req, resp);
    }
}
