// lib/main.dart

import 'package:flutter/material.dart';
import 'screens/categoria_list_screen.dart';
import 'models/categorias.dart';
import 'package:thiagopdm/mock_data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Data Navigation Project',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: CategoriaListScreen(mockCategories),
    );
  }
}
