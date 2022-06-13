// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class ReceitaDetail extends StatefulWidget {
  final int prescriptionNumber;
  final int prescritionCode;
  final int prescriptionPin;

  ReceitaDetail(
    this.prescriptionNumber,
    this.prescritionCode,
    this.prescriptionPin,
  );

  @override
  State<ReceitaDetail> createState() => _ReceitaDetailState();
}

class _ReceitaDetailState extends State<ReceitaDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalhes da receita'),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: Center(
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
                  'Número da receita: ',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  widget.prescriptionNumber.toString(),
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
                  'PIN: ',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  widget.prescriptionPin.toString(),
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
                  'Código opção: ',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Text(
                  widget.prescritionCode.toString(),
                  style: const TextStyle(fontSize: 20),
                  maxLines: 3,
                ),
              ],
            ),
          ),
        ),
      ])),
    );
  }
}
