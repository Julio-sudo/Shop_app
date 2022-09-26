import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop_app/composants/produits.dart';
import 'package:shop_app/pages/accueil.dart';
import 'package:shop_app/pages/connexion.dart';
import 'package:shop_app/pages/panier.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Mon App",
      debugShowCheckedModeBanner: false,
      home: Connexion(),
    );
  }
}




