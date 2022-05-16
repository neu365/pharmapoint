// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:pharmapoint/widgets/widgets2/pedido_detail.dart';

class PedidoDetailScreen extends StatelessWidget {
  final String title;
  final double estimatedCost;
  final String requestTime;
  bool isAccepted;
  bool hasPrescription;

  PedidoDetailScreen(this.title, this.estimatedCost, this.requestTime,
      this.isAccepted, this.hasPrescription);
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
                isAccepted,
                hasPrescription,
              )
            ],
          ),
        ),
      ),
    );
  }
}
