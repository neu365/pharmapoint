import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Delivered extends StatefulWidget {
  final String pedidoId;
  final bool delivered;
  Delivered(this.pedidoId, this.delivered, {Key key}) : super(key: key);

  @override
  State<Delivered> createState() => _DeliveredState(delivered: this.delivered);
}

class _DeliveredState extends State<Delivered> {
  bool delivered = false;
  _DeliveredState({this.delivered});

  Future<void> _updateDelivered(pedidoId) async {
    await FirebaseFirestore.instance
        .collection('pedidos')
        .doc(pedidoId)
        .update({
      'requestDelivered': true,
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(5),
        child: Padding(
            padding: const EdgeInsets.all(
              10,
            ),
            child: Card(
                child: TextButton(
              style: TextButton.styleFrom(
                primary: Colors.green[900],
              ),
              child: const Text(
                'Confirmar entrega!',
                style: TextStyle(fontSize: 18),
              ),
              onPressed: () {
                setState(() {
                  delivered = !delivered;
                });
                _updateDelivered(widget.pedidoId);
              },
            ))));
  }
}
