// import 'package:flutter/material.dart';
import 'dart:io';

// class MyList extends StatelessWidget {
//   const MyList({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       itemCount: 20,
//       itemBuilder: (context, index) => Container(
//           child: const Card(
//               color: Colors.blueAccent,
//               elevation: 30,
//               margin: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
//               child: ListTile(
//                 leading: CircleAvatar(child: Icon(Icons.abc)),
//                 title: Text("test"),
//                 subtitle: Text("Kirish subtile"),
//                 trailing: Icon(Icons.add_circle_outline_outlined),
//               ))),
//     );
//   }
// }

class Page {
  String title, info, contextFilePath, context = "Null";
  Icon icon;

  Page(
      {this.title = "Tile",
      this.info = "Info",
      this.contextFilePath = "book/kirish.txt",
      this.icon = const Icon(Icons.abc)});

  String getContext() {
    File file = File(contextFilePath);
    if (file.existsSync()) {
      return file.readAsStringSync();
    }
    return "Null";
  }
}

// class Book {
//   String path;
//   List<String> files;
//   Book(this.path, {this.files = const []});

//   List<Widget> getPages() {
//     String file;
//     for (file in files) {
//       File file = File();
//     }
//   }
// }

void main()
{
  print("blah");
}
