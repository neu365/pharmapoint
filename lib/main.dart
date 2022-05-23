import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:pharmapoint/screens/auth_screen.dart';
import 'package:pharmapoint/screens/farmaceutico/pagina_inicial_farma.dart';
import 'package:pharmapoint/screens/user/pagina_inicial_user.dart';
import 'package:pharmapoint/screens/splash_screen.dart';

import 'package:firebase_core/firebase_core.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Future<FirebaseApp> initialization = Firebase.initializeApp();
    return FutureBuilder(
        // Initialize FlutterFire:
        future: initialization,
        builder: (context, appSnapshot) {
          return MaterialApp(
            title: 'FlutterChat',
            theme: ThemeData(
              primaryColor: Colors.green,
              secondaryHeaderColor: Colors.black,
              backgroundColor: Colors.grey[50],
              buttonTheme: ButtonTheme.of(context).copyWith(
                buttonColor: Colors.green,
                textTheme: ButtonTextTheme.primary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.green)
                  .copyWith(secondary: Colors.green[900]),
            ),
            home: appSnapshot.connectionState != ConnectionState.done
                ? const SplashScreen()
                : StreamBuilder(
                    stream: FirebaseAuth.instance.authStateChanges(),
                    builder: (context, userSnapshot) {
                      if (userSnapshot.connectionState ==
                          ConnectionState.waiting) {
                        return const SplashScreen();
                      }
                      if (userSnapshot.hasData) {
                        if (FirebaseAuth.instance.currentUser.uid ==
                            'NpfvAtAaKHg3zEXKlxTWXIjVrsd2') {
                          return const PaginaInicialFarma();
                        } else {
                          return const PaginaInicialUser();
                        }
                      }
                      return const AuthScreen();
                    }),
          );
        });
  }
}
