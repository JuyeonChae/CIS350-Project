import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextfieldContainerWidget extends StatefulWidget {
  const TextfieldContainerWidget({Key? key}) : super(key: key);

  @override
  _TextfieldContainerWidgetState createState() =>
      _TextfieldContainerWidgetState();
}

class _TextfieldContainerWidgetState extends State<TextfieldContainerWidget> {
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
      alignment: AlignmentDirectional(0, -0.14),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(10, 20, 10, 20),
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
                labelText: 'Username',
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
                  Icons.tag_faces_sharp,
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
      ),
    );
  }
}
