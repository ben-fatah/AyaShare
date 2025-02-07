import 'package:aya_share/app_state.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FavoritesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();

    if (appState.favorites.isEmpty) {
      return Center(
        child: Text('لا يوجد لديك مفضلات بعد',style:  TextStyle( fontFamily: 'Amiri',),),
      );
    }

    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: Text('لديك '
              '${appState.favorites.length} مفضلة',style:  TextStyle( fontFamily: 'Amiri',),),
        ),
        for (var pair in appState.favorites)
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text(pair.toString()),
          ),
      ],
    );
  }
}