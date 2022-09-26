import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop_app/composants/produits.dart';
import 'package:shop_app/pages/panier.dart';


Widget categoryItem(String fichierImage, String labelImage){
  return Card(
    elevation: 0.2,
    child: Center(
      child: Container(
        width: 100,
        padding: EdgeInsets.all(2),
        child: InkWell(
          onTap: (){},
          child:ListTile(
            title: Image.asset(fichierImage),
            subtitle: Text(labelImage,style: GoogleFonts.mcLaren(fontSize: 10,),)
          ) ,
        ),
      ),
    ),
  );
}

// l'effet de couleur dégradé entre le vert et le bleu au niveau du UserAccountDrawHeader
BoxDecoration maDecoration(Color couleur1, Color couleur2) {
  return BoxDecoration(
      gradient: LinearGradient(
         // begin: Alignment.topLeft,
         // end: Alignment.bottomRight,
          //stops: [0.8, 1],
          colors: [couleur1, couleur2]));
}


class Page_Accueil extends StatefulWidget {
  @override
  _Page_AccueilState createState() => _Page_AccueilState();
}

class _Page_AccueilState extends State<Page_Accueil> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: maDecoration(Colors.blue, Colors.green),
      child: Scaffold(
        appBar: AppBar(
          title: GestureDetector(
            onTap: (){
              // ignore: missing_return
              Navigator.of(context).push(MaterialPageRoute(builder: (context){return Page_Accueil();}));
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
                Navigator.of(context).push(MaterialPageRoute(builder: (context){ return Panier();}));
              },
            ),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                  accountName: Text('Adonic',style: GoogleFonts.mcLaren(),),
                  accountEmail: Text('agbatanjulior@gmail.com',style: GoogleFonts.mcLaren(),),
                  currentAccountPicture: GestureDetector(
                    child: CircleAvatar(
                      child: Icon(Icons.person),
                      radius: 25,
                    ),
                  ),
                  decoration: maDecoration(Colors.green, Colors.blue )
              ),
              InkWell(
                child: ListTile(
                  title: Text("Accueil",style: GoogleFonts.mcLaren(),),
                  leading: Icon(Icons.home,color: Colors.blue),
                ),
                onTap: (){},
              ),
              InkWell(
                child: ListTile(
                  title: Text("Mon profil",style: GoogleFonts.mcLaren(),),
                  leading: Icon(Icons.person,color: Colors.blue),
                ),
                onTap: (){},
              ),
              InkWell(
                child: ListTile(
                  title: Text("Mes commandes",style: GoogleFonts.mcLaren(),),
                  leading: Icon(Icons.shopping_basket,color: Colors.blue),
                ),
                onTap: (){},
              ),
              InkWell(
                child: ListTile(
                  title: Text("Catégories",style: GoogleFonts.mcLaren(),),
                  leading: Icon(Icons.dashboard,color: Colors.blue),
                ),
                onTap: (){},
              ),
              InkWell(
                child: ListTile(
                  title: Text("Mes favoris",style: GoogleFonts.mcLaren(),),
                  leading: Icon(Icons.favorite,color: Colors.blue,),
                ),
                onTap: (){},
              ),
              Divider(),
              InkWell(
                child: ListTile(
                  title: Text("Paramètres",style: GoogleFonts.mcLaren(),),
                  leading: Icon(Icons.settings, color: Colors.blue,),
                ),
                onTap: (){},
              ),
              InkWell(
                child: ListTile(
                  title: Text("A propos",style: GoogleFonts.mcLaren(),),
                  leading: Icon(Icons.help, color: Colors.blue,),
                ),
                onTap: (){},
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.25,
              child: Carousel(
                boxFit: BoxFit.cover,
                images: [
                  ExactAssetImage('images/carousel_00.jpg'),
                  ExactAssetImage('images/carousel_01.jpeg'),
                  ExactAssetImage('images/carousel_02.jpg'),
                  ExactAssetImage('images/carousel_03.jpeg'),
                  ExactAssetImage('images/carousel_04.JPG'),
                  ExactAssetImage('images/carousel_05.jpeg'),

                ],
                autoplay: false,
                animationCurve: Curves.fastOutSlowIn,
                animationDuration: Duration(milliseconds: 6000),
                dotSize: 4,
                indicatorBgPadding: 6,
                dotBgColor: Colors.transparent,
              ),
            ),
            Padding(padding: EdgeInsets.all(4),
              child: Container(
                alignment: Alignment.centerLeft,
                  child: Text("Catégories", style: GoogleFonts.mcLaren(),)),
            ),
            Container(
              height: 100,
              child: Center(
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    categoryItem('images/cats/tshirt.png', 'T-Shirts'),
                    categoryItem('images/cats/dress.png', 'Robes'),
                    categoryItem('images/cats/formal.png', 'Costumes'),
                    categoryItem('images/cats/informal.png', 'Sweats'),
                    categoryItem('images/cats/shoe.png', 'Chaussures'),

                  ],
                ),
              ),
            ),
            SizedBox(height: 1,),
            Padding(padding: EdgeInsets.all(4),
              child: Container(
                alignment: Alignment.centerLeft,
                  child: Text("Produits les plus vendus", style: GoogleFonts.mcLaren(),)),
            ),
            Flexible(child: Produit()),
          ],
        ),
      ),
    );
  }
}

