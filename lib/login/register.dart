import 'package:flutter/material.dart';

class RegisterNewPage extends StatefulWidget {
  const RegisterNewPage({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<RegisterNewPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('asserts/register.png'), fit: BoxFit.cover
        )
      ),
      child: Scaffold(
        appBar : AppBar(
            backgroundColor: Colors.transparent,
            elevation : 0
        ),
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: const EdgeInsets.only(left: 35,top: 20),
              child: const Text("Create\nAccount",
              style: TextStyle(color: Colors.white,fontSize: 33),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(top:MediaQuery.of(context).size.height*0.3,
                  right: 35,left: 35),
                child: Column(
                  children: [
                   TextField(
                        decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            color: Colors.black
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                            color: Colors.white
                            ),
                        ),
                        hintText: "Name",
                        hintStyle: TextStyle(color: Colors.white),
                        border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                   ),
                     const SizedBox(height: 16),
                     TextField(
                      decoration: InputDecoration(
                            focusedBorder: OutlineInputBorder(
                                                  borderRadius: BorderRadius.circular(10),
                                                  borderSide: BorderSide(
                                                    color: Colors.black
                                                  ),
                                                ),
                                                enabledBorder: OutlineInputBorder(
                                                    borderRadius: BorderRadius.circular(10),
                                                    borderSide: BorderSide(
                                                    color: Colors.white
                                                    ),
                                                ),
                          hintText: "Enter Phone Number",
                             hintStyle: TextStyle(color: Colors.white),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                     TextField(
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(10),
                                                borderSide: BorderSide(
                                                  color: Colors.black
                                                ),
                                              ),
                                              enabledBorder: OutlineInputBorder(
                                                  borderRadius: BorderRadius.circular(10),
                                                  borderSide: BorderSide(
                                                  color: Colors.white
                                                  ),
                                              ),
                          hintText: "Password",
                             hintStyle: TextStyle(color: Colors.white),
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
                              Navigator.pushNamed(context, 'login');
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
