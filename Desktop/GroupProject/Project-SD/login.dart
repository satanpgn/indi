import 'package:acad_learn/screens/registration/Home_screen.dart';
import 'package:acad_learn/screens/registration/register.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen ({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() =>_State();

}
  class _State extends State<LoginScreen> {
  TextEditingController email = new TextEditingController();
  TextEditingController password = new TextEditingController();
  bool hidepassword = true;

  final form = GlobalKey<FormState>();
  final FirebaseAuth _auth = FirebaseAuth.instance;
  Future<void> login() async {
    try {
      final user = (await _auth.createUserWithEmailAndPassword(
        email: email.text,
        password: password.text,
      ))
          .user;
      if (user != null) {
        ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
            backgroundColor: Colors.green,
            content: Text("Login Success"))
        );
         Navigator.of(context).pushReplacementNamed("/home");
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
          (SnackBar(content: Text(e.toString())))
      );
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
          key: form,
          child: Column(
            children: [
              Image.asset(
                "assests/images/images (1).png",
                height: 100,
                width: 100,
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: TextFormField(
                  controller: email,
                  validator: (String? value){
                    if(value == null || value == "") {
                      return "Email field is Required";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      hintText: "Enter email",
                      prefixIcon: Icon(Icons.accessibility_outlined)
                  ),
                ),
              ),
              Container(
                  margin: EdgeInsets.all(10),
                  child: TextFormField(
                    controller: password,
                    validator: (String? value){
                      if(value == null || value == "") {
                        return "Password field is Required";
                      }
                      return null;
                    },
                    decoration: InputDecoration(
                        hintText: "Enter Your password",
                        prefixIcon: Icon(Icons.password),
                        suffixIcon:
                        hidepassword ?
                        InkWell(
                            onTap: () {
                              setState(() {
                                hidepassword = !hidepassword;
                              });
                            },
                            child: Icon(Icons.visibility))

                            : InkWell(
                            onTap: () {
                              setState(() {
                                hidepassword = !hidepassword;
                              });
                            },
                            child: Icon(Icons.visibility))
                    ),
                  )
              ),
               ElevatedButton(onPressed: (){
                 if(form.currentState!.validate()){
                   ScaffoldMessenger.of(context).showSnackBar(
                       SnackBar(content: Text("Login Success"))
                   );
                   // print("Pass");
                 }else{
                   print("fail");

                 }
               },
                   child: Text("Login")
               ),
              ElevatedButton(
                  onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (BuildContext context) => LoginScreen(),
                    ));
                  Navigator.of(context).pushNamed("/register");
              },
                  child: Text("Register Now")) // ElevatedButton
            ],
          ),
        )); // Column

  }
}
