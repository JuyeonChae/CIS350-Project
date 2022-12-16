import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BackButtonContainerWidget extends StatefulWidget {
  const BackButtonContainerWidget({Key? key}) : super(key: key);

  @override
  _BackButtonContainerWidgetState createState() =>
      _BackButtonContainerWidgetState();
}

class _BackButtonContainerWidgetState extends State<BackButtonContainerWidget> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(-0.88, -0.87),
      child: FFButtonWidget(
        onPressed: () async {
          context.pushNamed(
            'Startup',
            extra: <String, dynamic>{
              kTransitionInfoKey: TransitionInfo(
                hasTransition: true,
                transitionType: PageTransitionType.leftToRight,
                duration: Duration(milliseconds: 400),
              ),
            },
          );
        },
        text: '🡐',
        options: FFButtonOptions(
          width: 130,
          height: 40,
          color: Color(0xFF386428),
          textStyle: FlutterFlowTheme.of(context).subtitle1.override(
                fontFamily: 'Poppins',
                color: Color(0xFFF1F1F1),
                fontSize: 200,
              ),
          borderSide: BorderSide(
            color: Colors.transparent,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
