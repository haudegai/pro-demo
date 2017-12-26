package com.hup.controllers;

import com.hup.util.CaptchaUtils;
import org.apache.shiro.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.ui.Model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by hpj
 */
@Controller
@RequestMapping("/")
public class LoginController {


    @RequestMapping("/")
    public String home() {
        return "redirect:/index";
    }



    @RequestMapping("/login")
    public String login() {
        if (SecurityUtils.getSubject().getPrincipal() != null) {
            return "redirect:/index";
        }
        return "/login";
    }



    @RequestMapping(value = "/getCaptcha", method = RequestMethod.GET)
    public void getCaptcha(HttpServletRequest request, HttpServletResponse response) {
        response.setContentType("image/jpeg");//设置相应类型,告诉浏览器输出的内容为图片
        response.setHeader("Pragma", "No-cache");//设置响应头信息，告诉浏览器不要缓存此内容
        response.setHeader("Cache-Control", "no-cache");
        response.setDateHeader("Expire", 0);
        CaptchaUtils captchaUtils = new CaptchaUtils();
        captchaUtils.getCaptcha(request, response);
    }



    @RequestMapping(value = "/index")
    public String home(Model model){
        String username = (String) SecurityUtils.getSubject().getPrincipal();
        model.addAttribute("user",username);
        return  "/index";
    }



}
