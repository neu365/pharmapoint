// ignore_for_file: must_be_immutable

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:pharmapoint/screens/user/fatura.dart';
import 'package:intl/intl.dart';
import 'package:pharmapoint/screens/user/receita_detail.dart';
import 'package:pharmapoint/widgets/widgets2/user/delivered_button.dart';

class PedidoDetail extends StatefulWidget {
  final String pedidoId;
  final String title;
  var estimatedCost;
  final Timestamp requestTime;
  bool hasPrescription;
  bool isAccepted;
  final int prescriptionNumber;
  final int prescritionCode;
  final int prescriptionPin;
  final String observations;
  bool requestDelivered;

  PedidoDetail(
    this.pedidoId,
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
    DateTime myDateTime = widget.requestTime.toDate();

    void selectFatura(BuildContext ctx) {
      Navigator.of(ctx).push(
        MaterialPageRoute(
          builder: (_) {
            return FaturaWidget(widget.estimatedCost);
          },
        ),
      );
    }

    void selectReceita(BuildContext ctx) {
      Navigator.of(ctx).push(
        MaterialPageRoute(
          builder: (_) {
            return ReceitaDetail(widget.prescriptionNumber,
                widget.prescriptionPin, widget.prescritionCode);
          },
        ),
      );
    }

    return Center(
        child: Column(children: <Widget>[
      Container(
        margin: const EdgeInsets.all(5),
        child: Padding(
          padding: const EdgeInsets.all(
            10,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Pedido: ',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                widget.title,
                style: const TextStyle(fontSize: 20),
                maxLines: 3,
              ),
            ],
          ),
        ),
      ),
      Container(
        margin: const EdgeInsets.all(5),
        child: Padding(
          padding: const EdgeInsets.all(
            10,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Preço: ',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                widget.estimatedCost.toString() + ' €',
                style: const TextStyle(fontSize: 20),
                maxLines: 3,
              ),
            ],
          ),
        ),
      ),
      Container(
        margin: const EdgeInsets.all(5),
        child: Padding(
          padding: const EdgeInsets.all(
            10,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Data do pedido: ',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                DateFormat.yMEd().format(myDateTime),
                style: const TextStyle(fontSize: 20),
                maxLines: 3,
              ),
            ],
          ),
        ),
      ),
      Container(
        margin: const EdgeInsets.all(5),
        child: Padding(
          padding: const EdgeInsets.all(
            10,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Com prescrição : ',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              widget.hasPrescription
                  ? const Icon(
                      Icons.check,
                      color: Colors.green,
                    )
                  : const Icon(
                      Icons.close,
                      color: Colors.red,
                    )
            ],
          ),
        ),
      ),
      Container(
        margin: const EdgeInsets.all(5),
        child: Padding(
          padding: const EdgeInsets.all(
            10,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Observações: ',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                widget.observations,
                style: const TextStyle(fontSize: 18),
              ),
            ],
          ),
        ),
      ),
      widget.hasPrescription == true
          ? Card(
              child: TextButton(
              style: TextButton.styleFrom(
                primary: Colors.green[900],
              ),
              child: const Text(
                'Detalhes da receita',
                style: TextStyle(fontSize: 18),
              ),
              onPressed: () {
                selectReceita(context);
              },
            ))
          : Container(),
      Container(
        margin: const EdgeInsets.all(5),
        child: Padding(
          padding: const EdgeInsets.all(
            10,
          ),
          child: widget.isAccepted
              ? widget.requestDelivered
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                          const Text(
                            'O pedido já foi entregue! ',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          IconButton(
                              color: Theme.of(context).primaryColor,
                              icon: const Icon(
                                Icons.list_alt,
                              ),
                              onPressed: () {
                                selectFatura(context);
                              }),
                        ])
                  : Delivered(
                      widget.pedidoId,
                      widget.requestDelivered,
                      widget.title,
                      widget.estimatedCost,
                      widget.requestTime,
                      widget.hasPrescription,
                      widget.isAccepted,
                      widget.prescriptionNumber,
                      widget.prescritionCode,
                      widget.prescriptionPin,
                      widget.observations)
              : Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'O pedido ainda não foi aceite! ',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.red[900]),
                    ),
                  ],
                ),
        ),
      ),
    ]));
  }
}
