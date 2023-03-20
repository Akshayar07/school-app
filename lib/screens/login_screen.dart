import 'package:flutter/material.dart';
import 'class_detail_page.dart';
import 'home_page.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffece9e8),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Image(
                  image: AssetImage('assets/orange.png'),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  'Login',
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Color(0xffFF5200)),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: TextFormField(
                    cursorColor: const Color(0xffFF5200),
                    decoration: const InputDecoration(
                        labelText: 'User Name',
                        labelStyle: TextStyle(color: Color(0xffFF5200)),
                        focusedBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(width: 1, color: Color(0xffFF5200))),
                        floatingLabelStyle: TextStyle(color: Color(0xffFF5200)),
                        enabledBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(width: 2, color: Color(0xffFF5200)),
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: TextFormField(
                    obscureText: _isObscure,
                    cursorColor: const Color(0xffFF5200),
                    decoration: InputDecoration(
                        suffixIcon: IconButton(
                          icon: Icon(
                            _isObscure
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: Color(0xffFF5200),
                          ),
                          onPressed: () {
                            setState(() {
                              _isObscure = !_isObscure;
                            });
                          },
                        ),
                        labelText: 'Password',
                        labelStyle: const TextStyle(color: Color(0xffFF5200)),
                        focusedBorder: const UnderlineInputBorder(
                            borderSide:
                                BorderSide(width: 1, color: Color(0xffFF5200))),
                        floatingLabelStyle: TextStyle(color: Color(0xffFF5200)),
                        enabledBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(width: 2, color: Color(0xffFF5200)),
                        )),

                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => HomePage()));
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xffFF5200),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    child: const Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 50),
                      child: Text(
                        'Submit',
                        style: TextStyle(fontSize: 16),
                      ),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
