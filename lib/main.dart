import 'package:flutter/material.dart';

void main() => runApp(MyApp());

var foto = [
  "agkw071510851996.jpg",
  "g0xlkp1510859385.jpg",
  "xxwxry1432685521.jpg",
  "5i1m731510852121.jpg",
  "054hnx1535639537.jpg",
  "3775d71510853007.jpg",
  "an83q01513028545.jpg",
  "f0i81c1510852903.jpg",
  "d9aatp1510859194.jpg",
  "wupxpr1432313827.jpg"
];

var nama = [
  "Hector Bellerin",
  "Mesut Ozil",
  "Emiliano Martinez",
  "Calum Chambers",
  "Matt Macey",
  "Ainsley Maitland-Niles",
  "Kieran Tierney",
  "Alexandre Lacazette",
  "Shkodran Mustafi",
  "David Luiz"
];

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MenuPage(),
    );
  }
}

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Arsenal"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(4.0),
        child: GridView.builder(
          itemCount: foto.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
          ),
          itemBuilder: (BuildContext context, int index) {
            return GridTile(
              child: InkWell(
                child: Container(
                  child: Image.network(
                      "https://www.thesportsdb.com/images/media/player/thumb/${foto[index]}"),
                  padding: EdgeInsets.all(2.0),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return DetailPage(index);
                  }));
                },
              ),
            );
          },
        ),
      ),
    );
  }
}

class DetailPage extends StatelessWidget {
  final int i;

  DetailPage(this.i);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail"),
      ),
      body: Column(
        children: <Widget>[
          Image.network(
              "https://www.thesportsdb.com/images/media/player/thumb/${foto[i]}"),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              nama[i],
              style: TextStyle(
                fontSize: 26.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
