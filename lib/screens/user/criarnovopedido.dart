import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';

class CriarNovoPedidoWidget extends StatefulWidget {
  const CriarNovoPedidoWidget({Key key}) : super(key: key);

  @override
  _CriarNovoPedidoWidgetState createState() => _CriarNovoPedidoWidgetState();
}

class _CriarNovoPedidoWidgetState extends State<CriarNovoPedidoWidget> {
  TextEditingController textController1;
  bool checkboxListTileValue;
  TextEditingController textController2;
  TextEditingController textController3;
  TextEditingController textController4;
  TextEditingController textController5;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController1 = TextEditingController();
    textController2 = TextEditingController();
    textController3 = TextEditingController();
    textController4 = TextEditingController();
    textController5 = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        automaticallyImplyLeading: false,
        title: const Text(
          'Criar Novo pedido',
        ),
        actions: const [],
        centerTitle: false,
        elevation: 2,
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
              if ((checkboxListTileValue) == true)
                const Text(
                  'Dados da receita:',
                ),
              TextFormField(
                controller: textController1,
                onChanged: (_) => EasyDebounce.debounce(
                  'textController1',
                  const Duration(milliseconds: 2000),
                  () => setState(() {}),
                ),
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
                TextFormField(
                  controller: textController2,
                  onChanged: (_) => EasyDebounce.debounce(
                    'textController2',
                    const Duration(milliseconds: 2000),
                    () => setState(() {}),
                  ),
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
                  controller: textController3,
                  onChanged: (_) => EasyDebounce.debounce(
                    'textController3',
                    const Duration(milliseconds: 2000),
                    () => setState(() {}),
                  ),
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
                  controller: textController4,
                  onChanged: (_) => EasyDebounce.debounce(
                    'textController4',
                    const Duration(milliseconds: 2000),
                    () => setState(() {}),
                  ),
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
                controller: textController5,
                onChanged: (_) => EasyDebounce.debounce(
                  'textController5',
                  const Duration(milliseconds: 2000),
                  () => setState(() {}),
                ),
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
                onPressed: () {},
                child: const Text('Adicionar pedido'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
