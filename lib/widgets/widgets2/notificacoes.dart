import 'package:flutter/material.dart';

class Notificacoes extends StatelessWidget {
  const Notificacoes({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      height: 200,
      child: Container(
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.green),
          //borderRadius: BorderRadius.all(Radius.circular(20))
        ),
        child: const Center(
          child: Text(
            'Notificações',
            style: TextStyle(
                fontSize: 50.0,
                color: Colors.black,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
