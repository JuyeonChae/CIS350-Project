import 'package:flutter/material.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class JoinScreen extends StatelessWidget {
  final void Function() onCreateMeetingButtonPressed;
  final void Function() onJoinMeetingButtonPressed;
  final void Function(String) onMeetingIdChanged;
  final scaffoldKey = GlobalKey<ScaffoldState>();


  JoinScreen({
    Key? key,
    required this.onCreateMeetingButtonPressed,
    required this.onJoinMeetingButtonPressed,
    required this.onMeetingIdChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.white, Color(0xFFA9F394)],
                    stops: [0, 1],
                    begin: AlignmentDirectional(1, -1),
                    end: AlignmentDirectional(-1, 1),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.85, -0.9),
                child: Container(
                  width: 100,
                  height: 50,
                  decoration: BoxDecoration(),
                  child: FFButtonWidget(
                    onPressed: () async {
                      context.pushNamed('HomeScreen');
                    },
                    text: '←',
                    options: FFButtonOptions(
                      width: 130,
                      height: 40,
                      color: Color(0xFF068227),
                      textStyle:
                      FlutterFlowTheme.of(context).subtitle2.override(
                        fontFamily: 'Poppins',
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.w900,
                      ),
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, 0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0, 0),
                      child: Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(),
                      ),
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(),
                    ),
                    Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(),
                    ),
                    ElevatedButton(
                        child: const Text("Create Meeting"),
                        onPressed: onCreateMeetingButtonPressed),
                    const SizedBox(height: 16),
                    TextField(
                        decoration: const InputDecoration(
                          hintText: "Meeting ID",
                          border: OutlineInputBorder(),
                        ),
                        onChanged: onMeetingIdChanged),
                    const SizedBox(height: 8),
                    ElevatedButton(
                      child: const Text("Join"),
                      onPressed: onJoinMeetingButtonPressed,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
