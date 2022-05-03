import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:pharmapoint/widgets/auth/auth_form.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({Key key}) : super(key: key);

  @override
  AuthScreenState createState() => AuthScreenState();
}

class AuthScreenState extends State<AuthScreen> {
  final _auth = FirebaseAuth.instance;
  var _isLoading = false;

  void _submitAuthForm(
    String email,
    String password,
    String username,
    bool isLogin,
    BuildContext ctx,
  ) async {
    UserCredential authResult;

    try {
      setState(() {
        _isLoading = true;
      });
      if (isLogin) {
        authResult = await _auth.signInWithEmailAndPassword(
          email: email,
          password: password,
        );
      } else {
        authResult = await _auth.createUserWithEmailAndPassword(
          email: email,
          password: password,
        );
        await FirebaseFirestore.instance
            .collection('users')
            .doc(authResult.user.uid)
            .set({
          'username': username,
          'email': email,
        });
      }
    } on PlatformException catch (err) {
      var message = 'Um erro ocorreu, por favor verifique as credenciais!';

      if (err.message != null) {
        message = err.message;
      }

      // ignore: deprecated_member_use
      Scaffold.of(ctx).showSnackBar(
        SnackBar(
          content: Text(message),
          backgroundColor: Theme.of(ctx).errorColor,
        ),
      );
      setState(() {
        _isLoading = false;
      });
    } catch (err) {
      //print(err);
      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[500],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Pharmapoint',
            style: TextStyle(
                color: Color.fromARGB(255, 1, 39, 2),
                fontSize: 40,
                fontWeight: FontWeight.bold),
          ),
          AuthForm(
            _submitAuthForm,
            _isLoading,
          ),
        ],
      ),
    );
  }
}
