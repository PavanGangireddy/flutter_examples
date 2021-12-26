import 'location_fact.dart';

class Location {
  final int id;
  final String title;
  final String body;
  final List<LocationFact> facts;

  Location(this.id, this.title, this.body, this.facts);

  static Location fetchById(locationID) {
    print(locationID);
    return Location(1, 'Arashiyama Bamboo ', 'assets/images/sample.jpg', [
      LocationFact('Summary',
          'grove on the outskirts of Kyoto, the sight\'s pleasures extend beyond the visual realm.'),
      LocationFact('How to Get There',
          'Kyoto airport, with several terminals, is located 16 kilometres south of the city and is also known as Kyoto. Kyoto can also be reached by transport links from other regional airports.'),
    ]);
  }

  static List<Location> fetchAll() {
    return [
      Location(1, 'Arashiyama Bamboo ', 'assets/images/sample.jpg', [
        LocationFact('Summary',
            'grove on the outskirts of Kyoto, the sight\'s pleasures extend beyond the visual realm.'),
        LocationFact('How to Get There',
            'Kyoto airport, with several terminals, is located 16 kilometres south of the city and is also known as Kyoto. Kyoto can also be reached by transport links from other regional airports.'),
      ]),
      Location(2, ' Grove', 'assets/images/sample.jpg', [
        LocationFact('Summary',
            'While we could go on about the ethereal glow and seemingly endless heights of this bamboo '),
        LocationFact('How to Get There',
            'Kyoto. Kyoto can also be reached by transport links from other regional airports.'),
      ]),
    ];
  }
}
