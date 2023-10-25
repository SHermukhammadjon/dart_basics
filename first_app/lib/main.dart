import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.amber),
      home: MyStateFull(0),
    );
  }
}

class MyStateFull extends StatefulWidget {
  int n = 0;
  MyStateFull(this.n, {super.key});

  void add() {
    n++;
  }

  @override
  MyStateFullWidget createState() => MyStateFullWidget();
}

class MyStateFullWidget extends State<MyStateFull> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("My app")),
        // floatingActionButton: FloatingActionButton(
        //     onPressed: () {
        //       setState(() {
        //         widget.n++;
        //       });
        //     },
        // child: const Icon(Icons.add)),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text("Butooon Pressed time:",
                        style: TextStyle(fontSize: 25.0, color: Colors.blue)),
                  ]),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("${widget.n}",
                        style: TextStyle(
                            fontSize: 30.0,
                            color: widget.n >= 0 ? Colors.green : Colors.red)),
                  ]),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                        margin: EdgeInsets.all(16.0),
                        child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                widget.n--;
                              });
                            },
                            child: const Icon(Icons.remove))),
                    Container(
                        margin: EdgeInsets.all(16.0),
                        child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                widget.n++;
                              });
                            },
                            child: const Icon(Icons.add))),
                  ])
            ]));
  }
}
