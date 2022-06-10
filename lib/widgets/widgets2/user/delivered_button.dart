import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:pharmapoint/screens/user/pedido_detail_screen.dart';

class Delivered extends StatefulWidget {
  final String pedidoId;
  final bool delivered;
  final String title;
  var estimatedCost;
  final Timestamp requestTime;
  bool hasPrescription;
  bool isAccepted;
  final int prescriptionNumber;
  final int prescriptionCode;
  final int prescriptionPin;
  final String observations;

  Delivered(
      this.pedidoId,
      this.delivered,
      this.title,
      this.estimatedCost,
      this.requestTime,
      this.hasPrescription,
      this.isAccepted,
      this.prescriptionNumber,
      this.prescriptionCode,
      this.prescriptionPin,
      this.observations,
      {Key key})
      : super(key: key);

  @override
  State<Delivered> createState() => _DeliveredState(delivered: this.delivered);
}

class _DeliveredState extends State<Delivered> {
  bool delivered = false;
  _DeliveredState({this.delivered});

  Future<void> _updateDelivered(pedidoId) async {
    await FirebaseFirestore.instance.collection('pedido').doc(pedidoId).update({
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
                setState(() {});
                _updateDelivered(widget.pedidoId);
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PedidoDetailScreen(
                          widget.pedidoId,
                          widget.title,
                          widget.estimatedCost,
                          widget.requestTime,
                          widget.hasPrescription,
                          widget.isAccepted,
                          widget.prescriptionNumber,
                          widget.prescriptionCode,
                          widget.prescriptionPin,
                          widget.observations,
                          widget
                              .delivered)), // this mymainpage is your page to refresh
                  (Route<dynamic> route) => false,
                );
              },
            ))));
  }
}
