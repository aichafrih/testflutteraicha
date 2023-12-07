import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String selectedCountry = '';
  String selectedCapital = '';
  String selectedPopulation = '';
  String selectedLanguage = '';
  String selectedFlagImage = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Atlas Monde',
          style: TextStyle(color: Colors.blue),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (selectedCountry.isEmpty)
              buildCountryButtons()
            else
              buildCountryDetails(),
          ],
        ),
      ),
    );
  }

  Widget buildCountryButtons() {
    return ListView(
      padding: EdgeInsets.all(16.0),
      children: [
        buildCountryButton(
            'France', 'Paris', '66 million', 'French', 'flag_france.png'),
        buildCountryButton(
            'Germany', 'Berlin', '83 million', 'German', 'flag_germany.png'),
        // Ajoutez d'autres boutons de pays au besoin
      ],
    );
  }

  Widget buildCountryButton(String country, String capital, String population,
      String language, String flagImage) {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          selectedCountry = country;
          selectedCapital = capital;
          selectedPopulation = population;
          selectedLanguage = language;
          selectedFlagImage = flagImage;
        });
      },
      child: Text(country),
    );
  }

  Widget buildCountryDetails() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          selectedCountry,
          style: TextStyle(
              color: Colors.blue, fontSize: 24, fontWeight: FontWeight.bold),
        ),
        Text(
          'Capitale: $selectedCapital',
          style: TextStyle(color: Colors.green),
        ),
        Text(
          'Population: $selectedPopulation',
          style: TextStyle(color: Colors.pink),
        ),
        Text(
          'Langue: $selectedLanguage',
          style: TextStyle(color: Colors.orange),
        ),
        Image.asset(
          'assets/images/$selectedFlagImage',
          height: 100,
        ),
        ElevatedButton(
          onPressed: () {
            setState(() {
              selectedCountry = '';
            });
          },
          child: Text('Retour'),
        ),
      ],
    );
  }
}
