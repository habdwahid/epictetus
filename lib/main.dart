import 'package:epictetus/main_screen.dart';
import 'package:epictetus/model/posts.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    Navigator.pop(context);
  }

  static final List<Widget> _widgetOptions = <Widget>[
    MainScreen(postLists: postLists),
    MainScreen(
        postLists:
            postLists.where((post) => post.category == 'UI DESIGN').toList()),
    MainScreen(
        postLists:
            postLists.where((post) => post.category == 'FRONT-END').toList()),
    MainScreen(
        postLists:
            postLists.where((post) => post.category == 'BACK-END').toList()),
    MainScreen(
        postLists: postLists
            .where((post) =>
                post.category != 'UI DESIGN' &&
                post.category != 'FRONT-END' &&
                post.category != 'BACK-END')
            .toList()),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff374151),
          centerTitle: true,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(4.0),
                child: Container(
                  color: const Color(0xff4b5563),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12.0,
                    vertical: 6.0,
                  ),
                  child: const Text(
                    'E',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Source Sans 3',
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 12.0),
              const Text(
                'Epictetus',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                ),
              )
            ],
          ),
        ),
        backgroundColor: const Color(0xff374151),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: _widgetOptions[_selectedIndex],
              ),
            ],
          ),
        ),
        drawer: Drawer(
          backgroundColor: const Color(0xff374151),
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              ListTile(
                leading: const Icon(Icons.home),
                onTap: () {
                  _onItemTapped(0);
                },
                selected: _selectedIndex == 0,
                title: const Text(
                  'Home',
                  style: TextStyle(color: Color.fromRGBO(255, 255, 255, 0.6)),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.design_services),
                onTap: () {
                  _onItemTapped(1);
                },
                selected: _selectedIndex == 1,
                title: const Text(
                  'UI Design',
                  style: TextStyle(color: Color.fromRGBO(255, 255, 255, 0.6)),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.view_comfortable),
                onTap: () {
                  _onItemTapped(2);
                },
                selected: _selectedIndex == 2,
                title: const Text(
                  'Front-End',
                  style: TextStyle(color: Color.fromRGBO(255, 255, 255, 0.6)),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.data_object),
                onTap: () {
                  _onItemTapped(3);
                },
                selected: _selectedIndex == 3,
                title: const Text(
                  'Back-End',
                  style: TextStyle(color: Color.fromRGBO(255, 255, 255, 0.6)),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.other_houses),
                onTap: () {
                  _onItemTapped(4);
                },
                selected: _selectedIndex == 4,
                title: const Text(
                  'Lainnya',
                  style: TextStyle(color: Color.fromRGBO(255, 255, 255, 0.6)),
                ),
              ),
            ],
          ),
        ),
      ),
      theme: ThemeData(
        fontFamily: 'Patrick Hand',
        cardTheme: const CardTheme(
          color: Colors.transparent,
          shadowColor: Colors.transparent,
        ),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      title: 'Epictetus',
    );
  }
}
