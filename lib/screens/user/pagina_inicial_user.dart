import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:pharmapoint/widgets/widgets2/user/chat_button.dart';
import 'package:pharmapoint/widgets/widgets2/user/recentes_butao.dart';
import 'package:pharmapoint/widgets/widgets2/user/novopedido_butao.dart';

class PaginaInicialUser extends StatelessWidget {
  const PaginaInicialUser({Key key}) : super(key: key);
  List<DropdownMenuItem<String>> get dropdownItems {
    List<DropdownMenuItem<String>> menuItems = [
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
          )),
      DropdownMenuItem(
          value: 'edit',
          child: Row(
            children: const [
              Icon(
                Icons.account_circle,
                color: Colors.green,
              ),
              SizedBox(
                width: 8,
              ),
              Text('Editar perfil'),
            ],
          )),
      DropdownMenuItem(value: ' ', child: Container()),
    ];
    return menuItems;
  }

  @override
  Widget build(BuildContext context) {
    String selectedValue = " ";
    return Scaffold(
      appBar: AppBar(
        title: const Text('PharmaPoint'),
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
        actions: [
          DropdownButton(
            value: selectedValue,
            underline: Container(),
            icon: const Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
            items: dropdownItems,
            onChanged: (itemIdentifier) {
              if (itemIdentifier == ' ') {}
              if (itemIdentifier == 'logout') {
                FirebaseAuth.instance.signOut();
              }
              if (itemIdentifier == 'edit') {
                //escrever aqui a classe para a p??gina de editar perfil
                //para a p??gina de perfil criar um novo documento (nova classe) em screens
              }
            },
          ),
        ],
      ),
      body: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        // ignore: prefer_const_literals_to_create_immutables
        Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const ChatButton(),
          const SizedBox(height: 10, width: 10),
          const Recentes(),
          const SizedBox(height: 10, width: 10),
          const NovoPedido(),
        ]),
      ]),
    );
  }
}
