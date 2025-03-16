import 'package:developer_hub/design/background_widget.dart';
import 'package:developer_hub/home_screen.dart';
import 'package:developer_hub/validation_verification/validation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            BackgroundWidget(),
            Align(
                alignment: Alignment.bottomCenter,
                child: SingleChildScrollView(
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.6,
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Column(
                      children: [
                        Center(child: Image.asset("assets/images/user.jpg", height: 80,)),
                        SizedBox(height: 40,),
                        Form(
                          key: _formKey,
                          child: Column(
                            children: [
                              TextFormField(
                                controller: emailController,
                                decoration: InputDecoration(
                                  labelText: "Email",
                                  border: InputBorder.none,
                                  filled: true,
                                  fillColor: Color(0xfff3f3f4),
                                ),
                                validator:(value) => WValidator.validateEmail(value),
                              ),
                              SizedBox(height: 30,),
                              TextFormField(
                                controller: passwordController,
                                obscureText: _isObscure,
                                decoration: InputDecoration(
                                  labelText: "Password",
                                  border: InputBorder.none,
                                  filled: true,
                                  fillColor: Color(0xfff3f3f4),
                                  suffixIcon: IconButton(
                                    icon: Icon(
                                      _isObscure ? Icons.visibility_off : Icons.visibility,
                                      color: Colors.grey,
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        _isObscure = !_isObscure;
                                      });
                                    },
                                  ),
                                ),
                                validator:(value) => WValidator.validatePassword(value),
                              ),
                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: TextButton(
                              onPressed: (){},
                              child: Text("Forget Password?",
                                style: GoogleFonts.abel(
                                  fontSize: 15,
                                  color: Colors.black,
                                ),)),
                        ),
                        SizedBox(height: 10,),
                        TextButton(
                            onPressed: (){
                              if(_formKey.currentState!.validate()) {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
                              }
                            },
                            child: Text("Login",
                            style: GoogleFonts.aclonica(
                              fontSize: 35,
                              color: Colors.black,
                            ),)),

                      ]
                      ),
                    )),
                ))
          ],
        )
    );
  }
}
