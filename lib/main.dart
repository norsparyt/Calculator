import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import './UI/home.dart';

void main ()
{
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "calculator",
    home: new home(),
  ));
}