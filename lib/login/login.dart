import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginNewPage extends StatefulWidget {
  const LoginNewPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginNewPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('asserts/login.png'), fit: BoxFit.cover
        )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 35,top: 170),
              child: const Text("Welcome\nBack",
              style: TextStyle(color: Colors.white,fontSize: 33),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(top:MediaQuery.of(context).size.height*0.5,
                  right: 35,left: 35),
                child: Column(
                  children: [
                     TextField(
                      decoration: InputDecoration(
                          fillColor: Colors.grey.shade100,
                          filled: true,
                          hintText: "Enter Phone Number",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                     TextField(
                      decoration: InputDecoration(

                        fillColor: Colors.grey.shade100,
                          filled: true,
                          hintText: "Password",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10)
                        )
                      ),
                      obscureText: true,
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:  [
                         const Text(
                          "Sign In",
                          style: TextStyle(
                              color: Color(0xff4c505b),
                              fontWeight: FontWeight.w700,
                              fontSize: 26),
                        ),
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: const Color(0xff4c505b),
                          child: IconButton(
                              color: Colors.white,
                              onPressed: () {},
                              icon: const Icon(Icons.arrow_forward)),

                        )
                      ],
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(onPressed: (){
                          Navigator.pushNamed(context, 'register');
                        },
                            child: const Text('Sign Up',
                              style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontSize: 18,
                          color: Color(0xff4c505b),
                             ),
                            ),
                        ),
                        TextButton(onPressed: (){},
                            child: const Text('Forgot Password',
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  fontSize: 18,
                                  color: Color(0xff4c505b),
                              ),
                            ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],

          ),
      ),
    );
  }
}
