
import 'package:cursos_arca/page/home_page.dart';
import 'package:cursos_arca/page/mapa_page.dart';
import 'package:cursos_arca/provider/ui_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MultiProvider(
      
      providers: [
        ChangeNotifierProvider(create: ( _ ) => new UiProvider()),
      ],

      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Cursos  QR',
        initialRoute: 'inicio',
        routes: {
          'inicio': (_) => HomePage(),
          'mapa': (_) => MapaPage(),
        
        },
    /*
        theme: ThemeData(
          primaryColor: Colors.purple,
          floatingActionButtonTheme: FloatingActionButtonThemeData(
            backgroundColor: Colors.purple
          )
         
        ),
        */
      ),
    );
  }
}