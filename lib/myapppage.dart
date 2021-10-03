import 'package:flutter/material.dart';
class MyAppPage extends StatefulWidget {
  @override
  _MyAppPageState createState() => _MyAppPageState();
}

class _MyAppPageState extends State<MyAppPage> {
  String _email = "";
  final emailEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "This is my first App",
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: TextField(
                  controller: emailEditingController,
                  onChanged: (text){
                    this.setState(() {
                      _email = text;
                    });
                  },
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(const Radius.circular(30)
                      ),),
                    labelText: " Enter your name"
                  ),
                ),
              ),
              Text(
                "See result here: ", style: TextStyle(fontSize: 35, color: Colors.blueAccent),
              ),
              Text(
                'This is line 2', style: TextStyle(fontSize: 35, color: Colors.redAccent),
              ),
              Text(
                'This is line 3', style: TextStyle(fontSize: 35, color: Colors.purpleAccent),
              ),
            ],

          ),
        ),
      ),
    );
  }
}
