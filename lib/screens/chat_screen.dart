// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:pharmapoint/widgets/widgets2/chat_pharma/message.dart';
import 'package:pharmapoint/widgets/widgets2/chat_pharma/new_message.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen(this.clientId, {Key key}) : super(key: key);

  final String clientId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chat'),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          Expanded(
            child: Messages(clientId),
          ),
          NewMessage(clientId),
        ],
      ),
    );
  }
}
