import 'package:flutter/material.dart';

class FaturaWidget extends StatefulWidget {
  FaturaWidget(this.cost, {Key key}) : super(key: key);
  var cost;

  @override
  FaturaWidgetState createState() => FaturaWidgetState();
}

class FaturaWidgetState extends State<FaturaWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: const Text('Pedidos'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                child: Stack(
                  alignment: const AlignmentDirectional(-1, -0.35),
                  children: [
                    SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          /*Container(
                            height: 150,
                            decoration: const BoxDecoration(
                              color: Color(0xFFEEEEEE),
                            ),
                            child: Image.asset(
                              'assets/images/Captura_de_ecra_2022-03-30,_as_22.01.09.png',
                              width: 200,
                              height: 300,
                              fit: BoxFit.cover,
                            ),
                          ),*/
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Image.asset(
                    'assets/images/logo.jpg',
                    height: 200,
                    width: 200,
                    fit: BoxFit.fitWidth,
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(24, 4, 24, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Preço',
                          style: TextStyle(color: Colors.black),
                        ),
                        Text(
                          '${widget.cost}€',
                          style: TextStyle(
                            fontFamily: 'Lexend Deca',
                            color: Color(0xFF151B1E),
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(24, 4, 24, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Taxa de entrega',
                          style: TextStyle(
                            fontFamily: 'Lexend Deca',
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        Text(
                          '1.25€',
                          style: TextStyle(
                            fontFamily: 'Lexend Deca',
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(24, 4, 24, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          'Iva',
                          style: TextStyle(
                            fontFamily: 'Lexend Deca',
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        Text(
                          '23%',
                          style: TextStyle(
                            fontFamily: 'Lexend Deca',
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(24, 4, 24, 24),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            const Text(
                              'Total',
                              style: TextStyle(
                                fontFamily: 'Lexend Deca',
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            IconButton(
                              icon: const Icon(
                                Icons.info_outlined,
                                color: Colors.black,
                                size: 18,
                              ),
                              onPressed: () {},
                            ),
                          ],
                        ),
                        Text(
                          (widget.cost + 1.25).toString() + '€',
                          style: TextStyle(
                            fontFamily: 'Lexend Deca',
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: const [],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
