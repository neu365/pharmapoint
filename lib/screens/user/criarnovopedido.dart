import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:pharmapoint/screens/user/pagina_inicial_user.dart';

class CriarNovoPedidoWidget extends StatefulWidget {
  const CriarNovoPedidoWidget({Key key}) : super(key: key);

  @override
  _CriarNovoPedidoWidgetState createState() => _CriarNovoPedidoWidgetState();
}

class _CriarNovoPedidoWidgetState extends State<CriarNovoPedidoWidget> {
  var titlenew;
  var numeronew;
  var codigonew;
  var pinnew;
  var observacoesnew;

  TextEditingController title;
  bool checkboxListTileValue;
  TextEditingController numero;
  TextEditingController codigo;
  TextEditingController pin;
  TextEditingController observacoes;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  Future _criarPedido(checkboxListTileValue) async {
    FocusScope.of(context).unfocus();
    final user = FirebaseAuth.instance.currentUser;

    if (checkboxListTileValue = false) {
      FirebaseFirestore.instance.collection('pedido').add({
        'title': titlenew,
        'prescriptionNumber': numeronew,
        'prescriptionCode': codigonew,
        'prescriptionPin': pinnew,
        'observations': observacoesnew,
        'userId': user.uid,
        'isAccepted': false,
        'requestDelivered': false,
        'requestTime': Timestamp.now(),
        'hasPrescription': true,
      });
    } else {
      FirebaseFirestore.instance.collection('pedido').add({
        'title': titlenew,
        'observations': observacoesnew,
        'userId': user.uid,
        'isAccepted': false,
        'requestDelivered': false,
        'requestTime': Timestamp.now(),
        'hasPrescription': false,
      });
    }
  }

  @override
  void initState() {
    super.initState();
    title = TextEditingController();
    numero = TextEditingController();
    codigo = TextEditingController();
    pin = TextEditingController();
    observacoes = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: const Text('Novo pedido'),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: ListView(
            padding: EdgeInsets.zero,
            scrollDirection: Axis.vertical,
            children: [
              Theme(
                data: ThemeData(
                  unselectedWidgetColor: Colors.white,
                ),
                child: CheckboxListTile(
                  value: checkboxListTileValue ??= true,
                  onChanged: (newValue) =>
                      setState(() => checkboxListTileValue = newValue),
                  title: const Text(
                    'Com receita',
                  ),
                ),
              ),
              TextFormField(
                controller: title,
                onChanged: (value) {
                  setState(() {
                    titlenew = value;
                  });
                },
                autofocus: true,
                obscureText: false,
                decoration: const InputDecoration(
                  labelText: 'Titulo do Pedido',
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
              if ((checkboxListTileValue) == true)
                const Text(
                  'Dados da receita:',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              if ((checkboxListTileValue) == true)
                TextFormField(
                  controller: numero,
                  onChanged: (value) {
                    setState(() {
                      numeronew = value;
                    });
                  },
                  autofocus: true,
                  obscureText: false,
                  decoration: const InputDecoration(
                    labelText: 'Numero da prescrição',
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
              if ((checkboxListTileValue) == true)
                TextFormField(
                  controller: codigo,
                  onChanged: (value) {
                    setState(() {
                      codigonew = value;
                    });
                  },
                  autofocus: true,
                  obscureText: false,
                  decoration: const InputDecoration(
                    labelText: 'Código da Prescrição',
                    hintText: '[...]',
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
              if ((checkboxListTileValue) == true)
                TextFormField(
                  controller: pin,
                  onChanged: (value) {
                    setState(() {
                      pinnew = value;
                    });
                  },
                  autofocus: true,
                  obscureText: false,
                  decoration: const InputDecoration(
                    labelText: 'PIN da opção',
                    hintText: '[...]',
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
              TextFormField(
                controller: observacoes,
                onChanged: (value) {
                  setState(() {
                    observacoesnew = value;
                  });
                },
                autofocus: true,
                obscureText: false,
                decoration: const InputDecoration(
                  labelText:
                      'Escreva as suas observações e descrição do pedido',
                  hintText: '[...]',
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
              TextButton(
                onPressed: () {
                  _criarPedido(checkboxListTileValue);
                  PaginaInicialUser();
                },
                child: const Text('Adicionar pedido'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
