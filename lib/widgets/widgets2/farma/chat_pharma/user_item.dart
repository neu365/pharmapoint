// ignore_for_file: use_key_in_widget_constructors, overridden_fields

import 'package:flutter/material.dart';
import 'package:pharmapoint/screens/chat_screen.dart';

class UserItem extends StatelessWidget {
  const UserItem(this.username, this.clientId);

  final String username;
  final String clientId;

  @override
  Widget build(BuildContext context) {
    void selectUser(BuildContext ctx) {
      Navigator.of(ctx).push(
        MaterialPageRoute(
          builder: (_) {
            return ChatScreen(clientId);
          },
        ),
      );
    }

    return Card(
      elevation: 5,
      margin: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 5,
      ),
      child: InkWell(
        splashColor: Colors.blue.withAlpha(30),
        onTap: () {
          selectUser(context);
        },
        child: ListTile(
          title: Text(
            username,
            style: const TextStyle(fontSize: 18),
          ),
        ),
      ),
    );
  }
}
