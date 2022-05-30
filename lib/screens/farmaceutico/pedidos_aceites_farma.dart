// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class PedidosAceitesScreenFarma extends StatelessWidget {
  const PedidosAceitesScreenFarma({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pedidos'),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          const Expanded(
            child: Text('Parte da Gabi - pedidos aceites'),
          ),
        ],
      ),
    );
  }
}
