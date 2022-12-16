import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NameContainerWidget extends StatefulWidget {
  const NameContainerWidget({Key? key}) : super(key: key);

  @override
  _NameContainerWidgetState createState() => _NameContainerWidgetState();
}

class _NameContainerWidgetState extends State<NameContainerWidget> {
  TextEditingController? usernameTextFieldController;

  @override
  void initState() {
    super.initState();
    usernameTextFieldController = TextEditingController();
  }

  @override
  void dispose() {
    usernameTextFieldController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(-0.01, -0.09),
      child: Container(
        width: 250,
        height: 50,
        decoration: BoxDecoration(
          color: Color(0xFFF1F1F1),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
          child: TextFormField(
            controller: usernameTextFieldController,
            onChanged: (_) => EasyDebounce.debounce(
              'usernameTextFieldController',
              Duration(milliseconds: 2000),
              () => setState(() {}),
            ),
            autofocus: true,
            obscureText: false,
            decoration: InputDecoration(
              labelText: 'Name',
              hintStyle: FlutterFlowTheme.of(context).bodyText2,
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0x00000000),
                  width: 1,
                ),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(4.0),
                  topRight: Radius.circular(4.0),
                ),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0x00000000),
                  width: 1,
                ),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(4.0),
                  topRight: Radius.circular(4.0),
                ),
              ),
              errorBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0x00000000),
                  width: 1,
                ),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(4.0),
                  topRight: Radius.circular(4.0),
                ),
              ),
              focusedErrorBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0x00000000),
                  width: 1,
                ),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(4.0),
                  topRight: Radius.circular(4.0),
                ),
              ),
              prefixIcon: Icon(
                Icons.perm_identity,
              ),
            ),
            style: FlutterFlowTheme.of(context).bodyText2.override(
                  fontFamily: 'Poppins',
                  color: Color(0xFF80929A),
                ),
            textAlign: TextAlign.start,
          ),
        ),
      ),
    );
  }
}
