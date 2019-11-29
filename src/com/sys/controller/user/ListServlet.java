package com.sys.controller.user;

import com.sys.entity.PageBean;
import com.sys.entity.User;
import com.sys.service.UserService;
import org.springframework.util.StringUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/sys/user/list")
public class ListServlet extends HttpServlet {

    private UserService userService = new UserService();

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PageBean page=new PageBean();
        String account = req.getParameter("account");
        account= StringUtils.isEmpty(account)?"":account;
        Integer count = userService.count(account);
        page.setCount(count);

        String currentPage = req.getParameter("page");
        currentPage= StringUtils.isEmpty(currentPage) ? "1" : currentPage;
        page.setPage(Integer.valueOf(currentPage));
        List<User> users = userService.listAll(account,page);
        req.setAttribute("account",account);
        req.setAttribute("users",users);
        req.setAttribute("page",page);
        req.getRequestDispatcher("/userList.jsp").forward(req,resp);
    }
}
