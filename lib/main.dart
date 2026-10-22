import 'package:flutter/material.dart';
import 'package:tajminchy29964g/calculator.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
  return MaterialApp( 
    theme: ThemeData.light(),
    debugShowCheckedModeBanner: false,
    home: CalculatorPage(),);//full app a cng korle aikhane korbo

  }

}