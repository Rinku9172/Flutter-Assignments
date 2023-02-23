import 'package:flutter/material.dart';

class a2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return (MyState());
  }
}

class MyState extends State<a2> {
  var myController1 = TextEditingController();
  var myController2 = TextEditingController();
  String msg = '';
  var username = 'rinku';
  var password = 'jat';
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Log in Assignment'),
        ),
        body: Column(children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: TextField(
              controller: myController1,
              decoration: InputDecoration(
                labelText: 'Username',
                border: OutlineInputBorder(
              borderSide: BorderSide(
                  width: 3, color: Colors.greenAccent),
            ),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    width: 3, color:Color.fromARGB(255, 230, 225, 231)))
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: TextField(
              controller: myController2,
              decoration: InputDecoration(
                labelText: 'Password',
                 border: OutlineInputBorder(
              borderSide: BorderSide(
                  width: 3, color: Colors.greenAccent),
            ),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                    width: 3, color:Color.fromARGB(255, 230, 225, 231)))
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: ElevatedButton(
              style: TextButton.styleFrom(backgroundColor:Colors.cyan,
              foregroundColor: Colors.white,
              elevation: 10),
                onPressed: (() {
                  setState(() {
                    username = myController1.text;
                    password = myController2.text;
                    if (username == 'rinku' && password == 'jat') {
                      msg = 'Valid';
                    } else {
                      msg = 'Invalid';
                    }
                  });
                }),
                child: Text('Login')),
          ),
          Padding(padding: EdgeInsets.all(10),
          child: Text(msg),
          )
        ]
        ),
      ),
    ));
  }
}
