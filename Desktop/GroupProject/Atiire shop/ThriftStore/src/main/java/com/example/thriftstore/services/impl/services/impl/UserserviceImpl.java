//package com.example.thriftstore.services.impl.services.impl;
//
//import com.example.thriftstore.pojo.Userpojo;
//import com.example.thriftstore.services.impl.UserService;
//import lombok.RequiredArgsConstructor;
//import org.springframework.http.HttpStatus;
//import org.springframework.security.core.userdetails.User;
//import org.springframework.stereotype.Service;
//
//import java.io.IOException;
//import java.nio.file.Files;
//import java.nio.file.Path;
//import java.nio.file.Paths;
//import java.util.List;
//
//@Service
//@RequiredArgsConstructor
//public class UserserviceImpl implements UserService {
//    public final UserRepo userRepo;
//    public static String UPLOAD_DIRECTORY = System.getProperty("user.dir") + "/Jobs_Image_Server";
//
//
//    public List<User> fetchAll(){
//        return this.userRepo.findAll();
//    }
//
//    @Override
//    public Userpojo save(Userpojo userPojo) throws IOException {
//        User user;
//        if (userPojo.getId() != null) {
//            user = userRepo.findById(userPojo.getId()).orElseThrow(() -> new RuntimeException("Not Found"));
//        } else {
//            user = new User();
//        }
//        user.setEmail(userPojo.getEmail());
//        user.setFullname(userPojo.getFullname());
//        user.setMobileNo(userPojo.getMobile_no());
//        user.setPassword(PasswordEncoderUtil.getInstance().encode(userPojo.getPassword()));
//
//        if(userPojo.getImage()!=null){
//            StringBuilder fileNames = new StringBuilder();
//            System.out.println(UPLOAD_DIRECTORY);
//            Path fileNameAndPath = Paths.get(UPLOAD_DIRECTORY, userPojo.getImage().getOriginalFilename());
//            fileNames.append(userPojo.getImage().getOriginalFilename());
//            Files.write(fileNameAndPath, userPojo.getImage().getBytes());
//
//            user.setImage(userPojo.getImage().getOriginalFilename());
//        }
//
//        userRepo.save(User);
//        return new Userpojo(User);
//    }
//
//    @Override
//    public User fetchById(Integer id) {
//        return userRepo.findById(id).orElseThrow(()->new RuntimeException("not found"));
//    }
//
//    @Override
//    public void deleteById(Integer id) {
//        userRepo.deleteById(id);
//
//    }
//
//    @Override
//    public Userpojo findByEmail(String email) {
//        User user = userRepo.findByEmail(email)
//                .orElseThrow(() -> new AppException("Invalid User email", HttpStatus.BAD_REQUEST));
//        return new UserPojo(user);
//    }
//}
