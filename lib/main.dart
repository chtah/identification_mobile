import 'package:flutter/material.dart';
import 'package:identification_mobile/all.dart';
import 'package:identification_mobile/home.dart';
import 'package:identification_mobile/search.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() {
    return _MyApp();
  }
}

class _MyApp extends State<MyApp> {
  int selectedPage = 0;
  final pageOption = [const Home(), const All(), const Search()];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              'Identification',
              style: TextStyle(color: Colors.white),
            ),
          ),
          backgroundColor: const Color.fromARGB(255, 78, 154, 255),
        ),
        body: pageOption[selectedPage],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedPage,
          onTap: (int index) {
            setState(() {
              selectedPage = index;
            });
          },
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.list_alt), label: 'All'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search')
          ],
        ),
      ),
    );
  }
}
