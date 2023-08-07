// lib/screens/categoria_list_screen.dart

import 'package:flutter/material.dart';
import '../models/categorias.dart';
import '../screens/categoria_detail_screen.dart';
// lib/screens/categoria_list_screen.dart

// ...

class CategoriaListScreen extends StatelessWidget {
  final List<Categoria> categorias;

  CategoriaListScreen(this.categorias);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Categorias'),
      ),
      body: ListView.builder(
        itemCount: categorias.length,
        itemBuilder: (ctx, index) {
          final categoria = categorias[index];
          return ListTile(
            title: Text(categoria.titulo),
            leading: CircleAvatar(
              backgroundColor: categoria.color,
            ),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (ctx) => CategoriaDetailScreen(categoria),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

// ...
