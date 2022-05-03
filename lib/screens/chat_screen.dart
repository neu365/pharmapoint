// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:pharmapoint/widgets/widgets2/chat/message.dart';
import 'package:pharmapoint/widgets/widgets2/chat/new_message.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chat'),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          const Expanded(
            child: Messages(),
          ),
          const NewMessage(),
        ],
      ),
    );
  }
}
