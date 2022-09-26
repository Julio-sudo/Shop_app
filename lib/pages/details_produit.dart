import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop_app/composants/produits.dart';
import 'package:shop_app/main.dart';
import 'package:shop_app/pages/panier.dart';

import 'accueil.dart';

class Details_Produit extends StatefulWidget {
  final nom, image, ancien_prix, prix;

  Details_Produit({this.nom, this.image, this.ancien_prix, this.prix});

  @override
  _Details_ProduitState createState() => _Details_ProduitState();
}

class _Details_ProduitState extends State<Details_Produit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: GestureDetector(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return Page_Accueil();
            }));
          },
          child: Text(
            "Shopping Express",
            style: GoogleFonts.mcLaren(),
          ),
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
          IconButton(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                return Panier();
              }));
            },
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(
            height: 300.0,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(widget.image),
              ),
              footer: Container(
                alignment: Alignment.centerLeft,
                color: Colors.white.withOpacity(0.7),
                child: ListTile(
                  leading: Text(
                    widget.nom.toString(),
                    style: GoogleFonts.mcLaren(fontWeight: FontWeight.bold),
                  ),
                  title: Row(
                    children: [
                      //  Expanded(child: Text("${widget.ancien_prix.toString()} CFA",style: GoogleFonts.mcLaren(decoration: TextDecoration.lineThrough,color: Colors.grey),)),
                      Expanded(
                          child: Text(
                        "${widget.prix.toString()} CFA",
                        style: GoogleFonts.mcLaren(),
                      )),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          // En bas ici,il y a les options de choix entre la taille, la couleur et la quantité
          Row(
            children: [
              Expanded(
                child: MaterialButton(
                  onPressed: (){
                    showDialog(context: context, builder: (context){
                      return AlertDialog(
                        title: Text("Taille", style: GoogleFonts.mcLaren(),),
                        content: Text("Choisissez une taille", style: GoogleFonts.mcLaren(),),
                        actions: [
                          MaterialButton(onPressed: (){
                            Navigator.of(context).pop(context);
                          })
                        ],
                      );
                    });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.4,
                  child: Row(
                    children: [
                      Expanded(
                        child: Text("Taille", style: GoogleFonts.mcLaren(),),
                      ),
                      Expanded(
                          child: Icon(Icons.arrow_drop_down))
                    ],
                  ),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  onPressed: (){
                    showDialog(context: context, builder: (context){
                      return AlertDialog(
                        title: Text("Couleur", style: GoogleFonts.mcLaren(),),
                        content: Text("Choisissez une couleur", style: GoogleFonts.mcLaren(),),
                        actions: [
                          MaterialButton(onPressed: (){
                            Navigator.of(context).pop(context);
                          })
                        ],
                      );
                    });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.4,
                  child: Row(
                    children: [
                      Expanded(
                        child: Text("Clr", style: GoogleFonts.mcLaren(),),
                      ),
                      Expanded(
                          child: Icon(Icons.arrow_drop_down))
                    ],
                  ),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  onPressed: (){
                    showDialog(context: context, builder: (context){
                      return AlertDialog(
                        title: Text("Quantité", style: GoogleFonts.mcLaren(),),
                        content: Text("Choisissez une quantité", style: GoogleFonts.mcLaren(),),
                        actions: [
                          MaterialButton(onPressed: (){
                            Navigator.of(context).pop(context);
                          })
                        ],
                      );
                    });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.4,
                  child: Row(
                    children: [
                      Expanded(
                        child: Text("Qté", style: GoogleFonts.mcLaren(),),
                      ),
                      Expanded(
                          child: Icon(Icons.arrow_drop_down))
                    ],
                  ),
                ),
              ),
            ],
          ),

// Je veux faire une TAB BAR ici pour detailler complètement les informations sur chaque produit. Il y aura les onglets "Présentation"(nom, fonction, Précision des cas d'utilité), "Infos complémentaires"(Variétés du produit, composition ou ingrédients ou matière(s) dont est(sont) fait le produit, date de production/péremption )
          SizedBox(
            height: 15,
          ),

          Container(
            child: Row(
              children: [
                Expanded(
                  child: MaterialButton(
                    onPressed: () {},
                    color: Colors.blue,
                    textColor: Colors.white,
                    elevation: 0.4,
                    child: Row(
                      children: [
                        Center(
                            child: Text(
                              "Ajouter au panier",
                              style: GoogleFonts.mcLaren(),
                            )),
                      ],
                    ),
                  ),
                ),
                IconButton(
                    icon: Icon(Icons.add_shopping_cart, color: Colors.blue),
                    onPressed: () {}),
                IconButton(
                    icon: Icon(Icons.favorite_border, color: Colors.blue),
                    onPressed: () {})
              ],
            ),
          ),

          ListTile(
            title: Text(
              "Présentation du produit :",
              style: GoogleFonts.mcLaren(color: Colors.black,fontWeight: FontWeight.bold, decoration: TextDecoration.underline),
            ),
            subtitle: Text(
              "Ceci est un moyen/long texte ou chaque produit va se présenter.C'est à dire que le produit donne son nom et prénom, sa fonction en insistant vraiment sur un aspect où il peut etre util au client.",
              style: GoogleFonts.mcLaren(color: Colors.black),
            ),
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(12, 5, 5, 5),
                child: Text(
                  "Nom du produit :",
                  style: GoogleFonts.mcLaren(color: Colors.black,fontWeight: FontWeight.bold, decoration: TextDecoration.underline),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5),
                child: Text(widget.nom.toString(),style: GoogleFonts.mcLaren(color: Colors.black)),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(12, 5, 5, 5),
                child: Text(
                  "Marque du produit :",
                  style: GoogleFonts.mcLaren(color: Colors.black,fontWeight: FontWeight.bold, decoration: TextDecoration.underline),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5),
                child: Text(widget.nom,style: GoogleFonts.mcLaren(color: Colors.black)),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(12, 5, 5, 5),
                child: Text(
                  "Etat du produit :",
                  style: GoogleFonts.mcLaren(color: Colors.black,fontWeight: FontWeight.bold, decoration: TextDecoration.underline),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5),
                child: Text(widget.nom,style: GoogleFonts.mcLaren(color: Colors.black)),
              )
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(12, 5, 5, 5),
                child: Text(
                  "Note globale du produit :",
                  style: GoogleFonts.mcLaren(color: Colors.black,fontWeight: FontWeight.bold, decoration: TextDecoration.underline),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5),
                child: Text(widget.nom,style: GoogleFonts.mcLaren(color: Colors.black)),
              )
            ],
          ),


          Divider(),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: Text(
              "Produits similaires",
              style: GoogleFonts.mcLaren(),
            ),
          ),
          Container(
              height: 320,
              padding: EdgeInsets.all(5),
              child: Produits_Similaires()),
        ],
      ),
    );
  }
}
// Je veux utiliser cette partie pour la présentation du produit

class Produits_Similaires extends StatefulWidget {
  @override
  _Produits_SimilairesState createState() => _Produits_SimilairesState();
}

class _Produits_SimilairesState extends State<Produits_Similaires> {
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
