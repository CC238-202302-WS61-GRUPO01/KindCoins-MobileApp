import 'package:flutter/material.dart';

class SideNavBar extends StatelessWidget {
  const SideNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Drawer(//Quitar el const más tarde
      backgroundColor: Color.fromARGB(1, 235, 255, 253),//Color Secundario
      child: Stack(
        children: <Widget>[
          DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(1, 5, 151, 166)//Color Primario
              ),
              padding: EdgeInsets.all(16.0),
              child: Stack(
                children: <Widget>[
                  Image(
                    alignment: Alignment.centerLeft,
                    image: AssetImage("lib/descarga.jpg"),
                    width: 80.0,
                  ),
                  Text(
                    "Nombre de usuario",
                    textAlign: TextAlign.right,
                    overflow: TextOverflow.clip,
                    style: TextStyle(
                        fontFamily: "Roboto",
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                        color: Colors.black//Negro 1
                    ),
                  ),
                ],
              )
          ),
          Padding(
            padding: EdgeInsets.only(top:40.0),
          ),
          Column(
            children: <Widget>[
              ListTile(
                title: Text(
                  "Perfil",
                  textAlign: TextAlign.left,
                  overflow: TextOverflow.visible,
                  selectionColor: Colors.white,
                  style: TextStyle(
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.normal,
                      fontSize: 20,
                      color: Colors.black//Negro 1
                  ),
                ),
                //onTap: (){},
              ),
              Padding(
                padding: EdgeInsets.only(top:24.0),
              ),
              ListTile(
                title: Text(
                  "Premium",
                  textAlign: TextAlign.left,
                  overflow: TextOverflow.visible,
                  selectionColor: Colors.white,
                  style: TextStyle(
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.normal,
                      fontSize: 20,
                      color: Colors.black//Negro 1
                  ),
                ),
                //onTap: (){},
              ),
              Padding(
                padding: EdgeInsets.only(top:24.0),
              ),
              ListTile(
                title: Text(
                  "Guardados",
                  textAlign: TextAlign.left,
                  overflow: TextOverflow.visible,
                  selectionColor: Colors.white,
                  style: TextStyle(
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.normal,
                      fontSize: 20,
                      color: Colors.black//Negro 1
                  ),
                ),
                //onTap: (){},
              ),
              Padding(
                padding: EdgeInsets.only(top:24.0),
              ),
              ListTile(
                title: Text(
                  "Crear campaña",
                  textAlign: TextAlign.left,
                  overflow: TextOverflow.visible,
                  selectionColor: Colors.white,
                  style: TextStyle(
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.normal,
                      fontSize: 20,
                      color: Colors.black//Negro 1
                  ),
                ),
                //onTap: (){},
              )
            ],
          ),
        ],
      ),
    );
  }
}
