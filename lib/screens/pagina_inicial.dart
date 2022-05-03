import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:pharmapoint/widgets/widgets2/chat_button.dart';
import 'package:pharmapoint/widgets/widgets2/notificacoes.dart';
import 'package:pharmapoint/widgets/widgets2/recentes_butao.dart';
import 'package:pharmapoint/widgets/widgets2/novopedido_butao.dart';

class PaginaInicial extends StatelessWidget {
  const PaginaInicial({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PharmaPoint'),
        backgroundColor: Colors.green[600],
        centerTitle: true,
        actions: [
          DropdownButton(
            underline: Container(),
            icon: const Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
            items: [
              DropdownMenuItem(
                value: 'logout',
                child: Row(
                  children: const [
                    Icon(
                      Icons.exit_to_app,
                      color: Colors.green,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text('Logout'),
                  ],
                ),
              ),
            ],
            onChanged: (itemIdentifier) {
              if (itemIdentifier == 'logout') {
                FirebaseAuth.instance.signOut();
              }
            },
          )
        ],
      ),
      body: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        // ignore: prefer_const_literals_to_create_immutables
        Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          const Notificacoes(),
          const ChatButton(),
          const Recentes(),
          const NovoPedido(),
        ]),
      ]),
    );
  }
}
