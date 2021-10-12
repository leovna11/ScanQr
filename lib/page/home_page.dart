import 'package:cursos_arca/page/direcciones_page.dart';
import 'package:cursos_arca/page/mapas_page.dart';
import 'package:cursos_arca/provider/db_provider.dart';
import 'package:cursos_arca/provider/ui_provider.dart';
import 'package:cursos_arca/widget/custom_navigation.dart';
import 'package:cursos_arca/widget/scan_buttom.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        elevation: 0,//eliminar la sobra  
        title: Text('Historial'),
        actions: [
          IconButton(
           icon: Icon(
            Icons.delete_forever
          ),
            onPressed: (){},
          ),
        ],
      ),
      body: _HomePageBody(),

      bottomNavigationBar: CustomNavigationbar(),
      floatingActionButton: ScanButtom(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

    );
  }
} 
class _HomePageBody extends StatelessWidget {
  const _HomePageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // trae la variable de seleccion

    final uiProvider = Provider.of<UiProvider>(context);

    final seleccion = uiProvider.selectMenuOpt;
    //temporal leer bd 
    DBProvider.db.database;

    switch(seleccion){
      case 0 :
        return MapasPage();
      
      case 1 :
      return DireccionesPage();

      default:
      return MapasPage();
    }

  }
}