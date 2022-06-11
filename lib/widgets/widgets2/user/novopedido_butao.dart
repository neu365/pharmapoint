// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:pharmapoint/screens/user/criarnovopedido.dart';

class NovoPedido extends StatelessWidget {
  const NovoPedido({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void selectNovo(BuildContext ctx) {
      Navigator.of(ctx).push(
        MaterialPageRoute(
          builder: (_) {
            return CriarNovoPedidoWidget();
          },
        ),
      );
    }

    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 100,
      child: ElevatedButton(
          onPressed: () {
            selectNovo(context);
          },
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.green[400]),
            padding: MaterialStateProperty.all(
                const EdgeInsets.symmetric(horizontal: 20, vertical: 20)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Novo pedido',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                width: 10,
                height: 8,
              ),
              Icon(
                Icons.add,
                color: Colors.green[900],
              )
            ],
          )),
    );
  }
}
