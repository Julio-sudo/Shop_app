//Je vais revoir cette page en utilisant le package invoiceninja du pub.dev

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop_app/composants/produits_du_panier.dart';

class Panier extends StatefulWidget {
  @override
  _PanierState createState() => _PanierState();
}

class _PanierState extends State<Panier> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: Text(
          "Mon panier",
          style: GoogleFonts.mcLaren(),
        ),
        //centerTitle: true,
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Produits_du_panier(),
      bottomNavigationBar: Container(
        color: Colors.white,
        child: Row(
          children: [
            Expanded(child: ListTile(
              title: Text("Total:", style: GoogleFonts.mcLaren(),),
              subtitle: Text("5000 CFA", style: GoogleFonts.mcLaren(),),
            )),
            Expanded(child: MaterialButton(
              color: Colors.blue,
              onPressed: (){},
              child: Text("Payer", style: GoogleFonts.mcLaren(color: Colors.white),),
            ))
          ],
        ),
      ),
    );
  }
}
