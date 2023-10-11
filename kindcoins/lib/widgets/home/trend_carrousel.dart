import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class TrendCarrousel extends StatelessWidget {
  final List<Map<String, String>> items;

  TrendCarrousel(this.items);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 200,
        enableInfiniteScroll: true,
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 3),
        autoPlayAnimationDuration: Duration(milliseconds: 800),
        pauseAutoPlayOnTouch: true,
        viewportFraction: 0.8,
      ),
      items: items.map((item) {
        return Container(
          width: 800, // Ancho de la imagen (ajusta según tus necesidades)
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(item['imageURL'] ?? ''),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                bottom: 16.0,
                left: 16.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item['title'] ?? '',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 4.0),
                    Text(
                      item['description'] ?? '',
                      style: TextStyle(
                        color: Colors.white,
                        backgroundColor: Colors.black.withOpacity(0.5),
                        fontSize: 14.0,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      }).toList(),
    );
  }
}
