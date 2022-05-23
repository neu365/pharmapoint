import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:pharmapoint/widgets/widgets2/farma/chat_pharma/user_item.dart';

class UsersList extends StatelessWidget {
  const UsersList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Utilizadores'),
        backgroundColor: Colors.green,
      ),
      body: StreamBuilder(
        //stream: FirebaseFirestore.instance.collection('users').snapshots(),
        stream: FirebaseFirestore.instance
            .collection('users')
            .where("isUser", isEqualTo: true)
            .snapshots(),
        builder: (context, AsyncSnapshot<QuerySnapshot> usersSnapshot) {
          if (usersSnapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          if (!usersSnapshot.hasData) {
            return const Center(
                child: Text('A lista de utilizadores está vazia!'));
          } else {
            final usersDocs = usersSnapshot.data.docs;
            return ListView.builder(
                itemCount: usersDocs.length,
                itemBuilder: (context, index) {
                  return UserItem(
                      usersDocs[index].data()['username'], usersDocs[index].id);
                });
          }
        },
      ),
    );
  }
}
