import 'package:cursos_arca/provider/ui_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class CustomNavigationbar extends StatelessWidget {
  const CustomNavigationbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final uiProvider = Provider.of<UiProvider>(context);
    final seleccion = uiProvider.selectMenuOpt;

    return BottomNavigationBar(
      onTap: (int i ) => uiProvider.selectMenuOpt = i,
     // onTap: (int i) => print('opt: $i'),
      elevation: 0,
      currentIndex: seleccion, // seleccionar el elemento
      items: const [
        BottomNavigationBarItem(
           icon:  Icon(Icons.map),
           label: 'Mapa',
         ),
          BottomNavigationBarItem(
           icon:  Icon(Icons.compass_calibration),
           label: 'Direcciones',
         ),
         
      ],
      );
  } 
}