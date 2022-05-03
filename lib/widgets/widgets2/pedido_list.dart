import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:pharmapoint/widgets/widgets2/pedido_item.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Pedidos extends StatelessWidget {
  const Pedidos({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;
    return StreamBuilder(
      stream: FirebaseFirestore.instance
          .collection('pedido')
          .orderBy(
            'requestTime',
          )
          .snapshots(),
      builder: (ctx, AsyncSnapshot<QuerySnapshot> pedidoSnapshot) {
        if (pedidoSnapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
        if (pedidoSnapshot.data == null) {
          return const Center(child: Text('A lista de pedidos está vazia!'));
        }
        final pedidoDocs = pedidoSnapshot.data.docs;
        return ListView.builder(
          itemCount: pedidoDocs.length,
          itemBuilder: (ctx, index) => PedidoItem(
            pedidoDocs[index].data()['title'],
            pedidoDocs[index].data()['estimatedCost'],
            pedidoDocs[index].data()['requestTime'],
            pedidoDocs[index].data()['isAccepted'],
            pedidoDocs[index].data()['hasPrescription'],
            pedidoDocs[index].data()['userId'],
            pedidoDocs[index].data()['userId'] == user.uid,
            key: ValueKey(pedidoDocs[index].id),
          ),
        );
      },
    );
  }
}
