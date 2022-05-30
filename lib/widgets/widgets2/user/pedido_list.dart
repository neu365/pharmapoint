import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:pharmapoint/widgets/widgets2/user/pedido_item.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Pedidos extends StatelessWidget {
  const Pedidos({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;
    return StreamBuilder(
      stream: FirebaseFirestore.instance
          .collection('pedido')
          .orderBy('requestTime', descending: true)
          .where('userId', isEqualTo: user.uid)
          .snapshots(),
      builder: (context, AsyncSnapshot<QuerySnapshot> pedidoSnapshot) {
        if (pedidoSnapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        if (!pedidoSnapshot.hasData) {
          return const Center(child: Text('A lista de pedidos está vazia!'));
        } else {
          final pedidoDocs = pedidoSnapshot.data.docs;

          return ListView.builder(
            itemCount: pedidoDocs.length,
            itemBuilder: (context, index) => PedidoItem(
              pedidoDocs[index].data()['title'],
              pedidoDocs[index].data()['estimatedCost'],
              pedidoDocs[index].data()['requestTime'],
              pedidoDocs[index].data()['hasPrescription'],
              pedidoDocs[index].data()['isAccepted'],
              pedidoDocs[index].data()['prescriptionNumber'],
              pedidoDocs[index].data()['prescriptionCode'],
              pedidoDocs[index].data()['prescriptionPin'],
              pedidoDocs[index].data()['observations'],
              pedidoDocs[index].data()['requestDelivered'],
              pedidoDocs[index].data()['userName'],
              pedidoDocs[index].data()['userId'] == user.uid,
              pedidoDocs.length,
              key: ValueKey(pedidoDocs[index].id),
            ),
          );
        }
      },
    );
  }
}
