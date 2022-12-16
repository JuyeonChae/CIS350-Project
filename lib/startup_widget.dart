import '../components/sign_in_container_button_widget.dart';
import '../components/sign_up_container_button_widget.dart';
import '../components/start_up_column_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartupWidget extends StatefulWidget {
  const StartupWidget({Key? key}) : super(key: key);

  @override
  _StartupWidgetState createState() => _StartupWidgetState();
}

class _StartupWidgetState extends State<StartupWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFF576069),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Stack(
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0xFF8DCE5A),
                          Color(0xFFD3F1BB),
                          Color(0xFFF9FDF6)
                        ],
                        stops: [0, 0.5, 1],
                        begin: AlignmentDirectional(0.87, -1),
                        end: AlignmentDirectional(-0.87, 1),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Align(
              alignment: AlignmentDirectional(0, 0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 30, 20, 0),
                child: Container(
                  width: 300,
                  height: 440,
                  decoration: BoxDecoration(
                    color: Color(0x0026CA2E),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 10),
                        child: StartUpColumnWidget(),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 20),
                        child: SignInContainerButtonWidget(),
                      ),
                      SignUpContainerButtonWidget(),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
