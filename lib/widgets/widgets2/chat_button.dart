import 'package:flutter/material.dart';
import 'package:pharmapoint/screens/chat_screen.dart';

class ChatButton extends StatelessWidget {
  const ChatButton({Key key}) : super(key: key);

  void selectRecentes(BuildContext ctx) {
    Navigator.of(ctx).push(
      MaterialPageRoute(
        builder: (_) {
          return const ChatScreen();
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      height: 100,
      child: ElevatedButton(
          onPressed: () {
            debugPrint('Button clicked!');
            selectRecentes(context);
          },
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
              Colors.green[100],
            ),
            padding: MaterialStateProperty.all(
                const EdgeInsets.symmetric(horizontal: 100, vertical: 20)),
          ),
          child: const Center(
            child: Text(
              'Chat',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold),
            ),
          )),
    );
  }
}
