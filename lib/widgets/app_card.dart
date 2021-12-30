import 'package:flutter/material.dart';

class AppCard extends StatelessWidget {
  final Image image;
  final String title;
  final String description;
  final String routeName;

  const AppCard(
      {Key? key,
      required this.image,
      required this.title,
      required this.description,
      required this.routeName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 4.0,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: InkWell(
            onTap: () {
              Navigator.pushNamed(context, routeName);
            }, // Handle your callback
            child: Column(
              children: <Widget>[
                Container(
                  width: MediaQuery.of(context).size.width * 0.7,
                  height: MediaQuery.of(context).size.width * 0.65,
                  child: image,
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  title,
                  style: const TextStyle(
                      color: Colors.pinkAccent,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  description,
                  style: const TextStyle(color: Colors.black),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ));
  }
}
