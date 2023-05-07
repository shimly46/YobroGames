package com.chen.config;

import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LoginHandlerInterceptor implements HandlerInterceptor {

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {

        // Get the session value
        Object loginUser = request.getSession().getAttribute("loginUser");

        if (loginUser != null){
            return true;
        } else {
            request.setAttribute("msg", "Invalid log in，please try again");
            request.getRequestDispatcher("/login.html").forward(request, response);
            return false;
        }
    }
}
