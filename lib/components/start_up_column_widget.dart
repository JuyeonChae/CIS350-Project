import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';

class StartUpColumnWidget extends StatefulWidget {
  const StartUpColumnWidget({Key? key}) : super(key: key);

  @override
  _StartUpColumnWidgetState createState() => _StartUpColumnWidgetState();
}

class _StartUpColumnWidgetState extends State<StartUpColumnWidget>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0, 0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //Image.asset(
            //'assets/images/PearCookingLogo.jpg',
            //width: 140,
            //height: 140,
            //fit: BoxFit.fitHeight,
          //),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
            child: Text(
              'Welcome to PearCooking',
              textAlign: TextAlign.center,
              style: FlutterFlowTheme.of(context).title1.override(
                    fontFamily: 'Lexend Deca',
                    color: Colors.white,
                    fontSize: 28,
                    letterSpacing: 1,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
        ],
      ),
    );
  }
}
