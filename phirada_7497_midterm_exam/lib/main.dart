import 'package:flutter/material.dart';
import 'screens/first_screen.dart';
import 'screens/courses_display.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Stateful Widget Demo",
    home: WidgetsDemo(),
  ));
}
// void main() {
//   runApp(MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: "Widget Demo",
//       home: Scaffold(
//           appBar: AppBar(title: const Text("DME Courses")),
//           body: const BasicListView())));
// }
