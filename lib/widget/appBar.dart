import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppBarScreen extends StatelessWidget{
  const AppBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: const Text("Flutter App"),
          leading: IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_back),),
          actions: [
            IconButton(onPressed: (){}, icon: const Icon(Icons.file_copy))
          ],
          backgroundColor: Colors.red,
          centerTitle: false,
          foregroundColor: Colors.black,
        ),
        body: const Center(
           child: Text("Hello World",
             style: TextStyle(
               color: Colors.blue,
               fontSize: 16,
               fontWeight: FontWeight.w500,
               fontStyle: FontStyle.italic,
               decoration: TextDecoration.lineThrough
             ),
           ),
        ),
      ),
    );
  }

}