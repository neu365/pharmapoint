// ignore_for_file: prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:pharmapoint/widgets/widgets2/chat_pharma/message_bubble.dart';

class Messages extends StatelessWidget {
  Messages(this.clientId, {Key key}) : super(key: key);
  final user = FirebaseAuth.instance.currentUser;
  final String clientId;

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;
    print(clientId);
    return StreamBuilder(
      stream: FirebaseFirestore.instance
          .collection("chats")
          .orderBy('createdAt', descending: true)
          .where('clientId', isEqualTo: clientId)
          .snapshots(),
      builder: (ctx, AsyncSnapshot<QuerySnapshot> chatsSnapshot) {
        if (chatsSnapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: const CircularProgressIndicator(),
          );
        }
        if (!chatsSnapshot.hasData) {
          return const Center(child: Text('Sem mensagens!'));
        } else {
          final chatsDocs = chatsSnapshot.data.docs;
          return ListView.builder(
            reverse: true,
            itemCount: chatsDocs.length,
            itemBuilder: (ctx, index) => MessageBubble(
              chatsDocs[index].data()['text'],
              chatsDocs[index].data()['username'],
              chatsDocs[index].data()['userId'] == user.uid,
              key: ValueKey(chatsDocs[index].id),
            ),
          );
        }
      },
    );
  }
}
