// ignore_for_file: prefer_const_constructors_in_immutables, deprecated_member_use

import 'package:flutter/material.dart';

class AuthForm extends StatefulWidget {
  AuthForm(this.submitFn, this.isLoading, {Key key}) : super(key: key);

  final bool isLoading;
  final void Function(
    String email,
    String password,
    String userName,
    String userPhone,
    bool isUser,
    bool isLogin,
    BuildContext ctx,
  ) submitFn;

  @override
  AuthFormState createState() => AuthFormState();
}

class AuthFormState extends State<AuthForm> {
  final _formKey = GlobalKey<FormState>();
  var _isLogin = true;
  var _userEmail = '';
  var _userName = '';
  final _isUser = true;
  var _userPassword = '';
  var _userPhone = '';

  void _trySubmit() {
    final isValid = _formKey.currentState.validate();
    FocusScope.of(context).unfocus();

    if (isValid) {
      _formKey.currentState.save();
      widget.submitFn(_userEmail.trim(), _userPassword.trim(), _userName.trim(),
          _userPhone.trim(), _isUser, _isLogin, context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(20),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                TextFormField(
                  key: const ValueKey('email'),
                  autocorrect: false,
                  textCapitalization: TextCapitalization.none,
                  enableSuggestions: false,
                  validator: (value) {
                    if (value.isEmpty || !value.contains('@')) {
                      return 'Por favor introduza um endereço de email válido';
                    }
                    return null;
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    labelText: 'Endereço de email',
                  ),
                  onSaved: (value) {
                    _userEmail = value;
                  },
                ),
                if (!_isLogin)
                  TextFormField(
                    key: const ValueKey('username'),
                    autocorrect: true,
                    textCapitalization: TextCapitalization.words,
                    enableSuggestions: false,
                    validator: (value) {
                      if (value.isEmpty || value.length < 4) {
                        return 'Por favor, introduza pelo menos 4 carateres';
                      }
                      return null;
                    },
                    decoration:
                        const InputDecoration(labelText: 'Nome e Apelido'),
                    onSaved: (value) {
                      _userName = value;
                    },
                  ),
                if (!_isLogin)
                  TextFormField(
                    key: const ValueKey('phoneNumber'),
                    autocorrect: true,
                    textCapitalization: TextCapitalization.words,
                    enableSuggestions: false,
                    validator: (value) {
                      if (value.isEmpty || value.length < 9) {
                        return 'Por favor, introduza um número válido';
                      }
                      return null;
                    },
                    decoration:
                        const InputDecoration(labelText: 'Número de telefone'),
                    onSaved: (value) {
                      _userPhone = value;
                    },
                  ),
                TextFormField(
                  key: const ValueKey('password'),
                  validator: (value) {
                    if (value.isEmpty || value.length < 7) {
                      return 'A palavra-passe deve ter pelo menos 7 carateres';
                    }
                    return null;
                  },
                  decoration: const InputDecoration(labelText: 'Palavra-passe'),
                  obscureText: true,
                  onSaved: (value) {
                    _userPassword = value;
                  },
                ),
                const SizedBox(height: 12),
                if (widget.isLoading) const CircularProgressIndicator(),
                if (!widget.isLoading)
                  ElevatedButton(
                    onPressed: _trySubmit,
                    child: Text(_isLogin ? 'Entrar' : 'Registar-se'),
                  ),
                if (!widget.isLoading)
                  TextButton(
                    child: Text(
                      _isLogin
                          ? 'Criar uma conta nova'
                          : 'Eu já tenho uma conta!',
                      style: const TextStyle(
                        color: Color.fromARGB(255, 1, 39, 2),
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        _isLogin = !_isLogin;
                      });
                    },
                  )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
