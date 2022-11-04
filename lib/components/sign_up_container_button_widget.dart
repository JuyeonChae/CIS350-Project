import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpContainerButtonWidget extends StatefulWidget {
  const SignUpContainerButtonWidget({Key? key}) : super(key: key);

  @override
  _SignUpContainerButtonWidgetState createState() =>
      _SignUpContainerButtonWidgetState();
}

class _SignUpContainerButtonWidgetState
    extends State<SignUpContainerButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0, 0.6),
      child: Container(
        width: 180,
        height: 50,
        decoration: BoxDecoration(
          color: Color(0x00FFFFFF),
        ),
        child: FFButtonWidget(
          onPressed: () async {
            context.pushNamed(
              'Signup',
              extra: <String, dynamic>{
                kTransitionInfoKey: TransitionInfo(
                  hasTransition: true,
                  transitionType: PageTransitionType.rightToLeft,
                  duration: Duration(milliseconds: 400),
                ),
              },
            );
          },
          text: 'Sign up',
          options: FFButtonOptions(
            width: 130,
            height: 40,
            color: FlutterFlowTheme.of(context).primaryBtnText,
            textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                  fontFamily: 'Poppins',
                  color: Color(0xFF386428),
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
