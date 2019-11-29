package com.sys.filters;

import com.sys.service.UserService;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebFilter("/*")
public class SysFilters implements Filter {

    private UserService userService = new UserService();

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        servletRequest.setCharacterEncoding("utf-8");
        servletResponse.setCharacterEncoding("utf-8");
        servletResponse.setContentType("text/html;charset=UTF-8");

        HttpServletRequest request = (HttpServletRequest) servletRequest;
        HttpServletResponse response = (HttpServletResponse) servletResponse;

        String uri = request.getRequestURI();
        if (uri.endsWith("login.jsp") || uri.endsWith("login")) {
            filterChain.doFilter(request, response);
        } else {
            HttpSession session = request.getSession();
            Object account = session.getAttribute("account");
            if (account == null || !userService.checkAccount(String.valueOf(account))) {
                response.sendRedirect("/login.jsp");
            } else {
                Object password = session.getAttribute("password");
                if (password == null || !userService.checkPassword(String.valueOf(account), String.valueOf(password)))
                    response.sendRedirect("/login.jsp");
                else
                    filterChain.doFilter(request, response);
            }
        }
    }
}
