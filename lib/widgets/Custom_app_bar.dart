import 'package:flutter/material.dart';
import 'package:weather_app/pages/search_page.dart';

class HomeAppBar extends AppBar {
  HomeAppBar({
    Key? key,
  }) : super(key: key);

  Widget build(BuildContext context) {
    return AppBar(
      actions: [
        IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return SearchPage();
            }));
          },
          icon: Icon(Icons.search),
        ),
      ],
      title: Text('Weather App'),
    );
  }
}
