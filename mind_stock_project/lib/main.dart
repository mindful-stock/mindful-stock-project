import 'package:flutter/material.dart';
import 'package:mind_stock_project/MyMBTI.dart';
import 'package:mind_stock_project/home.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Test';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  List pages = [
    HomePage(),
    MBTIpage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '마인드풀스톡',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.teal.shade200,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
          color: Colors.white,
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.settings_outlined),
            onPressed: () {},
          ),
        ],
      ),
      backgroundColor: Colors.teal.shade300,
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white70,
        selectedItemColor: Colors.teal.shade200,
        unselectedItemColor: Colors.white,
        selectedFontSize: 14,
        unselectedFontSize: 14,
        type: BottomNavigationBarType.fixed,
        onTap: _onItemTapped,
        currentIndex: _selectedIndex,
        items: [
          BottomNavigationBarItem(
            label: '홈',
            icon: Icon(Icons.home_filled),
          ),
          BottomNavigationBarItem(
            label: '성향분석',
            icon: Icon(Icons.bar_chart),
          ),
        ],
      ),
    );
  }
}
