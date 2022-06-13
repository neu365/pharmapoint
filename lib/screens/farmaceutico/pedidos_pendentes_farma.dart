import 'package:pharmapoint/screens/farmaceutico/pagina_inicial_farma.dart';

import 'package:flutter/material.dart';

class PedidosPendentesWidget extends StatefulWidget {
  const PedidosPendentesWidget({Key key}) : super(key: key);

  @override
  _PedidosPendentesWidgetState createState() => _PedidosPendentesWidgetState();
}

class _PedidosPendentesWidgetState extends State<PedidosPendentesWidget> {
  TextEditingController textController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        automaticallyImplyLeading: true,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
            size: 30,
          ),
          onPressed: () async {
            await Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const PaginaInicialFarma(),
              ),
            );
          },
        ),
        title: const Text(
          'Pedidos Pendentes',
        ),
        actions: const [],
        centerTitle: true,
        elevation: 4,
      ),
      backgroundColor: const Color(0xFFF1F4F8),
      body: Stack(
        children: [
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 108,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.95,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                            border: Border.all(
                              color: const Color(0xFFF1F4F8),
                              width: 2,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                8, 0, 8, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                const Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      4, 0, 4, 0),
                                  child: Icon(
                                    Icons.search_rounded,
                                    color: Color(0xFF95A1AC),
                                    size: 24,
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding:
                                        const EdgeInsetsDirectional.fromSTEB(
                                            4, 0, 0, 0),
                                    child: TextFormField(
                                      controller: textController,
                                      obscureText: false,
                                      decoration: const InputDecoration(
                                        labelText: 'Pesquisar pedidos..',
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
                                      style: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
                                      ),
                                    ),
                                  ),
                                ),
                                const Expanded(
                                  child: Align(
                                    alignment: AlignmentDirectional(0.95, 0),
                                    child: Icon(
                                      Icons.tune_rounded,
                                      color: Color(0xFF95A1AC),
                                      size: 24,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 1),
                        child: Container(
                          width: double.infinity,
                          height: 90,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      8, 1, 60, 0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: const [
                                          Text(
                                            'Nome do medicamento',
                                            style: TextStyle(
                                              color: Color(0xFF090F13),
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: const [
                                          Text(
                                            'Nome da pessoa',
                                            style: TextStyle(
                                              color: Color(0xFF95A1AC),
                                              fontSize: 14,
                                              fontWeight: FontWeight.normal,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: const [
                                          Text(
                                            'Detalhes',
                                            style: TextStyle(
                                              color: Color(0xFF4B39EF),
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  IconButton(
                                    icon: const Icon(
                                      Icons.check,
                                    ),
                                    onPressed: () {},
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  IconButton(
                                    icon: const Icon(
                                      Icons.delete,
                                    ),
                                    onPressed: () {},
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 1),
                        child: Container(
                          width: double.infinity,
                          height: 90,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      8, 1, 60, 0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: const [
                                          Text(
                                            'Nome do medicamento',
                                            style: TextStyle(
                                              color: Color(0xFF090F13),
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: const [
                                          Text(
                                            'Nome da pessoa',
                                            style: TextStyle(
                                              color: Color(0xFF95A1AC),
                                              fontSize: 14,
                                              fontWeight: FontWeight.normal,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: const [
                                          Text(
                                            'Detalhes',
                                            style: TextStyle(
                                              color: Color(0xFF4B39EF),
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  IconButton(
                                    icon: const Icon(
                                      Icons.check,
                                    ),
                                    onPressed: () {},
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  IconButton(
                                    icon: const Icon(
                                      Icons.delete,
                                    ),
                                    onPressed: () {},
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 1),
                        child: Container(
                          width: double.infinity,
                          height: 90,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      8, 1, 60, 0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: const [
                                          Text(
                                            'Nome do medicamento',
                                            style: TextStyle(
                                              color: Color(0xFF090F13),
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: const [
                                          Text(
                                            'Nome da pessoa',
                                            style: TextStyle(
                                              color: Color(0xFF95A1AC),
                                              fontSize: 14,
                                              fontWeight: FontWeight.normal,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: const [
                                          Text(
                                            'Detalhes',
                                            style: TextStyle(
                                              color: Color(0xFF4B39EF),
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  IconButton(
                                    icon: const Icon(
                                      Icons.check,
                                    ),
                                    onPressed: () {},
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  IconButton(
                                    icon: const Icon(
                                      Icons.delete,
                                    ),
                                    onPressed: () {},
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 1),
                        child: Container(
                          width: double.infinity,
                          height: 90,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      8, 1, 60, 0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: const [
                                          Text(
                                            'Nome do medicamento',
                                            style: TextStyle(
                                              color: Color(0xFF090F13),
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: const [
                                          Text(
                                            'Nome da pessoa',
                                            style: TextStyle(
                                              color: Color(0xFF95A1AC),
                                              fontSize: 14,
                                              fontWeight: FontWeight.normal,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: const [
                                          Text(
                                            'Detalhes',
                                            style: TextStyle(
                                              color: Color(0xFF4B39EF),
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  IconButton(
                                    icon: const Icon(
                                      Icons.check,
                                    ),
                                    onPressed: () {},
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  IconButton(
                                    icon: const Icon(Icons.delete),
                                    onPressed: () {},
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 1),
                        child: Container(
                          width: double.infinity,
                          height: 90,
                          decoration: const BoxDecoration(
                            color: Colors.white,
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      8, 1, 60, 0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: const [
                                          Text(
                                            'Nome do medicamento',
                                            style: TextStyle(
                                              color: Color(0xFF090F13),
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: const [
                                          Text(
                                            'Nome da pessoa',
                                            style: TextStyle(
                                              color: Color(0xFF95A1AC),
                                              fontSize: 14,
                                              fontWeight: FontWeight.normal,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: const [
                                          Text(
                                            'Detalhes',
                                            style: TextStyle(
                                              color: Color(0xFF4B39EF),
                                              fontSize: 14,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  IconButton(
                                    icon: const Icon(
                                      Icons.check,
                                    ),
                                    onPressed: () {},
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  IconButton(
                                    icon: const Icon(
                                      Icons.delete,
                                    ),
                                    onPressed: () {},
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
