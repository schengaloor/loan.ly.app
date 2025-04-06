import '/auth/supabase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'reset_password_page_widget.dart' show ResetPasswordPageWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ResetPasswordPageModel extends FlutterFlowModel<ResetPasswordPageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for newPassword widget.
  FocusNode? newPasswordFocusNode;
  TextEditingController? newPasswordTextController;
  late bool newPasswordVisibility;
  String? Function(BuildContext, String?)? newPasswordTextControllerValidator;
  // State field(s) for ConfirmnewPassword widget.
  FocusNode? confirmnewPasswordFocusNode;
  TextEditingController? confirmnewPasswordTextController;
  late bool confirmnewPasswordVisibility;
  String? Function(BuildContext, String?)?
      confirmnewPasswordTextControllerValidator;

  @override
  void initState(BuildContext context) {
    newPasswordVisibility = false;
    confirmnewPasswordVisibility = false;
  }

  @override
  void dispose() {
    newPasswordFocusNode?.dispose();
    newPasswordTextController?.dispose();

    confirmnewPasswordFocusNode?.dispose();
    confirmnewPasswordTextController?.dispose();
  }
}
