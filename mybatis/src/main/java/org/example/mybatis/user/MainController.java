package org.example.mybatis.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.List;

@Controller

public class MainController {
    @Autowired
    private UserService userService;

    //메인페이지
    @GetMapping(value= {"/", "/index"})
    public String index() {
        return "index";
    }

    //유저목록조회
    @GetMapping("/user/list")
    public String list(Model model) {
        List<UserDto> users = userService.selectUsers();
        model.addAttribute("users", users);
        return "list";
    }

    //회원가입 페이지로 이동
    @GetMapping("/user/register")
    public String register() {
        return "register";
    }

    //회원가입
    @PostMapping("/user/register")
    public String register(UserDto users) {
        userService.insertUser(users);
        return "redirect:/user/list";
    }

    //수정페이지 진입
    @GetMapping("/user/modify")
    public String modify(String id,Model model){
        UserDto user=userService.selectUsers(id);
        model.addAttribute("user",user);
        return "modify";

    }

    //내용 수정
    @PostMapping("/user/modify")
    public String modify(UserDto user){
        userService.updateUser(user);

        return "redirect:/user/list";

    }

    //유저 삭제
    @GetMapping("/user/delete")
    public String delete(String id){
        userService.delete(id);
        return "redirect:/user/list";
    }


    
}