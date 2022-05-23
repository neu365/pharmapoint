import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class NewMessage extends StatefulWidget {
  final String clientId;

  const NewMessage(this.clientId, {Key key}) : super(key: key);

  @override
  NewMessageState createState() => NewMessageState(clientId: this.clientId);
}

class NewMessageState extends State<NewMessage> {
  final _controller = TextEditingController();
  var _enteredMessage = '';
  String clientId;
  NewMessageState({this.clientId});

  Future _sendMessage(clientId) async {
    FocusScope.of(context).unfocus();
    final pharma = FirebaseAuth.instance.currentUser;

    final pharmaData = await FirebaseFirestore.instance
        .collection('users')
        .doc(pharma.uid)
        .get();
    FirebaseFirestore.instance.collection('chats').add({
      'text': _enteredMessage,
      'createdAt': Timestamp.now(),
      'userId': pharma.uid,
      'username': pharmaData.data()['username'],
      'clientId': clientId,
    });
    _controller.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 8),
      padding: const EdgeInsets.all(8),
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextField(
              controller: _controller,
              textCapitalization: TextCapitalization.sentences,
              autocorrect: true,
              enableSuggestions: true,
              decoration: const InputDecoration(labelText: 'Send a message...'),
              onChanged: (value) {
                setState(() {
                  _enteredMessage = value;
                });
              },
            ),
          ),
          IconButton(
              color: Theme.of(context).primaryColor,
              icon: const Icon(
                Icons.send,
              ),
              onPressed: _enteredMessage.trim().isEmpty
                  ? () => {}
                  : () => _sendMessage(widget.clientId))
        ],
      ),
    );
  }
}
