import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VerifyPasswordContainerWidget extends StatefulWidget {
  const VerifyPasswordContainerWidget({Key? key}) : super(key: key);

  @override
  _VerifyPasswordContainerWidgetState createState() =>
      _VerifyPasswordContainerWidgetState();
}

class _VerifyPasswordContainerWidgetState
    extends State<VerifyPasswordContainerWidget> {
  TextEditingController? verifyPasswordTextFieldController;

  late bool verifyPasswordTextFieldVisibility;

  @override
  void initState() {
    super.initState();
    verifyPasswordTextFieldController = TextEditingController();
    verifyPasswordTextFieldVisibility = false;
  }

  @override
  void dispose() {
    verifyPasswordTextFieldController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0, 0.11),
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
            controller: verifyPasswordTextFieldController,
            autofocus: true,
            obscureText: !verifyPasswordTextFieldVisibility,
            decoration: InputDecoration(
              labelText: 'Verify Password',
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
                Icons.lock_outline,
              ),
              suffixIcon: InkWell(
                onTap: () => setState(
                  () => verifyPasswordTextFieldVisibility =
                      !verifyPasswordTextFieldVisibility,
                ),
                focusNode: FocusNode(skipTraversal: true),
                child: Icon(
                  verifyPasswordTextFieldVisibility
                      ? Icons.visibility_outlined
                      : Icons.visibility_off_outlined,
                  color: Color(0xFF757575),
                  size: 22,
                ),
              ),
            ),
            style: FlutterFlowTheme.of(context).bodyText2.override(
                  fontFamily: 'Poppins',
                  color: Color(0xFF80929A),
                ),
          ),
        ),
      ),
    );
  }
}
