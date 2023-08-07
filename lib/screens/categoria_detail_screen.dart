// lib/screens/categoria_detail_screen.dart

import 'package:flutter/material.dart';
import '../models/categorias.dart';

class CategoriaDetailScreen extends StatelessWidget {
  final Categoria categoria;

  CategoriaDetailScreen(this.categoria);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(categoria.titulo),
      ),
      body: Center(
        child: Text('Detalhes da Categoria: ${categoria.titulo}'),
      ),
    );
  }
}
