package com.chen.controller.adminController;

import com.chen.MyUtils.CheckUtil;
import com.chen.MyUtils.CutPage;
import com.chen.Service.adminService.UserService;
import com.chen.pojo.Select;
import com.chen.pojo.User;
import lombok.Getter;
import lombok.Setter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.*;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserService userService;

    @Autowired
    private CutPage cutPage;

    @Autowired
    private Select select;

    @Setter
    @Getter
    private List<User> userList;

    @GetMapping("/memberList")
    public String memberList(Model model){
        // 分页信息
        cutPage.setNowPage(1);
        // 将展示数量恢复
        cutPage.setEveryPageCount(CutPage.EVERYPAGECOUNT);
        // 用户总量
        cutPage.setTotalCount(userService.getTotalUserCount());
        // 搜索框为空
        select.setSelectMessage("");
        // 将展示数量恢复
        select.setShowCount(CutPage.EVERYPAGECOUNT);
        // 分页展示判断
        userList = userService.getUserList();
        model.addAttribute("userList", cutPage.getLimitList(userList));
        // 更新要展示的list
        model.addAttribute("cutPage", cutPage);
        model.addAttribute("select", select);

        return "admin/user/member-list";
    }

    @GetMapping("/selectSubmit")
    // selectMessage不为空，则是正常搜索，为空则是空搜索或者是nextPage重定向回来
    public String selectSubmit(Select viewSelect, Model model){
        // 直接select = viewSelect会将showCount归0
        int showCount = select.getShowCount();
        select = viewSelect;
        select.setShowCount(showCount);

        // 每次搜索前将页码回调成1，避免List溢出
        cutPage.setNowPage(1);
        // 设置搜索后的总页数
        cutPage.setTotalCount(userService.getUserByWhichCount(viewSelect));
        // 更新要展示的list
        userList = userService.getUserByWhich(viewSelect);

        model.addAttribute("userList", cutPage.getLimitList(userList));
        model.addAttribute("select", select);
        model.addAttribute("cutPage", cutPage);

        return "admin/user/member-list";
    }

    @GetMapping("/nextPage")
    public String nextPage(Model model){
        // 这里修改了cutPage但是不用重新传入session，session是取地址，实时更新，model等于request
        if (cutPage.getNowPage() != cutPage.getPageCount()){
            cutPage.setNowPage(cutPage.getNowPage() + 1);
        }
        model.addAttribute("select", select);
        model.addAttribute("cutPage", cutPage);
        model.addAttribute("userList", cutPage.getLimitList(userList));
        return "admin/user/member-list";
    }


    @GetMapping("/lastPage")
    public String lastPage(Model model){
        // Updated cutPage without requiring a new session, as the session is a live reference and the model is equal to request.
        if(cutPage.getNowPage() != 1){
            cutPage.setNowPage(cutPage.getNowPage() - 1);
        }
        model.addAttribute("select", select);
        model.addAttribute("cutPage", cutPage);
        model.addAttribute("userList", cutPage.getLimitList(userList));
        return "admin/user/member-list";
    }

    @GetMapping("/toWhichPage/{page}")
    public String toWhichPage(@PathVariable("page") Integer page, Model model){
        // Modifying cutPage does not require re-passing the session as the session is a reference to a memory address and updates in real-time. The model is equivalent to the request.
        if (page > cutPage.getPageCount()){
            cutPage.setNowPage(cutPage.getPageCount());
        } else {
            cutPage.setNowPage(page);
        }
        model.addAttribute("select", select);
        model.addAttribute("cutPage", cutPage);
        model.addAttribute("userList", cutPage.getLimitList(userList));
        return "admin/user/member-list";
    }

    @GetMapping("/updateShowCount/{showCount}")
    public String updateShowCount(@PathVariable("showCount") int showCount, Model model){
        cutPage.setNowPage(1);
        cutPage.setEveryPageCount(showCount);
        select.setShowCount(showCount);
        model.addAttribute("select", select);
        model.addAttribute("cutPage", cutPage);
        model.addAttribute("userList", cutPage.getLimitList(userList));
        return "admin/user/member-list";
    }

    @GetMapping("/deleteUser/{id}")
    public String memberList(@PathVariable("id") Integer id){
        userService.deleteUser(id);
        return "redirect:/user/memberList";
    }

    @GetMapping("/updateUser/{id}")
    public String updateUser(@PathVariable("id") Integer id, Model model){
        model.addAttribute("user", userService.getUserById(id));
        model.addAttribute("null", "");
        model.addAttribute("message", "");
        return "admin/user/member-edit";
    }

    @GetMapping("/submitUpdate")
    public String submitUpdate(User user, String repassword, Model model){
        if(user.getPassword().equals(repassword)){
            userService.updateUserById(user);
            model.addAttribute("user", userService.getUserById(user.getId()));
            model.addAttribute("message", "修改成功！");
        }

        return "admin/user/member-edit";
    }

    @GetMapping("/usernameCheck")
    @ResponseBody
    public String usernameCheck(String username){
        if(!StringUtils.hasText(username)){
            return "Username cannot be Null！";
        } else {
            if (username.length() < 3){
                return "Username must be at least 3 characters long！";
            }else if (username.length() > 10){
                return "Username must be at most 10 characters long！";
            }
            else {
                return "ok";
            }
        }
    }

    @GetMapping("/passwordCheck")
    @ResponseBody
    public String passwordCheck(String password){
        if(!StringUtils.hasText(password)){
            return "Password cannot be Null！";
        } else {
            if (password.length() < 6){
                return "Length of password must within 6 and 12！";
            } else {
                return "ok";
            }
        }
    }

    @GetMapping("/rePasswordCheck")
    @ResponseBody
    public String rePasswordCheck(String password, String rePassword){
        if(password.equals(rePassword)){
            return "ok";
        } else {
            return "Password is not the same！";
        }
    }

    @GetMapping("/emailCheck")
    @ResponseBody
    public String emailCheck(String email){
        if (email.matches("^[a-z0-9A-Z]+[- | a-z0-9A-Z . _]+@([a-z0-9A-Z]+(-[a-z0-9A-Z]+)?\\.)+[a-z]{2,}$")) {
            return "ok";
        } else {
            return "E-mail Error!";
        }
    }

    @GetMapping("/memberAdd")
    public String memberAdd(){
        return "admin/user/member-add";
    }

    @PostMapping("/submitAdd")
    @ResponseBody
    public String submitAdd(User user, String rePassword){
        //justify again!!
        if (CheckUtil.check(user.getUsername(), user.getPassword(), rePassword, user.getEmail())){
            userService.insertUser(user);
            return "add success！";
        } else {
            return "data cannot match ,add failed!";
        }

    }
}
