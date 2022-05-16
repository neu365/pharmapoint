import 'package:flutter/material.dart';
import 'package:easy_debounce/easy_debounce.dart';

class CriarNovoPedidoWidget extends StatefulWidget {
  const CriarNovoPedidoWidget({Key key}) : super(key: key);

  @override
  _CriarNovoPedidoWidgetState createState() => _CriarNovoPedidoWidgetState();
}

class _CriarNovoPedidoWidgetState extends State<CriarNovoPedidoWidget> {
  bool checkboxListTileValue1;
  bool checkboxListTileValue2;
  TextEditingController textController1;
  TextEditingController textController2;
  TextEditingController textController3;
  TextEditingController textController4;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController1 = TextEditingController();
    textController2 = TextEditingController();
    textController3 = TextEditingController();
    textController4 = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: const Text('Novo Pedido'),
        backgroundColor: Colors.green,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: ListView(
            padding: EdgeInsets.all(10.0),
            scrollDirection: Axis.vertical,
            children: [
              Theme(
                data: ThemeData(
                  unselectedWidgetColor: Color(0xFF95A1AC),
                ),
                child: CheckboxListTile(
                  value: checkboxListTileValue1 ??= false,
                  onChanged: (newValue) =>
                      setState(() => checkboxListTileValue1 = newValue),
                  title: Text(
                    'Com receita',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  tileColor: Color(0xFFF5F5F5),
                  activeColor: Colors.black,
                  dense: false,
                  controlAffinity: ListTileControlAffinity.trailing,
                ),
              ),
              Theme(
                data: ThemeData(
                  unselectedWidgetColor: Color(0xFF95A1AC),
                ),
                child: CheckboxListTile(
                  value: checkboxListTileValue2 ??= false,
                  onChanged: (newValue) =>
                      setState(() => checkboxListTileValue2 = newValue),
                  title: Text(
                    'Sem receita',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  tileColor: Color(0xFFF5F5F5),
                  activeColor: Colors.green,
                  dense: false,
                  controlAffinity: ListTileControlAffinity.trailing,
                ),
              ),
              Text(
                'Dados da receita:',
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [],
              ),
              Text(
                'Número da prescrição:',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              TextFormField(
                controller: textController1,
                onChanged: (_) => EasyDebounce.debounce(
                  'textController1',
                  Duration(milliseconds: 2000),
                  () => setState(() {}),
                ),
                autofocus: true,
                obscureText: false,
                decoration: InputDecoration(
                  hintText: '[...]',
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 1,
                    ),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(4.0),
                      topRight: Radius.circular(4.0),
                    ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 1,
                    ),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(4.0),
                      topRight: Radius.circular(4.0),
                    ),
                  ),
                ),
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              Text(
                'Código da prescrição:',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              TextFormField(
                controller: textController2,
                onChanged: (_) => EasyDebounce.debounce(
                  'textController2',
                  Duration(milliseconds: 2000),
                  () => setState(() {}),
                ),
                autofocus: true,
                obscureText: false,
                decoration: InputDecoration(
                  hintText: '[...]',
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 1,
                    ),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(4.0),
                      topRight: Radius.circular(4.0),
                    ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 1,
                    ),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(4.0),
                      topRight: Radius.circular(4.0),
                    ),
                  ),
                ),
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              Text(
                'PIN da prescrição:',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              TextFormField(
                controller: textController3,
                onChanged: (_) => EasyDebounce.debounce(
                  'textController3',
                  Duration(milliseconds: 2000),
                  () => setState(() {}),
                ),
                autofocus: true,
                obscureText: false,
                decoration: InputDecoration(
                  hintText: '[...]',
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 1,
                    ),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(4.0),
                      topRight: Radius.circular(4.0),
                    ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 1,
                    ),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(4.0),
                      topRight: Radius.circular(4.0),
                    ),
                  ),
                ),
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              Text(
                'Observações:',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              TextFormField(
                controller: textController4,
                onChanged: (_) => EasyDebounce.debounce(
                  'textController4',
                  Duration(milliseconds: 2000),
                  () => setState(() {}),
                ),
                autofocus: true,
                obscureText: false,
                decoration: InputDecoration(
                  hintText: '[...]',
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 1,
                    ),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(4.0),
                      topRight: Radius.circular(4.0),
                    ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 1,
                    ),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(4.0),
                      topRight: Radius.circular(4.0),
                    ),
                  ),
                ),
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}