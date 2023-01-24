
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen ({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() =>_State();

}
class _State extends State<HomeScreen> {
  TextEditingController email = new TextEditingController();
  TextEditingController password = new TextEditingController();
  bool hidepassword = true;
  final form = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(text: "Home", icon: Icon(Icons.home),),
                Tab(text: "Phone", icon: Icon(Icons.phone),),

              ],

            ),
          ),
          body: TabBarView(
            children: [
              Text("Home Tab Clicked"),
              Text("Phone Tab Clicked"),
            ],
          ),

        ));
  }


/*

             // children: [
              //  Image.asset(
                //  "assests/images/images (1).png",
                //  height: 100,
                //  width: 100,
                //),
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
                        SnackBar(content: Text("SnackBar Login Success"))
                    );
                    Navigator.of(context).pushNamed("/home");
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
                            builder: (BuildContext context) => HomeScreen(),
                          ));
                      Navigator.of(context).pushNamed("/register");
                    },
                    child: Text("Register Now")) // ElevatedButton
              ],
            ),
          )),
    ); // Column

              */
}
