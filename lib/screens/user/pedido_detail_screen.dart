// ignore_for_file: must_be_immutable

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:pharmapoint/widgets/widgets2/user/pedido_detail.dart';

class PedidoDetailScreen extends StatelessWidget {
  final String pedidoId;
  final String title;
  var estimatedCost;
  final Timestamp requestTime;
  bool hasPrescription;
  bool isAccepted;
  final int prescriptionNumber;
  final int prescriptionCode;
  final int prescriptionPin;
  final String observations;
  bool requestDelivered;

  PedidoDetailScreen(
    this.pedidoId,
    this.title,
    this.estimatedCost,
    this.requestTime,
    this.hasPrescription,
    this.isAccepted,
    this.prescriptionNumber,
    this.prescriptionCode,
    this.prescriptionPin,
    this.observations,
    this.requestDelivered,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('Detalhes do pedido'),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              PedidoDetail(
                pedidoId,
                title,
                estimatedCost,
                requestTime,
                hasPrescription,
                isAccepted,
                prescriptionNumber,
                prescriptionCode,
                prescriptionPin,
                observations,
                requestDelivered,
              )
            ],
          ),
        ),
      ),
    );
  }
}
