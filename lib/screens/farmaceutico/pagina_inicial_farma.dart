import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:pharmapoint/widgets/widgets2/farma/chat_pharma/chat_button.dart';
import 'package:pharmapoint/widgets/widgets2/farma/chat_pharma/recentes_butao.dart';
import 'package:pharmapoint/widgets/widgets2/user/novopedido_butao.dart';

class PaginaInicialFarma extends StatelessWidget {
  const PaginaInicialFarma({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PharmaPoint - Farmacêutico'),
        backgroundColor: Theme.of(context).primaryColor,
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
                    Icon(
                      Icons.edit,
                      color: Colors.green,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text('Editar perfil'),
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
        Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const ChatButton(),
          const SizedBox(height: 10, width: 10),
          const Recentes(),
        ]),
      ]),
    );
  }
}
