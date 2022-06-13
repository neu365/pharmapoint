import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';

class PalavraPasse extends StatefulWidget {
  const PalavraPasse({Key key}) : super(key: key);

  @override
  _PalavraPasseState createState() => _PalavraPasseState();
}

class _PalavraPasseState extends State<PalavraPasse> {
  TextEditingController emailTextController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    emailTextController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        automaticallyImplyLeading: false,
        title: const Text(
          'Recuperar palavra-passe',
          textAlign: TextAlign.center,
        ),
        actions: [],
        centerTitle: false,
        elevation: 2,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Align(
                      alignment: const AlignmentDirectional(0.55, 0),
                      child: TextFormField(
                        controller: emailTextController,
                        onChanged: (_) => EasyDebounce.debounce(
                          'emailTextController',
                          const Duration(milliseconds: 2000),
                          () => setState(() {}),
                        ),
                        autofocus: true,
                        obscureText: false,
                        decoration: const InputDecoration(
                          labelText: 'Email',
                          hintText: '[Email...]',
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1,
                            ),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(4.0),
                              topRight: Radius.circular(4.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              TextButton(
                onPressed: () async {
                  if (emailTextController.text.isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text(
                          'Email obrigatório!',
                        ),
                      ),
                    );
                    return;
                  }
                  /*await resetPassword(
                    email: emailTextController.text,
                    context: context,
                  );*/
                },
                child: const Text('Guardar '),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
