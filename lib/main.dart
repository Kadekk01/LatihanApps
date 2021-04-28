import 'package:flutter/material.dart';
 
// void main() {
//   runApp(MyApp());
// }
 
void main() => runApp(MyApp());
class MyApp extends StatefulWidget {
 @override
 State<StatefulWidget> createState() {
   return _MyAppState();
 }
}
class _MyAppState extends State<MyApp> {
 var questionIndex = 0;
 
 void _answerQuestion() {
   setState(() {
     _questionIndex = _questionIndex + 1;
   });
   print(_questionIndex);
 }
 
 @override
 Widget build(BuildContext context) {
   var questions = [
      'Apa warna favorit anda?',
     'apa peliharaan favorit anda?',
   ];
   return MaterialApp(
     home: Scaffold(
       appBar: AppBar(
         title: Text('Aplikasi Quiz'),
       ),
       body: Column(
         children: [
           Text(
             questions[questionIndex],
           ),
           ElevatedButton(
             child: Text('jawab 1'),
             onPressed: answerQuestion,
           ),
           ElevatedButton(
             child: Text('jawab 2'),
             onPressed: () => print('jawab 2 dipilih!'), // ini akan muncul pada debug console di visual code
           ),
           ElevatedButton(
             child: Text('jawab 3'),
             onPressed: () {
               // ...
               print('jawab 3 dipilih');
             },
           ),
         ],
       ),
     ),
   );
 }
}
