
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpPage extends StatefulWidget{
  const SignUpPage({super.key});
  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage>{
  bool rememberMe = false;


  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return Colors.purple;
    }
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.person,
                  size: 100,
                ),
                const SizedBox(height: 30),
                //Sign Up your account
                  Text('Sing Up Your Account Here!',
                    style: GoogleFonts.bebasNeue(
                      fontSize: 40,
                    ),
                  ),

                const SizedBox(height: 50),
                //user name
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.white) ,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'User Name',
                          border: InputBorder.none
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                //email
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        border: Border.all(color: Colors.white) ,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: 'User Email',
                            border: InputBorder.none
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),

                //phone number
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        border: Border.all(color: Colors.white) ,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: TextField(
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            hintText: 'Phone',
                            border: InputBorder.none
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                //password
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        border: Border.all(color: Colors.white) ,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: 'Password',
                            border: InputBorder.none
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                //confirm pass
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        border: Border.all(color: Colors.white) ,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: 'Confirm Password',
                            border: InputBorder.none
                        ),
                      ),
                    ),
                  ),
                ),
                //agree
                const SizedBox(height: 10), //SizedBox
                /** Checkbox Widget **/
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Row(
                    children: [
                      Checkbox(
                        checkColor: Colors.white,
                        fillColor: MaterialStateProperty.resolveWith(getColor),
                        value: rememberMe,
                        onChanged: (bool? value) {
                          setState(() {
                            rememberMe = value!;
                          });
                        },
                      ),
                      const Text('Agree Term and Condition',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold
                        ),)
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                //confirm btn
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                        color: Colors.deepPurple,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: const Center(
                      child: Text(
                          'Sign Up',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ),
                  ),
                ),
              ],


            ),
          ),
        ),

      ),
    );
  }

}