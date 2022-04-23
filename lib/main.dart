import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.

  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // To remove debug sign on the emulator
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[800],
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.grey[600],
          title: Text(
            'Personal ID',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              counter += 1;
            });
          },
          child: Icon(Icons.add),
          backgroundColor: Colors.grey[800],
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            CircleAvatar(
              radius: 50.0,
              backgroundImage: AssetImage('images/omoo2.jpg'),
            ),
            Divider(
              height: 80.0,
            ),
            Text(
              'NAME',
              style: TextStyle(
                letterSpacing: 2.0,
                color: Colors.grey,
                fontSize: 20.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Kolawole Taiwo Victoria',
              style: TextStyle(
                letterSpacing: 1.0,
                color: Colors.amberAccent,
                fontSize: 25.0,
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'TRAINING LEVEL',
              style: TextStyle(
                letterSpacing: 2.0,
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              '$counter',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.amber,
              ),
            ),
            SizedBox(height: 20.0),
            Row(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.blueGrey,
                ),
                SizedBox(width: 20.0),
                Text(
                  'taiwokola2020@gmail.com',
                  style: TextStyle(
                    letterSpacing: 1.0,
                    color: Colors.blueGrey[300],
                  ),
                ),
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
