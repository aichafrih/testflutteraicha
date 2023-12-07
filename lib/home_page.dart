import 'package:flutter/material.dart';
import 'MyDrawer.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var Pays = [
    {
      "Pays": "France",
      "capitale": 'Paris',
      "Population": '68 million',
      "Langue": 'Francais',
      "images": 'FRANCE.png',
    },
    {
      "Pays": "Tunisie",
      "capitale": 'Tunisia',
      "Population": '12 million',
      "Langue": 'Arab',
      "images": 'tunisie.png',
    },
    {
      "Pays": 'Maroc',
      "capitale": 'Rabat',
      "Population": '38 million',
      "Langue": 'Arab',
      "images": 'MAROC.JPG',
    },
    {
      "Pays": "USA",
      "capitale": 'Washington',
      "Population": '332 million',
      "Langue": 'Anglais',
      "images": 'USA.png',
    },
    {
      "Pays": "Brasil",
      "capitale": 'PaBrasilia',
      "Population": '214 million',
      "Langue": 'Portoguese',
      "images": 'BRASIL.png',
    },
  ];

  Map<String, String>? selectedCountry;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      drawer: MyDrawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("FloatingActionButton pressed");
          print(Pays[0]["pays"]);
        },
        child: Icon(Icons.cloud),
      ),
      body: Column(
        mainAxisAlignment:
            MainAxisAlignment.start, // Alignez les enfants en haut
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 24),
          Text(
            'Atlas Monde',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              for (var pays in Pays)
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        selectedCountry = pays;
                      });
                    },
                    child: Text(pays["Pays"]!),
                  ),
                ),
            ],
          ),
          if (selectedCountry != null) ...[
            CountryInfo(
                text: 'Capitale: ${selectedCountry!["capitale"]}',
                color: Colors.green),
            CountryInfo(
                text: 'Population: ${selectedCountry!["Population"]}',
                color: Colors.pink),
            CountryInfo(
                text: 'Langue: ${selectedCountry!["Langue"]}',
                color: Colors.orange),
            SizedBox(height: 8),
            Image.asset(
              'assets/images/${selectedCountry!["images"]}', // Assurez-vous d'avoir vos images dans le bon dossier
              height: 100,
            ),
          ],
        ],
      ),
    );
  }
}

class CountryInfo extends StatelessWidget {
  final String text;
  final Color color;

  CountryInfo({required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        text,
        style: TextStyle(color: color, fontSize: 16),
      ),
    );
  }
}
