import 'dart:io';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyAppp());
}

class MyAppp extends StatelessWidget {
  MyAppp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Defolt Tizim",
        initialRoute: '/page',
        routes: {
          '/home': (context) => const MyHomePage(),
          '/page': (context) => const Page()
        });
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          child: ListView(padding: EdgeInsets.zero, children: <Widget>[
            const UserAccountsDrawerHeader(
                accountName: Text('Temirov SHermukhammad'),
                accountEmail: Text('temirovshermukhammad@gmail.com'),
                currentAccountPicture: CircleAvatar(
                  backgroundImage:
                      NetworkImage("https://picsum.photos/200/200?random=1000"),
                )),
            const Text("Blah")
          ]),
        ),
        appBar: AppBar(title: const Text("Hello")),
        body: ListView.builder(
            itemCount: 15,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                  margin: EdgeInsets.all(10),
                  width: 50,
                  height: 100,
                  color: Colors.blueAccent,
                  child: ListTile(
                    leading: Image.network(
                      "https://picsum.photos/200/200?random=${100 + index}",
                    ),

                    //  Image.network(
                    //     "https://picsum.photos/200/200?random=${100 + index}"),
                    title: Text("Blah $index"),
                    subtitle: const Text("Subtitle"),
                    onTap: () => Navigator.pushNamed(context, '/page'),
                  ));
            }));
  }
}

class Page extends StatelessWidget {
  const Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text("Ok ok"),
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pushNamed(context, '/home');
              },
            )),
        body: ListView(children: const  <Widget>
        [
          Text("Blahe"),
          Text("Blahe"),
          Text("Blahe")
        ])
        );
  }
}
