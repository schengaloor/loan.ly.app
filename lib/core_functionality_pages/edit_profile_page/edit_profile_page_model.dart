import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:ui';
import 'edit_profile_page_widget.dart' show EditProfilePageWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditProfilePageModel extends FlutterFlowModel<EditProfilePageWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for yourName widget.
  FocusNode? yourNameFocusNode;
  TextEditingController? yourNameTextController;
  String? Function(BuildContext, String?)? yourNameTextControllerValidator;
  // State field(s) for yourMobileNo widget.
  FocusNode? yourMobileNoFocusNode;
  TextEditingController? yourMobileNoTextController;
  String? Function(BuildContext, String?)? yourMobileNoTextControllerValidator;
  // State field(s) for city widget.
  FocusNode? cityFocusNode;
  TextEditingController? cityTextController;
  String? Function(BuildContext, String?)? cityTextControllerValidator;
  // State field(s) for gender widget.
  String? genderValue;
  FormFieldController<String>? genderValueController;
  // State field(s) for emergency widget.
  String? emergencyValue;
  FormFieldController<String>? emergencyValueController;
  // State field(s) for income widget.
  FocusNode? incomeFocusNode;
  TextEditingController? incomeTextController;
  String? Function(BuildContext, String?)? incomeTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    yourNameFocusNode?.dispose();
    yourNameTextController?.dispose();

    yourMobileNoFocusNode?.dispose();
    yourMobileNoTextController?.dispose();

    cityFocusNode?.dispose();
    cityTextController?.dispose();

    incomeFocusNode?.dispose();
    incomeTextController?.dispose();
  }
}
