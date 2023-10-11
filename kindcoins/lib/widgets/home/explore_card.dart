import 'package:flutter/material.dart';

class ExploreCard extends StatelessWidget {
  final Map<String, String> cardData;

  ExploreCard(this.cardData);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
      child: Column(
        children: [
          // Imagen
          Image.network(
            cardData['imageURL'] ?? '',
            height: 150.0,
            width: double.infinity,
            fit: BoxFit.cover,
          ),

          // Título
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              cardData['title'] ?? '',
              style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold),
            ),
          ),

          // Descripción
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              cardData['description'] ?? '',
              style: TextStyle(fontSize: 11.0, fontWeight: FontWeight.normal),
              maxLines: 4,
              overflow: TextOverflow.ellipsis,
            ),
          ),

          // Botón
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Container(
              width: 120, // Adjust this value as needed
              child: ElevatedButton(
                onPressed: () {
                  // Acción del botón
                },
                child: Text('Botón'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
