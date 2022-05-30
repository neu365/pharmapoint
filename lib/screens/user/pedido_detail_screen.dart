// ignore_for_file: must_be_immutable

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:pharmapoint/widgets/widgets2/user/pedido_detail.dart';

class PedidoDetailScreen extends StatelessWidget {
  final String title;
  final double estimatedCost;
  final Timestamp requestTime;
  bool hasPrescription;
  bool isAccepted;
  final int prescriptionNumber;
  final int prescritionCode;
  final int prescriptionPin;
  final String observations;
  final bool requestDelivered;

  PedidoDetailScreen(
    this.title,
    this.estimatedCost,
    this.requestTime,
    this.hasPrescription,
    this.isAccepted,
    this.prescriptionNumber,
    this.prescritionCode,
    this.prescriptionPin,
    this.observations,
    this.requestDelivered,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('Detalhes do pedido $title'),
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
                title,
                estimatedCost,
                requestTime,
                hasPrescription,
                isAccepted,
                prescriptionNumber,
                prescritionCode,
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
