// ignore_for_file: use_key_in_widget_constructors, overridden_fields

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
//import 'package:intl/intl.dart';
import 'package:pharmapoint/screens/pedido_detail_screen.dart';

class PedidoItem extends StatelessWidget {
  const PedidoItem(
      this.title,
      this.estimatedCost,
      this.requestTime,
      this.isAccepted,
      this.hasPrescription,
      this.userName,
      this.isMe,
      this.length,
      {this.key});

  final String title;
  final num estimatedCost;
  final Timestamp requestTime;
  final bool isAccepted;
  final bool hasPrescription;
  final String userName;
  final bool isMe;
  final int length;
  @override
  final Key key;

  @override
  Widget build(BuildContext context) {
    void selectPedido(BuildContext ctx) {
      Navigator.of(ctx).push(
        MaterialPageRoute(
          builder: (_) {
            return PedidoDetailScreen(
              title,
              estimatedCost,
              'resquestTime',
              isAccepted,
              hasPrescription,
            );
          },
        ),
      );
    }

    return Card(
      elevation: 5,
      margin: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 5,
      ),
      child: InkWell(
        splashColor: Colors.blue.withAlpha(30),
        onTap: () {
          selectPedido(context);
        },
        child: ListTile(
          leading: CircleAvatar(
            radius: 30,
            backgroundColor: Colors.green[50],
            child: Padding(
              padding: const EdgeInsets.all(6),
              child: FittedBox(
                child: Text(
                  '${estimatedCost}€',
                  style: TextStyle(
                      color: Colors.green[900], fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          title: Text(
            title,
            style: const TextStyle(fontSize: 18),
          ),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'requestTime' /*DateFormat.yMEd().format(pedidos[index].requestTime)*/,
              ),
              Row(
                children: [
                  isAccepted == true
                      ? const SizedBox(
                          width: 100,
                          height: 20,
                          child: Text('Aceite',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.green,
                              )),
                        )
                      : const SizedBox(
                          width: 100,
                          height: 20,
                          child: Text('Pendente',
                              style: TextStyle(
                                  fontSize: 12, color: Colors.orange)),
                        ),
                ],
              ),
            ],
          ),
          trailing: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.delete),
            color: Colors.green[900],
          ),
        ),
      ),
    );
  }
}
