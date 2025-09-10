import 'dart:async';

import 'package:flutter/material.dart';

class imageAssets extends StatelessWidget {
  const imageAssets ({super.key});

  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     title: 'Image Assets',
     home: const FirstHomePage (title: 'Image Assets'),
   );
    
  }
}

class FirstHomePage extends StatelessWidget {
  final String title;
  const FirstHomePage({super.key, required this.title});

  Widget build (BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),

      body: Center(

        child: Column(
        children: [

          Text('This is JUstin Nabunturan'),
          Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWQNkXnrrTtXTWS0JbItJ5h7x4dIQ85iGnCg&s',
          width: 300,
          height: 250,
          fit: BoxFit.cover,),

          Image.network('https://tse2.mm.bing.net/th/id/OIP.43JfLytxZR73Db_jFjDROQHaHa?pid=Api&P=0&h=180',
            width: 300,
            height: 250,
            fit: BoxFit.cover,)
        ],
      ),
      ),

    );
  }
}