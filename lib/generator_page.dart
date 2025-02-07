// ignore_for_file: library_private_types_in_public_api

import 'package:aya_share/favorites_page.dart';
import 'package:flutter/material.dart';
import 'home_page.dart'; // تأكد من استيراد الصفحة الفرعية

class GeneratorPage extends StatefulWidget {
  @override
  _GeneratorPageState createState() => _GeneratorPageState();
}

class _GeneratorPageState extends State<GeneratorPage> {
  var selectedIndex = 0;
  @override
  Widget build(BuildContext context) {

  Widget page;
 switch (selectedIndex) {
  case 0:
    page = HomePage();
  case 1:
    page = FavoritesPage();
  default:
    throw UnimplementedError('no widget for $selectedIndex');
}
var theme = Theme.of(context);

  
    




    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          appBar: AppBar(
            shadowColor: theme.colorScheme.primary,
            backgroundColor: theme.colorScheme.secondaryContainer,
            title: Text('AyaShare',style:  TextStyle( fontFamily: 'Amiri',color:  theme.colorScheme.primary,fontWeight: FontWeight.bold,fontSize: 24,),
          ),),
          backgroundColor: Colors.amber,
          body: Row(
        
            children: [
              // جزء التنقل الجانبي
              SafeArea(
                child: NavigationRail(
                 extended: constraints.maxWidth >=600,
                  destinations: [
                    NavigationRailDestination(
                      icon: Icon(Icons.home),
                      label: Text('الرئيسية'),
                    ),
                    NavigationRailDestination(
                      icon: Icon(Icons.favorite),
                      label: Text('المفضلة'),
                    ),
                  ],
                      selectedIndex: selectedIndex,   
                  onDestinationSelected: (value) {
                    setState(() {
                      selectedIndex = value;
                    });
        
                  },
                ),
              ),
              // الجزء الرئيسي من الصفحة
              Expanded(
                child: Container(
                  color: Theme.of(context).colorScheme.primaryContainer,
                  child: page, // استدعاء الكومبوننت الفرعي
                ),
              ),
            ],
          ),
        );
      }
    );
  }
}