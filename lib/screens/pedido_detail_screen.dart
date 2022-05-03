// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:pharmapoint/widgets/widgets2/pedido_detail.dart';

class PedidoDetailScreen extends StatelessWidget {
  final int id;
  final String title;
  final double estimatedCost;
  final int utilizadorId;
  final int farmaceuticoId;
  final DateTime requestTime;
  bool isAccepted;
  bool hasPrescription;
  final int prescriptionNumber;

  PedidoDetailScreen(
      this.id,
      this.title,
      this.estimatedCost,
      this.utilizadorId,
      this.farmaceuticoId,
      this.requestTime,
      this.isAccepted,
      this.hasPrescription,
      this.prescriptionNumber,
      {Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text('Detalhes do pedido $id'),
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
                id,
                title,
                estimatedCost,
                utilizadorId,
                farmaceuticoId,
                requestTime,
                isAccepted,
                hasPrescription,
                prescriptionNumber,
              )
            ],
          ),
        ),
      ),
    );
  }
}
