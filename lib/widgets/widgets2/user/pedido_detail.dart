// ignore_for_file: must_be_immutable

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:pharmapoint/screens/user/fatura.dart';

class PedidoDetail extends StatefulWidget {
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

  PedidoDetail(
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
  State<PedidoDetail> createState() => _PedidoDetailState();
}

class _PedidoDetailState extends State<PedidoDetail> {
  @override
  Widget build(BuildContext context) {
    void selectFatura(BuildContext ctx) {
      Navigator.of(ctx).push(
        MaterialPageRoute(
          builder: (_) {
            return const FaturaWidget();
          },
        ),
      );
    }

    return Center(
        child: Column(children: <Widget>[
      Container(
        margin: EdgeInsets.all(20),
        child: Table(
          defaultColumnWidth: FixedColumnWidth(120.0),
          border: TableBorder.all(
              color: Colors.black, style: BorderStyle.solid, width: 2),
          children: [
            TableRow(children: [
              Column(
                  children: [Text('Pedido', style: TextStyle(fontSize: 20.0))]),
              Column(children: [
                Text(widget.title, style: TextStyle(fontSize: 20.0))
              ]),
            ]),
            TableRow(children: [
              Column(children: [Text('Valor: ')]),
              Column(children: [Text(widget.estimatedCost.toString())]),
            ]),
            TableRow(children: [
              Column(children: [Text('Data: ')]),
              Column(children: [Text('30/05/2022')]),
            ]),
          ],
        ),
      ),
    ]));
  }
}
