import 'dart:convert';
import 'package:flutter/material.dart';
import '../screens/register.dart';
import '../widgets/custom_checkbox.dart';
import '../widgets/forgot_screen.dart';
import '../widgets/primary_btn.dart';
import 'package:http/http.dart' as http;
import 'theme.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool passwordVisible = false;
  TextEditingController user = TextEditingController();
  TextEditingController pass = TextEditingController();
  String msg ='';
  String username ='';

  Future _login() async {
    var url = Uri.parse("http://192.168.1.185/userdata/login.php");
    var response = await http.post(url, body: {
      "username": user.text,
      "password": pass.text,
    });
    var dataUser = json.decode(response.body);
    if(dataUser == "Error")
     {
       setState((){
         msg ="Sai tài khoản hoặc mật khẩu";
       });
     }
     else{
       Navigator.pushNamed(context, '/homepage');
       setState(() {
          username = dataUser[0]['username'];
          });
     }
     return dataUser;
  }
  void togglePassword() {
    setState(() {
      passwordVisible = !passwordVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(24.0, 40.0, 24.0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                  padding: EdgeInsets.only(left:40),
                  child: Text(
                    'Welcome to GOLDIE Shop',
                    style: heading2.copyWith(color: Colors.deepOrange),
                  ),),
                  
                   SizedBox(
                    height: 20,
                  ),
                  Padding(
                  padding: EdgeInsets.only(left:30),
                  child: Text(
                    'Đăng nhập',
                    style: heading2.copyWith(color: textBlack),
                  ),),
                  SizedBox(
                    height: 20,
                  ),
                  Image.asset(
                    'assets/images/accent.png',
                    width: 99,
                    height: 4,
                  ),
                ],
              ),
              SizedBox(
                height: 48,
              ),
              Form(
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: textWhiteGrey,
                        borderRadius: BorderRadius.circular(14.0),
                      ),
                      child: TextFormField(
                        controller:user,
                        decoration: InputDecoration(
                          hintText: 'Username',
                          hintStyle: heading6.copyWith(color: textGrey),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 32,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: textWhiteGrey,
                        borderRadius: BorderRadius.circular(14.0),
                      ),
                      child: TextFormField(
                        controller:pass,
                        obscureText: !passwordVisible,
                        decoration: InputDecoration(
                          hintText: 'Password',
                          hintStyle: heading6.copyWith(color: textGrey),
                          suffixIcon: IconButton(
                            color: textGrey,
                            splashRadius: 1,
                            icon: Icon(passwordVisible
                                ? Icons.visibility_outlined
                                : Icons.visibility_off_outlined),
                            onPressed: togglePassword,
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(msg, style: TextStyle(fontSize:18,color:Colors.red)),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomCheckbox(),
                  SizedBox(
                    width: 12,
                  ),
                  Text('Ghi Nhớ', style: regular16pt),
                ],
              ),
              SizedBox(
                height: 32,
              ),
              Padding(
                padding:EdgeInsets.only(left:100),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.deepOrange,),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(20, 13, 20, 13),
                    child: Text("Đăng Nhập",
                          style:TextStyle(fontSize:19,)),
                  ),
                  onPressed: (){
                    _login();
                  },
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Center(
                child: Text(
                  'Hoặc',
                  style: heading6.copyWith(color: textGrey),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: EdgeInsets.only(left:85),
                child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "Đăng nhập với Google",
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        )),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: EdgeInsets.only(left:75),
                child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "Đăng nhập với Facebook",
                          style: TextStyle(fontSize: 18, color: Colors.black),
                        )),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Chưa có tài khoản? ",
                    style: regular16pt.copyWith(color: textGrey),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => RegisterPage()));
                    },
                    child: Text(
                      'Đăng kí',
                      style: regular16pt.copyWith(color: primaryBlue),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Quên mật khẩu? ",
                    style: regular16pt.copyWith(color: textGrey),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ForgotScreen()));
                    },
                    child: Text(
                      'Lấy lại',
                      style: regular16pt.copyWith(color: primaryBlue),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}