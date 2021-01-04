import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() => runApp(
    MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(
        ),
    ));

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => _HomePageState();
}

class DetailPage extends StatefulWidget {

  Product pr;

  @override
  DetailScreen createState() => DetailScreen(p: pr);

  DetailPage({Key key, this.pr}) : super(key: key);
}

class PanierPage extends StatefulWidget {

  List<Product> productcheck = List<Product>();

  PanierPage(this.productcheck);

  @override
  PanierScreen createState() => PanierScreen(productcheck);

}

class Product {
  String name;
  String price;
  String desc;
  String img;
  int id;
  bool check;

  Product(this.name, this.price, this.desc, this.img, this.id, this.check);
}




class _HomePageState extends State<HomePage> {

  final List<Product> productcheck = List<Product>();

  Product pr1 = new Product("Big-Mac", "8.90", "Ses deux steaks hachés, son cheddar fondu, ses oignons, ses cornichons, son lit de salade et sa sauce inimitable, font du Big Mac un burger culte et indémodable.", "assets/images/one.jpg", 1, false);
  Product pr2 = new Product("La Vannes", "4.70", "Crêpe garnie de bananes, sauce au chocolat noir maison ou Nutella, parsemée de noix de coco râpée", "assets/images/two.jpg", 2, false);
  Product pr3 = new Product("La Gaufre Burger", "16.5", "Steach haché 150g(ou poulet), tomme de Savoie au lait cru, tomate séchée et sauce tartare entre deux demi gaufres aux céréales, frites", "assets/images/three.jpg", 3, false);
  Product pr4 = new Product("Brésilienne", "10.20", "Coulis de tomate, fromage, viande hachée, chorizo, merguez", "assets/images/four.jpg", 4, false);
  Product pr5 = new Product("Hot Dog Chicago", "5.50", "Saucisse d'hot dog, cheddar, tranche de bacon, oignons frits et sauce hot dog. Servi avec 1 nachos cheese", "assets/images/five.jpg", 5, false);

  bool checkboxvalue1 = false;
  bool checkboxvalue2 = false;
  bool checkboxvalue3 = false;
  bool checkboxvalue4 = false;
  bool checkboxvalue5 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        backgroundColor: Colors.grey,
        elevation: 5,
        title: Text("Delivecrous", style: TextStyle(color: Colors.white, fontSize: 28),),
        centerTitle: true,
        toolbarHeight: 80,
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.all(10.0),
            child: IconButton(
              icon: Icon(Icons.shopping_cart, size: 30),
              onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PanierPage(productcheck)
                  ),
                );
              },
            ),
            ),
        ],
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              Expanded(
                  child: GridView.count(
                    childAspectRatio: (200 / 250),
                    crossAxisCount: 2,
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 10,
                    children: <Widget>[
                      InkWell(
                        onTap: (){
                          //Product pr = new Product("BigMac", "8,90€", "aaaaaaaa", "assets/images/one.jpg", 1, false);
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => DetailPage(pr: pr1)
                            ),
                          );
                        },
                        child: Container(
                            height: 500,
                            child: Card(

                              color: Colors.white24,
                              elevation: 0,
                              child: ListView(
                                children: <Widget>[
                                  Image.asset(pr1.img),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(5.0, 5.0, 0, 0),
                                    child: Text(pr1.name, textAlign: TextAlign.start),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 5.0, 0),
                                    child: Text(pr1.price + "€", textAlign: TextAlign.end),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(5.0),
                                    child: Text(pr1.desc),
                                  ),
                                  Padding(
                                      padding: EdgeInsets.fromLTRB(0, 0, 5.0, 0),
                                      child: Align(
                                        alignment: Alignment.centerRight,
                                        child: Checkbox(
                                          value: pr1.check,
                                          activeColor: Colors.black,
                                          onChanged: (bool newValue)
                                          {
                                            setState(() {
                                              pr1.check = newValue;
                                              if(pr1.check == true)
                                                {
                                                  productcheck.add(pr1);
                                                }
                                              else
                                              {
                                                productcheck.remove(pr1);
                                              }
                                            });
                                          },
                                        ),
                                      )
                                  ),
                                ],
                              ),
                            )
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          //Product pr = new Product("BigMac", "8,90€", "aaaaaaaa", "assets/images/one.jpg", 1);
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => DetailPage(pr: pr2))
                          );
                        },
                        child: Container(
                            height: 500,
                            child: Card(

                              color: Colors.white24,
                              elevation: 0,
                              child: ListView(
                                children: <Widget>[
                                  Image.asset(pr2.img),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(5.0, 5.0, 0, 0),
                                    child: Text(pr2.name, textAlign: TextAlign.start),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 5.0, 0),
                                    child: Text(pr2.price + "€", textAlign: TextAlign.end),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(5.0),
                                    child: Text(pr2.desc),
                                  ),
                                  Padding(
                                      padding: EdgeInsets.fromLTRB(0, 0, 5.0, 0),
                                      child: Align(
                                        alignment: Alignment.centerRight,
                                        child: Checkbox(
                                          value: pr2.check,
                                          activeColor: Colors.black,
                                          onChanged: (bool newValue)
                                          {
                                            setState(() {
                                              pr2.check = newValue;
                                              if(pr2.check == true)
                                              {
                                                productcheck.add(pr2);
                                              }
                                              else
                                              {
                                                productcheck.remove(pr2);
                                              }
                                            });
                                          },
                                        ),
                                      )
                                  ),
                                ],
                              ),
                            )
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          //Product pr = new Product("BigMac", "8,90€", "aaaaaaaa", "assets/images/one.jpg", 1);
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => DetailPage(pr: pr3))
                          );
                        },
                        child: Container(
                            height: 500,
                            child: Card(

                              color: Colors.white24,
                              elevation: 0,
                              child: ListView(
                                children: <Widget>[
                                  Image.asset(pr3.img),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(5.0, 5.0, 0, 0),
                                    child: Text(pr3.name, textAlign: TextAlign.start),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 5.0, 0),
                                    child: Text(pr3.price + "€", textAlign: TextAlign.end),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(5.0),
                                    child: Text(pr3.desc),
                                  ),
                                  Padding(
                                      padding: EdgeInsets.fromLTRB(0, 0, 5.0, 0),
                                      child: Align(
                                        alignment: Alignment.centerRight,
                                        child: Checkbox(
                                          value: pr3.check,
                                          activeColor: Colors.black,
                                          onChanged: (bool newValue)
                                          {
                                            setState(() {
                                              pr3.check = newValue;
                                              if(pr3.check == true)
                                              {
                                                productcheck.add(pr3);
                                              }
                                              else
                                              {
                                                productcheck.remove(pr3);
                                              }
                                            });
                                          },
                                        ),
                                      )
                                  ),
                                ],
                              ),
                            )
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          //Product pr = new Product("BigMac", "8,90€", "aaaaaaaa", "assets/images/one.jpg", 1);
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => DetailPage(pr: pr4))
                          );
                        },
                        child: Container(
                            height: 500,
                            child: Card(

                              color: Colors.white24,
                              elevation: 0,
                              child: ListView(
                                children: <Widget>[
                                  Image.asset(pr4.img),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(5.0, 5.0, 0, 0),
                                    child: Text(pr4.name, textAlign: TextAlign.start),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 5.0, 0),
                                    child: Text(pr4.price + "€", textAlign: TextAlign.end),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(5.0),
                                    child: Text(pr4.desc),
                                  ),
                                  Padding(
                                      padding: EdgeInsets.fromLTRB(0, 0, 5.0, 0),
                                      child: Align(
                                        alignment: Alignment.centerRight,
                                        child: Checkbox(
                                          value: pr4.check,
                                          activeColor: Colors.black,
                                          onChanged: (bool newValue)
                                          {
                                            setState(() {
                                              pr4.check = newValue;
                                              if(pr4.check == true)
                                              {
                                                productcheck.add(pr4);
                                              }
                                              else
                                              {
                                                productcheck.remove(pr4);
                                              }
                                            });
                                          },
                                        ),
                                      )
                                  ),
                                ],
                              ),
                            )
                        ),
                      ),
                      InkWell(
                        onTap: (){
                          //Product pr = new Product("BigMac", "8,90€", "aaaaaaaa", "assets/images/one.jpg", 1);
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => DetailPage(pr: pr5))
                          );
                        },
                        child: Container(
                            height: 500,
                            child: Card(

                              color: Colors.white24,
                              elevation: 0,
                              child: ListView(
                                children: <Widget>[
                                  Image.asset(pr5.img),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(5.0, 5.0, 0, 0),
                                    child: Text(pr5.name, textAlign: TextAlign.start),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(0, 0, 5.0, 0),
                                    child: Text(pr5.price + "€", textAlign: TextAlign.end),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(5.0),
                                    child: Text(pr5.desc),
                                  ),
                                  Padding(
                                      padding: EdgeInsets.fromLTRB(0, 0, 5.0, 0),
                                      child: Align(
                                        alignment: Alignment.centerRight,
                                        child: Checkbox(
                                          value: pr5.check,
                                          activeColor: Colors.black,
                                          onChanged: (bool newValue)
                                          {
                                            setState(() {
                                              pr5.check = newValue;
                                              if(pr5.check == true)
                                              {
                                                productcheck.add(pr5);
                                              }
                                              else
                                                {
                                                  productcheck.remove(pr5);
                                                }
                                            });
                                          },
                                        ),
                                      )
                                  ),
                                ],
                              ),
                            )
                        )
                      ),

                    ]
                    )
                  )
            ],
          ),
        ),
      ),
    );
  }
}

class DetailScreen extends State<DetailPage> {

  Product p;

  DetailScreen({Key key, @required this.p});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        elevation: 5,
        title: Text("Delivecrous", style: TextStyle(color: Colors.white, fontSize: 28),),
        centerTitle: true,
        toolbarHeight: 80,
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.all(10.0),
            child: IconButton(
              icon: Icon(Icons.shopping_cart, size: 30),
              onPressed: (){

              },
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Image.asset(p.img),
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(10.0, 10.0, 0, 0),
                  child: Text(p.name, textAlign: TextAlign.start, style: TextStyle(fontSize: 30)),
                ),
                new Spacer(),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 10.0, 10, 0),
                  child: Text(p.price + "€", textAlign: TextAlign.start, style: TextStyle(fontSize: 25, color: Colors.deepOrange)),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Container(
                    width: 250,
                    child: Text(p.desc, textAlign: TextAlign.start, style: TextStyle(fontSize: 20)),
                  )
                ),
                new Spacer(),
                Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 5.0, 0),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Checkbox(
                        value: p.check,
                        activeColor: Colors.black,
                        onChanged: (bool newValue)
                        {
                          setState(() {
                            p.check = newValue;
                          });
                        },
                      ),
                    )
                ),
              ],
            ),

          ],
        )
      ),
    );
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}

class PanierScreen extends State<PanierPage> {

  List<Product> _product = List<Product>();

  bool txt1 = false;
  bool txt2 = false;
  bool txt3 = false;

  PanierScreen(this._product);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        elevation: 5,
        title: Text("Delivecrous", style: TextStyle(color: Colors.white, fontSize: 28),),
        centerTitle: true,
        toolbarHeight: 80,
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.all(10.0),
            child: IconButton(
              icon: Icon(Icons.shopping_cart, size: 30),
              onPressed: (){

              },
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(5.0, 0, 0, 0),
              child: Text("Panier", style: TextStyle(fontSize: 30))
            ),
            Container(
              height: 300,
                child: ListView.builder(
                  itemCount: _product.length,
                  itemBuilder: (BuildContext context, int index){
                    return Container(
                      margin: EdgeInsets.all(5),
                      color: Colors.grey,
                      height: 150,
                      child: Row(
                        children: <Widget>[
                          Container(
                            width: 100,
                            child: Image.asset(_product[index].img)
                          ),
                          Column(
                            children: <Widget>[
                              Padding(
                                  padding: EdgeInsets.fromLTRB(30.0, 10.0, 0, 0),
                                  child: Text(_product[index].name, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))
                              ),
                              Expanded(
                                child: Container(
                                  width: 150,
                                  child: Padding(
                                      padding: EdgeInsets.fromLTRB(30.0, 10.0, 0, 5.0),
                                      child: Text(_product[index].desc, style: TextStyle(fontSize: 15)),
                                  ),
                                )
                              )
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Padding(
                                  padding: EdgeInsets.fromLTRB(30.0, 15.0, 0, 0),
                                  child: Text(_product[index].price, style: TextStyle(fontSize: 15))
                              ),
                              Padding(
                                  padding: EdgeInsets.fromLTRB(30.0, 10.0, 0, 5.0),
                                  child: Align(
                                    alignment: Alignment.bottomRight,
                                    child: Checkbox(
                                      value: _product[index].check,
                                      activeColor: Colors.black,
                                      onChanged: (bool newValue)
                                      {
                                        setState(() {
                                          _product[index].check = newValue;
                                        });
                                      },
                                    ),
                                  )
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                )
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0.0, 5.0, 20.0, 0),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text("Total :" + calculpanier(_product).toString() + "€", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))
                )
            ),
            TextFormField(
              decoration: const InputDecoration(
                  labelText: 'Rue',
                  border: OutlineInputBorder()),
            ),
            TextFormField(
              decoration: const InputDecoration(
                  labelText: 'Ville',
                  border: OutlineInputBorder()),
            ),
            TextFormField(
              decoration: const InputDecoration(
                  labelText: 'Code Postal',
                  border: OutlineInputBorder()),

            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Builder(
                builder: (context) => RaisedButton(
                    onPressed: () {
                      // Retourne true si le formulaire est valide, sinon false
                      Scaffold.of(context).showSnackBar(SnackBar(
                          content: Text('Traitement en cours...'),
                          duration: Duration(seconds: 3)));
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SuccessPage())
                      );
                    },
                    child: Text('Passer commande'),
                  ),
                ),
              )
          ],
        ),
      )
    );
  }
}

double calculpanier (List<Product> pr)
{
  int i;
  double somme = 0;
  for(i = 0; i < pr.length; i++)
    {
      somme = somme + double.parse(pr[i].price);
    }
  return somme;
}

class SuccessPage extends StatefulWidget {
  @override
  SuccessScreen createState() => SuccessScreen();

}

class SuccessScreen extends State<SuccessPage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          elevation: 5,
          title: Text("Delivecrous", style: TextStyle(color: Colors.white, fontSize: 28),),
          centerTitle: true,
          toolbarHeight: 80,
          actions: <Widget>[
          ],
        ),
      body: Column(
        children: <Widget>[
          Center(
            child: Container(
              width: 350,
              height: 350,
              child: Image.asset("assets/images/success.jpg")
            )
          ),
          Text("Commande envoyée !", style: TextStyle(fontSize: 30, color: Colors.red[900])),
          SizedBox(height: 20),
          Padding(padding: EdgeInsets.fromLTRB(80, 0, 80, 0), child: Text("Elle vous attendra à la fin de votre cours !", style: TextStyle(fontSize: 20), textAlign: TextAlign.center,)),
          SizedBox(height: 20),
          Padding(padding: EdgeInsets.fromLTRB(80, 0, 80, 0), child: Text("Solde CROUS restant:  €", style: TextStyle(fontSize: 15, color: Colors.grey), textAlign: TextAlign.center,)),

        ],
      )
    );
    throw UnimplementedError();
  }

}