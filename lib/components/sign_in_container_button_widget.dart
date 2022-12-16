import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInContainerButtonWidget extends StatefulWidget {
  const SignInContainerButtonWidget({Key? key}) : super(key: key);

  @override
  _SignInContainerButtonWidgetState createState() =>
      _SignInContainerButtonWidgetState();
}

class _SignInContainerButtonWidgetState
    extends State<SignInContainerButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0, 0.43),
      child: Container(
        width: 180,
        height: 50,
        decoration: BoxDecoration(
          color: Color(0x00FFFFFF),
        ),
        child: FFButtonWidget(
          onPressed: () async {
            context.pushNamed(
              'Login',
              extra: <String, dynamic>{
                kTransitionInfoKey: TransitionInfo(
                  hasTransition: true,
                  transitionType: PageTransitionType.rightToLeft,
                  duration: Duration(milliseconds: 400),
                ),
              },
            );
          },
          text: 'Sign in',
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
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
    );
  }
}
