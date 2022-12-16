import '../components/back_button_container_widget.dart';
import '../components/email_container_widget.dart';
import '../components/name_container_widget.dart';
import '../components/password_container_widget.dart';
import '../components/textfield_container_widget.dart';
import '../components/verify_password_container_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import "package:videosdk/videosdk.dart";

class SignupWidget extends StatefulWidget {
  const SignupWidget({Key? key}) : super(key: key);

  @override
  _SignupWidgetState createState() => _SignupWidgetState();
}

class _SignupWidgetState extends State<SignupWidget> {
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
                        colors: [Color(0xFF8DCE5A), Color(0xFFEFFAEA)],
                        stops: [0, 1],
                        begin: AlignmentDirectional(1, -0.98),
                        end: AlignmentDirectional(-1, 0.98),
                      ),
                    ),
                    child: BackButtonContainerWidget(),
                  ),
                ),
              ],
            ),
            Align(
              alignment: AlignmentDirectional(0, -0.55),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(30, 0, 30, 50),
                child: Text(
                  'Create an Account',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).title1.override(
                        fontFamily: 'Poppins',
                        color: Colors.white,
                        fontSize: 25,
                      ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0, 0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 30, 20, 0),
                child: Container(
                  width: 300,
                  height: 440,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryBtnText,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 4,
                        color: Color(0x33000000),
                        offset: Offset(0, 2),
                      )
                    ],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                        child: NameContainerWidget(),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                        child: EmailContainerWidget(),
                      ),
                      TextfieldContainerWidget(),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                        child: PasswordContainerWidget(),
                      ),
                      VerifyPasswordContainerWidget(),
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0, 0.5),
              child: FFButtonWidget(
                onPressed: () async {
                  context.pushNamed('HomeScreen');
                },
                text: 'Get Cooking',
                options: FFButtonOptions(
                  width: 130,
                  height: 40,
                  color: Color(0xFF386428),
                  textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                        fontFamily: 'Poppins',
                        color: Colors.white,
                      ),
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
