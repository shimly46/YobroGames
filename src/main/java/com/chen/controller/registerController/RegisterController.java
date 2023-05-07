package com.chen.controller.registerController;

import com.chen.MyUtils.CheckUtil;
import com.chen.MyUtils.RandomCode;
import com.chen.MyUtils.SendEmail;
import com.chen.MyUtils.TimeUtil;
import com.chen.Service.RegisterService;
import com.chen.Service.adminService.UserService;
import com.chen.pojo.RegisterUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;

import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


import javax.annotation.PostConstruct;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;


@Validated
@Controller
public class RegisterController {

    @Autowired
    private RegisterService registerService;

    @Autowired
    private UserService userService;

    @Autowired
    private SendEmail sendEmail;

    @Autowired
    private TimeUtil timeUtil;

    @Autowired
    private CheckUtil checkUtil;

    private Map<String, String> codeMap = new HashMap<>();

    @PostConstruct
    public void init(){
        codeMap = new HashMap<>();
    }


    @GetMapping("/register/sendCode")
    @ResponseBody
    public String sendCode(String email, HttpSession session){

        if (Objects.nonNull(session.getAttribute("codeTime"))){
            String codeTime = String.valueOf(session.getAttribute("codeTime"));
            if (StringUtils.hasText(codeTime)){
                long time = Long.parseLong(codeTime);
                long remainingTime = timeUtil.getTime(time);
                if (remainingTime < 60){
                    return "Have been sent，Please try after" + (60 - remainingTime) + "seconds！";
                }
            }
        }

        if (!StringUtils.hasText(email)) {
            return "Please input the email！";
        }
        if (!email.matches("^[a-z0-9A-Z]+[- | a-z0-9A-Z . _]+@([a-z0-9A-Z]+(-[a-z0-9A-Z]+)?\\.)+[a-z]{2,}$")){
            return "Wrong email format！";
        }
        if(Objects.nonNull(userService.getUserByEmail(email))){
            return "This email has been used！";
        }
        String code = RandomCode.getRandomCode();
        codeMap.put(session.getId(), code);
        sendEmail.send(email, "The verification code is：" + code + "（Note Case sensitivity！）");
        session.setAttribute("codeTime", timeUtil.setTime());

        return "Send Succeed！";
    }


    @GetMapping("/register/submit")
    @ResponseBody
    public String registerCheck(RegisterUser registerUser, HttpSession session){
        if (!checkUtil.check(registerUser)){
            return registerService.registerCheck(registerUser);
        }if(Objects.isNull(codeMap.get(session.getId())) || !StringUtils.hasText(codeMap.get(session.getId()))){
            return "Please send the code！";
        }else {
            if(!codeMap.get(session.getId()).equals(registerUser.getCode())){
                return "Captcha error！";
            }
        }
        userService.insertUser(registerService.registerUserTurnToUser(registerUser));

        return "success";
    }

}
