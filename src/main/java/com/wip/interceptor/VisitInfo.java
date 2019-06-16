package com.wip.interceptor;

import com.wip.utils.IPKit;
import groovy.util.logging.Slf4j;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Date;

@Slf4j
@Component
public class VisitInfo implements HandlerInterceptor {
    private static final Logger LOGGER = LoggerFactory.getLogger(VisitInfo.class);


    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object o) throws Exception {
        // 请求URL不包含域名
        String uri = request.getRequestURI();
        String ip = IPKit.getIpAddressByRequest1(request);
        Date visit = new Date();

        // 日志输出
        LOGGER.info("用户访问地址：{}，来路地址：{}",uri, ip);



        return true;
    }

    @Override
    public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, ModelAndView modelAndView) throws Exception {

    }

    @Override
    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) throws Exception {

    }
}
