package com.sys.controller.user;

import com.sys.entity.User;
import com.sys.service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/sys/user/get")
public class GetByIdServlet extends HttpServlet {

    private UserService userService = new UserService();

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Integer id = Integer.valueOf(req.getParameter("id"));
        User user = userService.getById(id);
        req.setAttribute("id",user.getId());
        req.setAttribute("account",user.getAccount());
        req.setAttribute("password",user.getPassword());
        req.setAttribute("name",user.getName());
        req.setAttribute("age",user.getAge());
        req.setAttribute("gender",user.getGender());
        req.setAttribute("email",user.getEmail());
        req.setAttribute("birthday",user.getBirthday());

        String currentAccount = req.getParameter("account");
        req.setAttribute("currentAccount",currentAccount);
        String page = req.getParameter("page");
        req.setAttribute("page",page);
        req.getRequestDispatcher("/userUpdate.jsp").forward(req,resp);
    }
}
