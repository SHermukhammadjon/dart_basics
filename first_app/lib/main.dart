import 'dart:io';

import 'package:flutter/material.dart';


void main(List<String> args) {
  runApp(MyAppp());
}

class MyAppp extends StatelessWidget
{
  MyAppp({super.key});

  @override
  Widget build(BuildContext context)
    {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Defolt Tizim",
      initialRoute: '/home',
      routes: {
        '/home' : (context) => MyHomePage()
      }

      );
    }
    
  }

class MyHomePage extends StatelessWidget
{
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context)
    {
      return Scaffold(
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              const UserAccountsDrawerHeader(
                accountName: Text('John Doe'),
                accountEmail: Text('johndoe@example.com'),
                currentAccountPicture: CircleAvatar(
                backgroundImage: Ima
              ),
            ),
            ListTile(
              title: Text('Item 1'),
              onTap: () {
                // Handle item 1 tap
              },
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: () {
                // Handle item 2 tap
              },
            ),
          ],
        ),),



        appBar: AppBar(title: const Text("Hello")),
        // body: ListView.builder(
        //   itemBuilder: ),
      );
    }
}
