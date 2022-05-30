import 'package:flutter/material.dart';

import 'package:pharmapoint/screens/farmaceutico/pedidos_pendentes_farma.dart';

class PendentesButton extends StatelessWidget {
  const PendentesButton({Key key}) : super(key: key);

  void selectRecentes(BuildContext ctx) {
    Navigator.of(ctx).push(
      MaterialPageRoute(
        builder: (_) {
          return PedidosPendentesWidget();
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      height: 100,
      child: ElevatedButton(
          onPressed: () {
            selectRecentes(context);
          },
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
              Colors.green[300],
            ),
            padding: MaterialStateProperty.all(
                const EdgeInsets.symmetric(horizontal: 10, vertical: 20)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Pedidos pendentes',
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
                Icons.list_alt,
                color: Colors.green[900],
              )
            ],
          )),
    );
  }
}
