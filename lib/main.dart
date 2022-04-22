import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // To remove debug sign on the emulator
      debugShowCheckedModeBanner: false,
      // creating the app whole interface
      home: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          // The top details
          centerTitle: true,
          // To put the text in the center
          backgroundColor: Colors.purple[600],
          title: Text(
              '#1'
          ),
        ),
        // to show a test in d app
        body:  Center(
          child: Container(
            child: Text(
            'I AM A BLESSED CHILD',
            style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 35.0,
            ),
          ),
         ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){},
          child: Text(
              'Click'
          ),
          backgroundColor: Colors.deepOrangeAccent,
        ),
      ),
    );
  }
}