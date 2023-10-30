import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  String pageda = "dcd";
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomeState(title: "Defolt Tizimi", titles:  const ["Kirish", "Daxolik nima?", "10 000 soat nazariyasi",
          "Miya haiqda afsonalar", "Ong uchun mashiqlar", "Konsentrasiya", "SHaxsiy Effektivlik", "Defolt tizimi", "Defolt Tizmini Ishlatish algoritmi",
        "Dak Xol Katalizator so'zlari", "Kuchaytruvchilar 2", "Defolt tizimi bilan ishlavchi odamlarnig hayotiy hikoyalari"]),
        '/0' : (context) => Page(title: "Kirish"),
        '/1' : (context) => Page(title: "Daxolik nima?", filePath: "assets/book/daxoliknima.txt"),
        '/2' : (context) => Page(title: "10 000 soat nazariyasi", filePath: "assets/book/unming.txt"),
        '/3' : (context) => Page(title: "Miya Haqida Afsonalar", filePath: "assets/book/afsona.txt"),
        '/4' : (context) => Page(title: "Ong uchun mashiqlar", filePath: "assets/book/mashiq.txt"),
        '/5' : (context) => Page(title: "Konsentrasiya", filePath: "assets/book/konser.txt"),
        '/6' : (context) => Page(title: "SHaxsiy Effektivlik", filePath: "assets/book/efect.txt"),
        '/7' : (context) => Page(title: "Defolt tizimi", filePath: "assets/book/defolt.txt"),
        '/8' : (context) => Page(title: "Defolt Tizmini Ishlatish algoritmi", filePath: "assets/book/ishlat.txt"),
        '/9' : (context) => Page(title: "Dak Xol Katalizator so'zlari", filePath: "assets/book/dakxol.txt"),
        '/10' : (context) => Page(title: "Kuchaytruvchilar 2", filePath: "assets/book/kuchay.txt"),

        '/11' : (context) => Page(title: "Hayotiy hikoyalari", filePath: "assets/book/defoltsistema.txt"),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomeState extends StatefulWidget {
  String title;
  List<String> titles;
  MyHomeState({this.title = "App Title", this.titles = const []});

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
            // Text("Blah"),
          ],
        ),
      ),
      appBar: AppBar(title: Text(widget.title)),
      body: ListView.builder(
        itemCount: widget.titles.length.toInt(),
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
              title: Text(widget.titles[index], style: TextStyle(color: Colors.white)),
              subtitle: Text("${index+1}-bob", style: TextStyle(color: Colors.white60)),
              isThreeLine: true,
              onTap: () {Navigator.pushNamed(context, '/$index');},
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
  String filePath;
  String title;
  String info;
  Page({this.filePath = "assets/book/kirish.txt", this.title = "Title", this.info = "Subtitle"});

  @override
  _PageState createState()=> _PageState();
}

class _PageState extends State<Page>{
  String contextt = "Error Ocured";


  @override
  void initState() {
    super.initState();
    getContent(widget.filePath);
  }

  Future<void> getContent(String filePath) async {
    String content = await rootBundle.loadString(filePath);
    setState(() {
      contextt = content;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
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
            margin: EdgeInsets.all(10.0),

            child: Text(contextt, style: TextStyle(fontSize: 17)),
          ),
        ],
      ),
    );
  }
}