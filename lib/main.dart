import 'package:flutter/material.dart';
import 'package:mindful_stock/config/colors.dart';
import 'package:mindful_stock/pages/first_page.dart';
import 'package:mindful_stock/pages/second_page.dart';
import 'package:mindful_stock/pages/third_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MindfulStock',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: [
          FirstPage(),
          SecondPage(),
          ThirdPage(),

          // Center(child: Text('4')),
          // Center(child: Text('5')),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        currentIndex: currentIndex,
        iconSize: 24,
        unselectedItemColor: StockColor.grey2,
        selectedItemColor: StockColor.keycolor,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: '홈'),
          BottomNavigationBarItem(icon: Icon(Icons.analytics), label: '성향분석'),
          BottomNavigationBarItem(icon: Icon(Icons.menu_book), label: '명언모음'),
          // BottomNavigationBarItem(icon: Icon(Icons.add), label: '홈'),
          // BottomNavigationBarItem(icon: Icon(Icons.add), label: '홈'),
        ],
      ),
    );
  }
}

// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   int currentIndex = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: IndexedStack(
//         index: currentIndex,
//         children: [
//           TossFirstPage(),
//           TossSecondPage(),
//           TossThirdPage(),
//           Text("5"),
//           Text("5"),
//         ],
//       ),
//       bottomNavigationBar: Container(
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.only(
//             topRight: Radius.circular(20),
//             topLeft: Radius.circular(20),
//           ),
//           boxShadow: [
//             BoxShadow(color: Colors.black12, spreadRadius: 0, blurRadius: 1),
//           ],
//         ),
//         clipBehavior: Clip.antiAlias,
//         child: BottomNavigationBar(
//           type: BottomNavigationBarType.fixed,
//           currentIndex: currentIndex,
//           onTap: (int newIndex) {
//             setState(() {
//               currentIndex = newIndex;
//             });
//           },
//           iconSize: 24,
//           unselectedItemColor: TossColor.grey2,
//           selectedItemColor: TossColor.bluegrey,
//           items: [
//             BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "홈"),
//             BottomNavigationBarItem(
//                 icon: Icon(Icons.add_photo_alternate), label: "혜택"),
//             BottomNavigationBarItem(
//                 icon: Icon(Icons.local_shipping_rounded), label: "송금"),
//             BottomNavigationBarItem(icon: Icon(Icons.bar_chart), label: "주식"),
//             BottomNavigationBarItem(icon: Icon(Icons.list), label: "전체"),
//           ],
//         ),
//       ),
//     );
//   }
// }
