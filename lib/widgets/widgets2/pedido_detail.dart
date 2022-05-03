// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class PedidoDetail extends StatelessWidget {
  final int pedidoId;
  final String title;
  final double estimatedCost;
  final int utilizadorId;
  final int farmaceuticoId;
  final DateTime requestTime;
  bool isAccepted;
  bool hasPrescription;
  final int prescriptionNumber;

  PedidoDetail(
      this.pedidoId,
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
    return SizedBox(
      height: 400,
      width: double.infinity,
      child: Card(
        elevation: 5,
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    'Título: ',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Text(
                    title,
                    style: const TextStyle(fontSize: 20),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
                width: 100,
              ),
              Row(
                children: [
                  const Text('Valor total: ',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                  Text(
                    '$estimatedCost€ ... ',
                    style: const TextStyle(fontSize: 20),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
                width: 100,
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.assignment),
                color: Colors.green[900],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
