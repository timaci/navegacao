

import 'package:flutter/material.dart';
import '../Telas/detalhes_categoria_screen.dart';
import '../models/categorias.dart';

class CategoriaItem extends StatelessWidget {
  final Categoria categoria;

  CategoriaItem(this.categoria);

  @override
  Widget build(BuildContext context) {
    return InkWell(
  onTap: () {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (ctx) => DetalhesCategoriaScreen(categoria),
      ),
    );
  },



      child: Container(
        padding: EdgeInsets.all(15),
        child: Text(
          categoria.titulo,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
            colors: [
              categoria.color.withOpacity(0.5),
              categoria.color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
      ),
    );
  }
}