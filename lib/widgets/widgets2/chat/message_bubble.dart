// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class MessageBubble extends StatelessWidget {
  const MessageBubble(this.message, this.userName, this.isMe, {this.key});

  final String message;
  final String userName;
  final bool isMe;
  @override
  // ignore: overridden_fields
  final Key key;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            color: isMe
                ? Colors.grey[300]
                : Theme.of(context).colorScheme.secondary,
            borderRadius: BorderRadius.only(
              topLeft: const Radius.circular(12),
              topRight: const Radius.circular(12),
              bottomLeft:
                  !isMe ? const Radius.circular(0) : const Radius.circular(12),
              bottomRight:
                  isMe ? const Radius.circular(0) : const Radius.circular(12),
            ),
          ),
          width: 140,
          padding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 16,
          ),
          margin: const EdgeInsets.symmetric(
            vertical: 4,
            horizontal: 8,
          ),
          child: Column(
            crossAxisAlignment:
                isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                userName,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color:
                      isMe ? const Color.fromARGB(255, 1, 54, 5) : Colors.green,
                ),
              ),
              Text(
                message,
                style: TextStyle(
                  color: isMe ? Colors.black : Colors.green,
                ),
                textAlign: isMe ? TextAlign.end : TextAlign.start,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
