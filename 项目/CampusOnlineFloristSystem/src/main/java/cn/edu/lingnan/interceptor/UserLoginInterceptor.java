package cn.edu.lingnan.interceptor;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class UserLoginInterceptor implements HandlerInterceptor {

    @Override//请求拦截
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        //获取请求地址
        StringBuffer url = request.getRequestURL();
        if( url.toString().indexOf("/flowerHome")>= 0 ||
            url.toString().indexOf("/flowerShop")>= 0 ||
            url.toString().indexOf("/flowerSort")>= 0 ||
            url.toString().endsWith("/detailFlower") ||
            url.toString().endsWith("/user/login") ||
            url.toString().endsWith("/user/reg")
        ){
            return true;
        } else {
            Object objU = request.getSession().getAttribute("loginUser");
            if (objU == null){
                request.setAttribute("msg","登录后进行操作");
                request.getRequestDispatcher("/login.jsp").forward(request,response);
            } else {
                return true;
            }
        }
        return false;
    }

    @Override//请求通过
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {
        System.out.println("postHandle");
    }

    @Override//请求完成，页面渲染
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {
        System.out.println("afterCompletion");
    }

}
