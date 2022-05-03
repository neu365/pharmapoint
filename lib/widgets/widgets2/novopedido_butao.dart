import 'package:flutter/material.dart';

class NovoPedido extends StatelessWidget {
  const NovoPedido({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      height: 100,
      child: ElevatedButton(
          onPressed: () {
            debugPrint('Button clicked!');
          },
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.green),
            padding: MaterialStateProperty.all(
                const EdgeInsets.symmetric(horizontal: 20, vertical: 20)),
          ),
          child: const Center(
            child: Text(
              'Novo pedido',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold),
            ),
          )),
    );
  }
}
