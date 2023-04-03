import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:red_business247/models/login_model.dart';
import 'package:red_business247/screens/home_screen.dart';
import 'package:red_business247/screens/privacy_policy.dart';
import 'package:red_business247/screens/signup_screen.dart';
import 'package:red_business247/screens/terms_conditions.dart';
import 'package:red_business247/utils/const.dart';
import 'package:red_business247/widgets/custom_button.dart';
import 'package:red_business247/widgets/custom_text_form_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  TextEditingController _emailController = TextEditingController();

  TextEditingController _passwordController = TextEditingController();

  var _password1Visible = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 35),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: SingleChildScrollView(
            child: Form(
              key: _formkey,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 50),
                      child: Image.asset("assets/images/red_business.PNG"),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Enter your email \*",
                        style:
                            keywordTextStyle.copyWith(color: Colors.blueGrey),
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    CustomTextFormField(
                      controller: _emailController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Please enter your email";
                        }
                        if (!value.contains("@")) {
                          return "Invalid Email ";
                        }
                      },
                      hintText: "abc@gmail.com",
                      hintStyle:
                          hintTextStyle.copyWith(color: Color(0xffFF6B6B)),
                      preffixIcon: Icon(
                        Icons.email_outlined,
                        color: Color(0xffFF6B6B),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Password \*",
                        style:
                            keywordTextStyle.copyWith(color: Colors.blueGrey),
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    CustomTextFormField(
                      controller: _passwordController,
                      obscureText: _password1Visible,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Please enter your password";
                        }
                        if (value.length < 5) {
                          return "Your password is too short";
                        }
                      },
                      preffixIcon: Icon(
                        Icons.lock_outline,
                        color: Color(0xffFF6B6B),
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _password1Visible == false
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: Color(0xffFF6B6B),
                        ),
                        onPressed: () {
                          setState(() {
                            _password1Visible = !_password1Visible;
                          });
                        },
                      ),
                      hintText: 'Password',
                      hintStyle:
                          hintTextStyle.copyWith(color: Color(0xffFF6B6B)),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Text(
                        "Forgot Password?",
                        style: keywordTextStyle.copyWith(
                            color: Color(0xffFF6B6B),
                            fontWeight: FontWeight.w900,
                            fontSize: 18),
                      ),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    CustomButton(
                      onTap: () {
                        if (_formkey.currentState!.validate()) {
                          print("All fields are valid");
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => HomeScreen()));
                          final contact = LoginInfo(
                              email: _emailController.text,
                              password: _passwordController.text);
                          print("${_emailController.text}");
                          print("${_passwordController.text}");
                        } else {
                          print("Something wrong");
                        }
                      },
                      buttonText: 'Login',
                      myTextStyle: myTextStyle.copyWith(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Text(
                      "OR",
                      style: hintTextStyle.copyWith(color: Colors.blueGrey),
                    ),
                    SizedBox(
                      height: 24,
                    ),
                    Container(
                      height: 50,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.blueGrey[100]),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 35),
                            child: Container(
                              height: 30,
                              width: 30,
                              child: Image.asset(
                                "assets/images/google_logo.png",
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          Text(
                            "Login with Google",
                            style: myTextStyle.copyWith(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Colors.black87),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    RichText(
                        text: TextSpan(
                            text: "New to Logistics? ",
                            style: keywordTextStyle.copyWith(
                                color: Colors.blueGrey),
                            children: [
                          TextSpan(
                              text: 'Register',
                              style: keywordTextStyle.copyWith(
                                  color: Color(0xffFF6B6B)),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => SignUpScreen()));
                                })
                        ]))
                  ],
                ),
              ),
            ),
          ),
        ),
      )),
    );
  }
}
