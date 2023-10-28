import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomeState(),
        '/kirish' : (context) => Page()
      },
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomeState extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHomeState> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('Davronbek Turdiyev'),
              accountEmail: Text('davronbekturdiyev@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("assets/images/bro.jpeg"),
              ),
            ),
            Text("Blah"),
          ],
        ),
      ),
      appBar: AppBar(title: const Text("Default Tizimi")),
      body: ListView.builder(
        itemCount: 1,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: ListTile(
              splashColor: Colors.white,
              hoverColor: Colors.amber,
              tileColor: Colors.blueAccent,
              leading: const CircleAvatar(
                backgroundColor: Colors.white54,
                child: Icon(Icons.book, color: Colors.white),
              ),
              title: Text("Blah $index", style: TextStyle(color: Colors.white)),
              subtitle: const Text("Subtitle", style: TextStyle(color: Colors.white60)),
              isThreeLine: true,
              onTap: () {Navigator.pushNamed(context, '/kirish');},
              minLeadingWidth: 10.0,
              minVerticalPadding: 10.9,
            ),
          );
        },
      ),
    );
  }
}

class Page extends StatefulWidget
{
  @override
  _PageState createState()=> _PageState();
}

class _PageState extends State<Page>{
  String contextt = "Blah";
  String path = " ";
  String title = " ";


  _PageState({this.title = "Title", this.path = "path"});

  @override
  void initState() {
    super.initState();
    getContent();
  }

  Future<void> getContent() async {
    String content = await rootBundle.loadString("assets/book/kirish.txt");
    setState(() {
      contextt = content;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushNamed(context, '/');
          },
        ),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            margin: edge,
            child: Text(contextt),
          ),
        ],
      ),
    );
  }
}