import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop_app/pages/details_produit.dart';

class Produit extends StatefulWidget {
  @override
  _ProduitState createState() => _ProduitState();
}

class _ProduitState extends State<Produit> {
  var liste_de_produits = [
    {
      "nom": "Veste",
      "image": "images/products/blazer1.jpeg",
      "ancien_prix": 1500,
      "prix": 1200
    },
    {
      "nom": "Robe",
      "image": "images/products/dress1.jpeg",
      "ancien_prix": 900,
      "prix": 800
    },
    {
      "nom": "Veste femme",
      "image": "images/products/blazer2.jpeg",
      "ancien_prix": 1200,
      "prix": 900
    },
    {
      "nom": "Robe",
      "image": "images/products/dress2.jpeg",
      "ancien_prix": 1000,
      "prix": 800
    },
    {
      "nom": "Veste",
      "image": "images/products/blazer1.jpeg",
      "ancien_prix": 1500,
      "prix": 1200
    },
    {
      "nom": "Robe",
      "image": "images/products/dress1.jpeg",
      "ancien_prix": 900,
      "prix": 800
    },
    {
      "nom": "Veste femme",
      "image": "images/products/blazer2.jpeg",
      "ancien_prix": 1200,
      "prix": 900
    },
    {
      "nom": "Robe",
      "image": "images/products/dress2.jpeg",
      "ancien_prix": 1000,
      "prix": 800
    }

  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: liste_de_produits.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (BuildContext context, int index) {
          return Infos_par_produit(
            nom: liste_de_produits[index]["nom"],
            image: liste_de_produits[index]["image"],
            ancien_prix: liste_de_produits[index]["ancien_prix"],
            prix: liste_de_produits[index]["prix"],
          );
        });
  }
}

class Infos_par_produit extends StatelessWidget {
  final nom, image, ancien_prix, prix;

  Infos_par_produit({this.nom, this.image, this.ancien_prix, this.prix});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.2,
      child: Hero(
        tag: nom,
        child: Material(
          child: InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder:(context)=> Details_Produit(
                nom: nom,
                image: image,
                ancien_prix: ancien_prix,
                prix: prix,
              )));
            },
            child: GridTile(
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(
                    nom,
                    style: GoogleFonts.mcLaren(
                        fontWeight: FontWeight.bold, fontSize: 13),
                  ),
                  title: Text(
                    "$prix FCFA",
                    style: GoogleFonts.mcLaren(
                      color: Colors.black,
                      fontWeight: FontWeight.w200,
                      fontSize: 10, /*color: Colors.blue*/
                    ),
                  ),
                //Bloc de code à utiliser en cas de promotions ou de réductions de prix
                /*  subtitle: Text(
                    "$ancien_prix FCFA",
                    style: GoogleFonts.mcLaren(
                        color: Colors.grey,
                        fontWeight: FontWeight.w200,
                        fontSize: 10,
                        decoration: TextDecoration.lineThrough),
                  ),*/
                ),
              ),
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
