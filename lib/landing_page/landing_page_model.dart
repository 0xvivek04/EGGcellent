import '/components/electric_usage_component_widget.dart';
import '/components/gas_comp_widget.dart';
import '/components/tem_component_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'landing_page_widget.dart' show LandingPageWidget;
import 'package:flutter/material.dart';

class LandingPageModel extends FlutterFlowModel<LandingPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for GasComp component.
  late GasCompModel gasCompModel;
  // Model for ElectricUsageComponent component.
  late ElectricUsageComponentModel electricUsageComponentModel;
  // Model for TemComponent component.
  late TemComponentModel temComponentModel;

  @override
  void initState(BuildContext context) {
    gasCompModel = createModel(context, () => GasCompModel());
    electricUsageComponentModel =
        createModel(context, () => ElectricUsageComponentModel());
    temComponentModel = createModel(context, () => TemComponentModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    gasCompModel.dispose();
    electricUsageComponentModel.dispose();
    temComponentModel.dispose();
  }
}
