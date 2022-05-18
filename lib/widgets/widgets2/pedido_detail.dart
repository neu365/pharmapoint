// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:pharmapoint/screens/fatura.dart';

class PedidoDetail extends StatelessWidget {
  final String title;
  final double estimatedCost;
  final DateTime requestTime;
  bool isAccepted;
  bool hasPrescription;

  PedidoDetail(
    this.title,
    this.estimatedCost,
    this.requestTime,
    this.isAccepted,
    this.hasPrescription,
  );

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
                    '$estimatedCost€ ',
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
                  const Text('Prescrição: ',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                  hasPrescription
                      ? const Text('Sim', style: TextStyle(fontSize: 20))
                      : const Text('Não', style: TextStyle(fontSize: 20)),
                ],
              ),
              Row(
                children: [
                  const Text('Fatura:',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                  IconButton(
                    onPressed: () {
                      selectFatura(context);
                    },
                    icon: const Icon(Icons.assignment),
                    color: Colors.green[900],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
