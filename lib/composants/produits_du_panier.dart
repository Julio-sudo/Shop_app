import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class Produits_du_panier extends StatefulWidget {
  @override
  _Produits_du_panierState createState() => _Produits_du_panierState();
}

class _Produits_du_panierState extends State<Produits_du_panier> {
  var liste_de_produits_du_panier = [
    {
      "nom": "Veste",
      "image": "images/products/blazer1.jpeg",
      "ancien_prix": 1500,
      "prix": 1200,
      "quantité":1
    },
    {
      "nom": "Robe",
      "image": "images/products/dress1.jpeg",
      "ancien_prix": 900,
      "prix": 800,
      "quantité":1
    },
    {
      "nom": "Veste femme",
      "image": "images/products/blazer2.jpeg",
      "ancien_prix": 1200,
      "prix": 900,
      "quantité":1
    },
    {
      "nom": "Robe",
      "image": "images/products/dress2.jpeg",
      "ancien_prix": 1000,
      "prix": 800,
      "quantité":3
    },
  ];

  @override
  Widget build(BuildContext context) {
    return
    ListView.builder(
        itemCount:liste_de_produits_du_panier.length,
        itemBuilder: (context,index){
          return
          Chaque_produit_du_panier(
            nom:liste_de_produits_du_panier[index]["nom"],
            image: liste_de_produits_du_panier[index]["image"],
            prix: liste_de_produits_du_panier[index]["prix"],
            quantite: liste_de_produits_du_panier[index]["quantité"],
          );
        });
  }
}


class Chaque_produit_du_panier extends StatelessWidget {
  final nom;
  final image;
  final prix;
  final quantite;
  Chaque_produit_du_panier({this.nom,this.image,this.prix,this.quantite});
  @override
  Widget build(BuildContext context) {
    return
      Card(
        elevation: 0.5,
        child: ListTile(
        leading: Image.asset(image, width: 80.0,height: 80.0,),
          title: Text(nom, style: GoogleFonts.mcLaren(),),
          subtitle: Column(
            children: [
              Row(
                children: [
                  Padding(padding: EdgeInsets.all(4.0),
                  child: Text("Prix Unitaire: ", style: GoogleFonts.mcLaren(fontSize: 14),),),
                  Padding(padding: EdgeInsets.all(2.0),
                    child: Text(prix.toString(), style: GoogleFonts.mcLaren(fontSize: 14),),),
                  Padding(padding: EdgeInsets.fromLTRB(10.0, 4.0 , 4.0 , 4.0),
                    child: Text("Qté:  ", style: GoogleFonts.mcLaren(fontSize: 14),),),
                  Padding(padding: EdgeInsets.all(2.0),
                    child: Text(quantite.toString(), style: GoogleFonts.mcLaren(fontSize: 14),),),
                ],
              )
            ],
          ),
        ),
      );
  }
}

