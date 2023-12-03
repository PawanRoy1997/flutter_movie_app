import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class YearsBackScreen extends StatefulWidget{
  final VoidCallback nextPage;
  final VoidCallback prevPage;

  const YearsBackScreen({super.key, required this.nextPage, required this.prevPage});

  @override
  _YearBackScreenState createState() => _YearBackScreenState();
}

class _YearBackScreenState extends State<YearsBackScreen>{
  @override
  Widget build(BuildContext context) => const Scaffold();
}