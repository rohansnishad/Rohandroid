import 'package:flutter/material.dart';

import 'package:portfolio_website/Screens/home.dart';


void main() => runApp(PortfolioApp());

class PortfolioApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rohandroid',
      home:new_pg(),
    );
  }
}

