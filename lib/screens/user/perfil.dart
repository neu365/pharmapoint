import 'package:flutter/material.dart';

class PaginaPerfil extends StatelessWidget {
  const PaginaPerfil({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Perfil'),
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
