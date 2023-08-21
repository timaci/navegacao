import 'package:flutter/material.dart';
import '../models/categorias.dart';

class DetalhesCategoriaScreen extends StatelessWidget {
  final Categoria categoria;

  DetalhesCategoriaScreen(this.categoria);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(categoria.titulo),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 150,
              height: 150,
              color: categoria.color,
              child: Icon(
                Icons.restaurant,
                size: 100,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Detalhes da Categoria',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Aqui você pode adicionar mais informações sobre a categoria.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
