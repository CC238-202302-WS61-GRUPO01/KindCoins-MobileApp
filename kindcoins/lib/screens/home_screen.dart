import 'package:flutter/material.dart';
import '../widgets/home/trend_carrousel.dart';
import '../widgets/home/header.dart';
import '../widgets/home/explore_carroursel.dart';
import '../widgets/home/explore_card.dart';

class HomeScreen extends StatelessWidget {
  final List<Map<String, dynamic>> explorarItems = [
    {
      'imageURL':
      'https://media.istockphoto.com/id/115071061/es/foto/ni%C3%B1o-de-asia-en-laos.jpg?s=612x612&w=is&k=20&c=9YI3pRREapPsZxUkN5Y4bJ0DsfcS_s415TxEFRTUdcM=',
      'title': 'Alimenta familias',
      'description':
      'Las comidas compartidas proporcionarán a las familias afectadas por la guerra un apoyo en efectivo para que puedan comprar alimentos en tiendas locales.',
    },
    {
      'imageURL':
      'https://media.istockphoto.com/id/1599017115/es/foto/ayuda-de-agua-potable-para-residentes-afectados-por-la-sequ%C3%ADa-en-indonesia.jpg?s=612x612&w=is&k=20&c=jNV3cbZ5tGL_O1qCEEw1zJOyxBoM8fVAppOd73zvE-Q=',
      'title': 'Agua potable',
      'description':
      'Las donaciones proporcionarán apoyo a los afectados por la sequias.',
    },
    {
      'imageURL':
      'https://media.istockphoto.com/id/185096067/es/foto/oscuridad-hospital-habitaci%C3%B3n.jpg?s=612x612&w=is&k=20&c=SHaBVZMEqKnPRf7QDXsc-sTe03cU-T4UAv0QfLeZjYk=',
      'title': 'Equipo médico para hospitales',
      'description':
      'Las donaciones proporcionarán apoyo a los hospitales para que puedan comprar equipos médicos actuales y plenamente funcionales.',
    }
  ];
  final List<Map<String, dynamic>> items = [
    {
      'imageURL':
      'https://cdn.discordapp.com/attachments/1019832105108242555/1157117727937400933/image.png?ex=6517715c&is=65161fdc&hm=0ee0c6a8b1fdff3ee1ee756524b74a3a2b20e16c72225f746a783f5e01d74725&',
      'title': 'Los mejores destinos para viajar',
      'description': 'Descubre lugares increíbles para tu próxima aventura',
    },
    {
      'imageURL':
      'https://images.unsplash.com/photo-1635444943310-9a0f6c3f0b8d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80',
      'title': 'Las mejores recetas para cocinar',
      'description': 'Aprende a preparar platos deliciosos y saludables',
    },
    {
      'imageURL':
      'https://images.unsplash.com/photo-1635444943310-9a0f6c3f0b8d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80',
      'title': 'Los mejores consejos para ahorrar',
      'description': 'Mejora tus finanzas personales con estos tips',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Header(),
      backgroundColor: const Color(0xFFEBFFFD),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            decoration: BoxDecoration(
              color: const Color(0xFFEBFFFD),
            ),
            child: Text(
              'Tendencia',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          TrendCarrousel(items),
          Container(
            margin: EdgeInsets.only(right: 16.0),
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            decoration: BoxDecoration(
              color: const Color(0xFFEBFFFD),
            ),
            child: Text(
              'Explorar',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          ExploreCarrousel(
            explorarItems.map((item) => ExploreCard(item)).toList(),
          ),
        ],
      ),
    );
  }
}
