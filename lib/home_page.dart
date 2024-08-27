import 'package:assignment12/flex_color_picker.dart';
import 'package:assignment12/flutter_spinkit.dart';
import 'package:assignment12/package_chewie.dart';
import 'package:assignment12/questionere.dart';
import 'package:assignment12/shimmer_package.dart';
import 'package:flutter/material.dart';
import 'dropdown_button2.dart';
import 'xylophone.dart';

void main() => runApp(
      const MaterialApp(home: MyApp()),
    );

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

List<Map> items = [
  {'title': 'dropdown_button2', 'page': DropdownDesign()},
  {'title': 'flex_color_picker', 'page': ColorPickerPage()},
  {'title': 'flutter_spinkit', 'page': SpinKitPage()},
  {'title': 'chewie_package', 'page': ChewieVideoPlayer()},
  {'title': 'shimmer', 'page': Shimmer_Package()},
  {'title': 'audioPlayers', 'page': Xylophone()},
  {'title': 'rFlutter_Package', 'page': rFlutter_Package()},
];

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange[700],
        foregroundColor: Colors.white,
        title: Text('Laibraries App'),
      ),
      body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return Card(
              color: Colors.orange[700],
              child: ListTile(
                title: Text(
                  items[index]['title'],
                  style: TextStyle(color: Colors.white),
                ),
                trailing: IconButton(
                  onPressed: () {
                    setState(() {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (_) => items[index]['page']));
                    });
                  },
                  icon: Icon(
                    Icons.arrow_forward_ios_sharp,
                    color: Colors.white,
                  ),
                ),
              ),
            );
          }),
    );
  }
}
