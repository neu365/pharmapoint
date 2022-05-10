// ignore_for_file: use_key_in_widget_constructors, overridden_fields

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class PedidoItem extends StatelessWidget {
  const PedidoItem(this.title, this.estimatedCost, this.requestTime,
      this.isAccepted, this.hasPrescription, this.userName, this.isMe,
      {this.key});

  final String title;
  final num estimatedCost;
  final Timestamp requestTime;
  final bool isAccepted;
  final bool hasPrescription;
  final String userName;
  final bool isMe;
  @override
  final Key key;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            color: Colors.green[300],
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(12),
              topRight: Radius.circular(12),
              bottomLeft: Radius.circular(12),
              bottomRight: Radius.circular(12),
            ),
          ),
          width: 300,
          padding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 16,
          ),
          margin: const EdgeInsets.symmetric(
            vertical: 4,
            horizontal: 8,
          ),
          child: Column(
            children: <Widget>[
              Text(
                title,
                // ignore: prefer_const_constructors
                style: TextStyle(
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
