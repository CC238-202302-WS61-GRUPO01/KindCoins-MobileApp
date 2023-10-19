import 'package:flutter/material.dart';

class SideNavBar extends StatelessWidget {
  const SideNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Stack(
        children: <Widget>[
          DrawerHeader(
              child: Stack(
                children: <Widget>[
                  //Imageimage: AssetImage("lib/assets/IMAGEN DE PERFIL.jpeg"),
                  Text("Nombre de usuario"),
                ],
              )
          ),
          Column(
            children: <Widget>[
              ListTile(
                title: Text("Perfil"),
                //onTap: (){},
              ),
              ListTile(
                title: Text("Premium"),
                //onTap: (){},
              ),
              ListTile(
                title: Text("Guardados"),
                //onTap: (){},
              ),
              ListTile(
                title: Text("Crear campaña"),
                //onTap: (){},
              )
            ],
          ),
        ],
      ),
    );
  }

  @override
  // TODO: implement preferredSize
}
