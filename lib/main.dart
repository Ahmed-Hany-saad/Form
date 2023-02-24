// ignore_for_file: deprecated_member_use

import 'dart:html';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool setsecured = true;
  final clear = Null;
  final _fullname = TextEditingController();
  final _email = TextEditingController();
  final _phone = TextEditingController();
  final _password = TextEditingController();
  final _Confirmpassword = TextEditingController();
  @override
  // This method is rerun every time setState is called, for in
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(0),
      child: Column(
        children: [
          ClipPath(
            clipper: WaveClipperTwo(),
            child: Container(
              height: 120,
              color: Colors.purple,
              child: Center(
                child: Text(
                  "Register",
                  style: TextStyle(fontSize: 25, color: Colors.white),
                ),
              ),
            ),
          ),
          TextField(
            controller: _fullname,
            decoration: InputDecoration(
              labelText: "Full Name",
              labelStyle: TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
              filled: true,
              fillColor: Colors.black12,
              border: InputBorder.none,
              //border: OutlineInputBorder(),
              //  icon: Icon(Icons.mail),
              prefixIcon: Icon(Icons.person),
              //  suffixIcon: Icon(Icons.clear),
              suffixIcon: IconButton(
                icon: Icon(Icons.clear),
                onPressed: () {
                  _fullname.clear();
                },
              ),
              hintText: "Ahmed Hany Saad Mohamed",
              hintStyle: TextStyle(color: Colors.grey),
            ),
            // style: TextStyle(color: Colors.red),
            style: TextStyle(fontSize: 20),
            keyboardType: TextInputType.text,
            //   maxLength: 10,
            textInputAction: TextInputAction.next,
            // obscureText: true,
            //  obscuringCharacter: '.',
          ),
          SizedBox(
            height: 15,
          ),
          TextField(
            controller: _email,
            decoration: InputDecoration(
              labelText: "Email",
              labelStyle: TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
              filled: true,
              fillColor: Colors.black12,
              border: InputBorder.none,
              //border: OutlineInputBorder(),
              //  icon: Icon(Icons.mail),
              prefixIcon: Icon(Icons.email_outlined),
              //  suffixIcon: Icon(Icons.clear),
              suffixIcon: IconButton(
                icon: Icon(Icons.clear),
                onPressed: () {
                  _email.clear();
                },
              ),
              hintText: "ahhasa842@gmail.com",
              hintStyle: TextStyle(color: Colors.grey),
            ),
            // style: TextStyle(color: Colors.red),
            style: TextStyle(fontSize: 20),
            keyboardType: TextInputType.emailAddress,
            //   maxLength: 10,

            textInputAction: TextInputAction.next,
            // obscureText: true,
            //  obscuringCharacter: '.',
          ),
          SizedBox(
            height: 15,
          ),
          TextField(
            controller: _phone,
            decoration: InputDecoration(
              labelText: "Phone number",
              labelStyle: TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
              filled: true,
              fillColor: Colors.black12,
              border: InputBorder.none,
              //border: OutlineInputBorder(),
              //  icon: Icon(Icons.mail),
              prefixIcon: Icon(Icons.phone),
              //  suffixIcon: Icon(Icons.clear),
              suffixIcon: IconButton(
                icon: Icon(Icons.clear),
                onPressed: () {
                  _phone.clear();
                },
              ),
              hintText: "01121036522",
              hintStyle: TextStyle(color: Colors.grey),
            ),
            // style: TextStyle(color: Colors.red),
            style: TextStyle(fontSize: 20),
            keyboardType: TextInputType.number,
            //   maxLength: 10,
            textInputAction: TextInputAction.next,
            // obscureText: true,
            //  obscuringCharacter: '.',
          ),
          SizedBox(height: 15),
          TextField(
            controller: _password,
            decoration: InputDecoration(
              labelText: "password",
              labelStyle: TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),
              filled: true,
              fillColor: Colors.black12,
              border: InputBorder.none,
              //border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.lock),
              suffixIcon: IconButton(
                icon: setsecured == true
                    ? Icon(Icons.visibility_off)
                    : Icon(Icons.visibility),
                onPressed: () {
                  setState(() {
                    setsecured = !setsecured;
                  });
                },
              ),
            ),
            obscureText: setsecured,
            obscuringCharacter: '*',
            //maxLength: 15,
            style: TextStyle(fontSize: 20),
            textInputAction: TextInputAction.next,
          ),
          SizedBox(
            height: 15,
          ),
          // >?/30
          TextField(
            controller: _Confirmpassword,
            decoration: InputDecoration(
              labelText: "Confirm Password",
              labelStyle: TextStyle(fontSize: 20, color: Colors.black),
              filled: true,
              fillColor: Colors.black12,
              ///////////////////// border: OutlineInputBorder(),
              ///////////////////////////////    border: InputBorder.none,
              prefixIcon: Icon(Icons.key),
              suffixIcon: IconButton(
                icon: setsecured == true
                    ? Icon(Icons.visibility_off)
                    : Icon(Icons.visibility),
                onPressed: () {
                  setState(() {
                    setsecured = !setsecured;
                  });
                },
              ),
            ),
            obscureText: setsecured,
            obscuringCharacter: '*',
            //   maxLength: 15,
            style: TextStyle(fontSize: 20),

            textInputAction: TextInputAction.done,
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              print('Name:${_fullname}');
              print('Name:${_email}');
              print('Name:${_phone}');
              print('Name:${_password}');
              print('Name:${_Confirmpassword}');
            },
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              minimumSize: Size(1000.0, 50.0),
              primary: Colors.purple,
              shadowColor: Colors.purple,
              textStyle: TextStyle(fontSize: 18),
            ),
            child: Text("Regiser"),
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () {
              print('Name:${_fullname}');
              print('Name:${_email}');
              print('Name:${_phone}');
              print('Name:${_password}');
              print('Name:${_Confirmpassword}');
            },
            child: Text("Login"),
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.purple,
              textStyle: TextStyle(fontSize: 25),
              minimumSize: Size(1000.0, 50.0),
              backgroundColor: Colors.white,
              shadowColor: Colors.purple,
              side: BorderSide(width: 0.7, color: Colors.purple),
            ),
          )
        ],
      ),
    ));
  }
}
