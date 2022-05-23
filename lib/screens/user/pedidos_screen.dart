// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:pharmapoint/widgets/widgets2/user/pedido_list.dart';

class PedidosScreen extends StatelessWidget {
  const PedidosScreen({Key key}) : super(key: key);

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
            child: Pedidos(),
          ),
        ],
      ),
    );
  }
}
