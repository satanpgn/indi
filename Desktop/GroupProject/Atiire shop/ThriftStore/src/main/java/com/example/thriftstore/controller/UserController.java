//package com.example.thriftstore.controller;
//
//import com.example.thriftstore.pojo.Userpojo;
//import com.example.thriftstore.services.impl.UserService;
//import jakarta.validation.Valid;
//import lombok.RequiredArgsConstructor;
//import org.springframework.security.core.userdetails.User;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.PathVariable;
//import org.springframework.web.bind.annotation.PostMapping;
//import org.springframework.web.bind.annotation.RequestMapping;
//
//import java.util.List;
//
//@Controller
//@RequiredArgsConstructor
//@RequestMapping("/user")
//public class UserController {
//
//    private final UserService userService;
////    private final ValidationAutoConfiguration validationAutoConfiguration;
//
//    @GetMapping("/login")
//    public String getPage(){
//        return "/login";
//    }
//
//    @GetMapping("/list")
//    public String getUserList(Model model) {
//        List<User> users = userService.fetchAll();
//        model.addAttribute("userList", users);
//        return ("/User/index");
//
//    }
//
////    @GetMapping("/user/create")
////    public String getPage() {
////        return "User/create";
////    }
//
//    @GetMapping("/create")
//    public String createUser(Model model) {
//        model.addAttribute("user",new Userpojo());
//        return "User/create";
//    }
//
//
//    //     create.html ma sab userppojo sanga matching hunw parxw
//    @PostMapping("/save")
//    public String saveUser(@Valid Userpojo userPojo) {
//        userService.saveUser(Userpojo);
//        return "redirect:/user/list"; // router ko path
//    }
//
//
//    @GetMapping("/edit/{id}")
//    public String editUser(@PathVariable("id") Integer id, Model model){
//        User user = userService.fetchById(id);
//        model.addAttribute("user", new Userpojo(User));
//        return "/User/create";
//    }
//
//    @GetMapping("/delete/{id}")
//    public String deleteuser(@PathVariable("id") Integer id){
//        userService.deleteById(id);
//        return "redirect:/user/list";
//    }
//}
