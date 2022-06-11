import 'package:flutter/material.dart';
import 'package:pharmapoint/screens/farmaceutico/users_list.dart';

class ChatButton extends StatelessWidget {
  const ChatButton({Key key}) : super(key: key);

  void selectUsers(BuildContext ctx) {
    Navigator.of(ctx).push(
      MaterialPageRoute(
        builder: (_) {
          return const UsersList();
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 100,
      child: ElevatedButton(
          onPressed: () {
            selectUsers(context);
          },
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
              Colors.green[100],
            ),
            padding: MaterialStateProperty.all(
                const EdgeInsets.symmetric(horizontal: 100, vertical: 20)),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Chat',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                width: 10,
                height: 8,
              ),
              Icon(
                Icons.chat,
                color: Colors.green[900],
              )
            ],
          )),
    );
  }
}
